import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../data/local_store/no_sql/schema/app_configuration.dart';
import '../data/local_store/no_sql/schema/localization.dart';
import '../data/local_store/no_sql/schema/oplog.dart';
import '../data/local_store/no_sql/schema/row_versions.dart';
import '../data/local_store/no_sql/schema/service_registry.dart';

class IsarInit {
  late Future<Isar> _isar;
  late String _version;
  static final IsarInit _instance = IsarInit._();
  IsarInit._() {
    _isar = openIsar();
  }

  factory IsarInit() {
    return _instance;
  }

  Future initilize(version) async {
    await _initializeIsar(version);
  }

  Future<Isar> openIsar() async {
    if (Isar.instanceNames.isEmpty) {
      final directory = await getApplicationDocumentsDirectory();

      return await Isar.open(
        [
          ServiceRegistrySchema,
          LocalizationWrapperSchema,
          AppConfigurationSchema,
          OpLogSchema,
          RowVersionListSchema,
        ],
        inspector: true,
        directory: directory.path,
      );
    } else {
      return await Future.value(Isar.getInstance());
    }
  }

  Future<Isar> get isar {
    return _isar;
  }

  String get version {
    return _version;
  }

  Future<void> _initializeIsar(version) async {
    _isar = openIsar();

    // return _isar;
    _version = version;
    print("here");
    // final appConfigs = await _isar.appConfigurations.where().findAll();
    // final config = appConfigs.firstOrNull;
    // print(config);
  }
}
