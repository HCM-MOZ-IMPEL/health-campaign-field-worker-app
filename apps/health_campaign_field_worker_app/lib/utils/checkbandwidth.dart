import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:battery_plus/battery_plus.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:recase/recase.dart';
import '../data/local_store/no_sql/schema/app_configuration.dart';
import '../data/local_store/no_sql/schema/service_registry.dart';
import '../data/local_store/secure_store/secure_store.dart';
import '../data/local_store/sql_store/sql_store.dart';
import '../data/network_manager.dart';
import '../data/remote_client.dart';
import '../data/repositories/remote/bandwidth_check.dart';
import '../models/bandwidth/bandwidth_model.dart';
import '../models/data_model.dart';
import '../widgets/network_manager_provider_wrapper.dart';
import 'environment_config.dart';
import 'utils.dart';

final LocalSqlDataStore _sql = LocalSqlDataStore();
late Dio _dio;

Future<void> initializeService(
  dio,
) async {
  if (Isar.getInstance('HCM') == null) {
    final info = await PackageInfo.fromPlatform();
    await Constants().initilize(info.version);
  }

  final service = FlutterBackgroundService();

  await service.configure(
    androidConfiguration: AndroidConfiguration(
      // this will be executed when app is in foreground or background in separated isolate
      onStart: onStart,
      autoStartOnBoot: false,
      // auto start service
      autoStart: false,
      isForegroundMode: true,
    ),
    iosConfiguration: IosConfiguration(
      // auto start service
      autoStart: false,
      onForeground: onStart,
      // this will be executed when app is in foreground in separated isolate

      // you have to enable background fetch capability on xcode project
      onBackground: onIosBackground,
    ),
  );
}

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  return true;
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  // Only available for flutter 3.0.0 and later
  DartPluginRegistrant.ensureInitialized();

  service.on('stopService').listen((event) {
    service.stopSelf();
  });
  if (Isar.getInstance('HCM') == null) {
    final info = await PackageInfo.fromPlatform();
    await Constants().initilize(info.version);
  }
  await envConfig.initialize();

  _dio = DioClient().dio;
  const storage = FlutterSecureStorage();
  final userRequestModel = await LocalSecureStore.instance.userRequestModel;

  final appConfiguration =
      await Constants().isar.appConfigurations.where().findAll();
  final interval =
      appConfiguration.first.backgroundServiceConfig?.serviceInterval;
  final frequencyCount =
      appConfiguration.first.backgroundServiceConfig?.apiConcurrency;

  if (interval != null) {
    makePeriodicTimer(
      Duration(seconds: interval),
      (timer) async {
        var battery = Battery();
        final int batteryPercent = await battery.batteryLevel;
        if (batteryPercent <=
            appConfiguration
                .first.backgroundServiceConfig!.batteryPercentCutOff!) {
          service.stopSelf();
        } else {
          if (frequencyCount != null) {
            final serviceRegistryList =
                await Constants().isar.serviceRegistrys.where().findAll();

            if (serviceRegistryList.isNotEmpty) {
              final bandwidthService = serviceRegistryList.firstWhereOrNull(
                (element) => element.service == 'BANDWIDTH-CHECK',
              );
              if (bandwidthService != null) {
                final bandwidthPath = bandwidthService.actions.first.path;

                List speedArray = [];
                for (var i = 0; i < frequencyCount; i++) {
                  try {
                    final double speed = await BandwidthCheckRepository(
                      _dio,
                      bandwidthPath: bandwidthPath,
                    ).pingBandwidthCheck(bandWidthCheckModel: null);
                    speedArray.add(speed);
                  } catch (e) {
                    service.stopSelf();
                    break;
                  }
                }
                double sum = speedArray.fold(0, (p, c) => p + c);

                int configuredBatchSize = getBatchSizeToBandwidth(
                  sum / speedArray.length,
                  appConfiguration,
                );

                if (configuredBatchSize > 0) {
                  final BandwidthModel bandwidthModel =
                      BandwidthModel.fromJson({
                    'userId': userRequestModel!.uuid,
                    'batchSize': configuredBatchSize,
                  });

                  service.invoke(
                    'serviceRunning',
                    {
                      "enablesManualSync": false,
                    },
                  );

                  await const NetworkManager(
                    configuration: NetworkManagerConfiguration(
                      persistenceConfig: PersistenceConfiguration.offlineFirst,
                    ),
                  ).performSync(
                    localRepositories:
                        Constants.getLocalRepositories(_sql, Constants().isar)
                            .toList(),
                    remoteRepositories: Constants.getRemoteRepositories(
                      _dio,
                      getActionMap(serviceRegistryList),
                    ),
                    bandwidthModel: bandwidthModel,
                    service: service,
                  );
                } else {
                  service.stopSelf();
                }
              }
            }
          }
        }
      },
      fireNow: true,
    );
  }
}

getActionMap(List<ServiceRegistry> serviceRegistryList) {
  return serviceRegistryList
      .map((e) => e.actions.map((e) {
            ApiOperation? operation;
            DataModelType? type;

            operation = ApiOperation.values.firstWhereOrNull((element) {
              return e.action.camelCase == element.name;
            });

            type = DataModelType.values.firstWhereOrNull((element) {
              return e.entityName.camelCase == element.name;
            });

            if (operation == null || type == null) return null;

            return ActionPathModel(
              operation: operation,
              type: type,
              path: e.path,
            );
          }))
      .expand((element) => element)
      .whereNotNull()
      .fold(
    <DataModelType, Map<ApiOperation, String>>{},
    (Map<DataModelType, Map<ApiOperation, String>> o, element) {
      if (o.containsKey(element.type)) {
        o[element.type]?.addEntries(
          [MapEntry(element.operation, element.path)],
        );
      } else {
        o[element.type] = Map.fromEntries([
          MapEntry(element.operation, element.path),
        ]);
      }

      return o;
    },
  );
}

int getBatchSizeToBandwidth(
  double speed,
  List<AppConfiguration> appConfiguration,
) {
  int batchSize = 0;

  final batchResult = appConfiguration.first.bandwidthBatchSize
      ?.where(
        (element) => speed >= element.minRange && speed <= element.maxRange,
      )
      .toList();
  if (batchResult != null) {
    if (batchResult.isNotEmpty) {
      batchSize = int.parse(batchResult.first.batchSize.toString());
    } else if (speed >=
        appConfiguration.first.bandwidthBatchSize!.last.maxRange) {
      batchSize = appConfiguration.first.bandwidthBatchSize!.last.batchSize;
    } else if (speed <=
        appConfiguration.first.bandwidthBatchSize!.first.minRange) {
      batchSize = 0;
    }
  }

  return batchSize;
}

Future<bool> getIsConnected() async {
  try {
    final result = await InternetAddress.lookup('example.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }

    return false;
  } on SocketException catch (_) {
    return false;
  }
}
