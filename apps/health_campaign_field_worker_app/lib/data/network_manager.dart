import 'dart:async';
import 'package:collection/collection.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:provider/provider.dart';
import '../models/bandwidth/bandwidth_model.dart';
import '../models/data_model.dart';
import '../utils/checkbandwidth.dart';
import '../utils/environment_config.dart';
import 'data_repository.dart';
import 'local_store/secure_store/secure_store.dart';
import 'repositories/oplog/oplog.dart';
import 'repositories/remote/pgr_service.dart';
import 'local_store/no_sql/schema/oplog.dart' hide AdditionalId;

class NetworkManager {
  static const _taskResourceIdKey = 'taskResourceId';
  static const _individualIdentifierIdKey = 'individualIdentifierId';
  static const _householdAddressIdKey = 'householdAddressId';
  static const _individualAddressIdKey = 'individualAddressId';

  final NetworkManagerConfiguration configuration;

  const NetworkManager({required this.configuration});

  DataRepository<D, R>
      repository<D extends EntityModel, R extends EntitySearchModel>(
    BuildContext context,
  ) {
    switch (configuration.persistenceConfig) {
      case PersistenceConfiguration.offlineFirst:
        return context.read<LocalRepository<D, R>>();
      case PersistenceConfiguration.onlineOnly:
        return context.read<RemoteRepository<D, R>>();
    }
  }

  FutureOr<bool> performSync({
    required List<LocalRepository> localRepositories,
    required List<RemoteRepository> remoteRepositories,
    required BandwidthModel bandwidthModel,
    ServiceInstance? service,
  }) async {
    if (configuration.persistenceConfig ==
        PersistenceConfiguration.onlineOnly) {
      throw Exception('Sync up is not valid for online only configuration');
    }
    bool isSyncCompleted = false;
    SyncError? syncError;

    try {
      await syncDown(
        bandwidthModel: bandwidthModel,
        localRepositories: localRepositories.toSet().toList(),
        remoteRepositories: remoteRepositories.toSet().toList(),
      );
    } catch (e) {
      syncError = SyncDownError(e);
    }

    try {
      await syncUp(
        bandwidthModel: bandwidthModel,
        localRepositories: localRepositories.toSet().toList(),
        remoteRepositories: remoteRepositories.toSet().toList(),
      );
    } catch (e) {
      syncError ??= SyncUpError(e);
    }
    final futuresSyncDown = await Future.wait(
      localRepositories
          .map((e) => e.getItemsToBeSyncedDown(bandwidthModel.userId)),
    );
    final pendingSyncDownEntries = futuresSyncDown.expand((e) => e).toList();

    final futuresSyncUp = await Future.wait(
      localRepositories
          .map((e) => e.getItemsToBeSyncedUp(bandwidthModel.userId)),
    );
    final pendingSyncUpEntries = futuresSyncUp.expand((e) => e).toList();
    if (syncError != null) throw syncError;
    final list = pendingSyncDownEntries
        .where(
          (element) =>
              element.type != DataModelType.householdMember &&
              element.type != DataModelType.service,
        )
        .toList();

    if (pendingSyncUpEntries.isNotEmpty || list.isNotEmpty) {
      isSyncCompleted = await performSync(
        bandwidthModel: bandwidthModel,
        localRepositories: localRepositories,
        remoteRepositories: remoteRepositories,
        service: service,
      );
    } else if (pendingSyncUpEntries.isEmpty && list.isEmpty) {
      await LocalSecureStore.instance.setManualSyncTrigger(false);
      isSyncCompleted = true;
    }

    return isSyncCompleted;
  }

  FutureOr<void> syncDown({
    required BandwidthModel bandwidthModel,
    required List<LocalRepository> localRepositories,
    required List<RemoteRepository> remoteRepositories,
  }) async {
    if (configuration.persistenceConfig ==
        PersistenceConfiguration.onlineOnly) {
      throw Exception('Sync down is not valid for online only configuration');
    }

    final futures = await Future.wait(
      localRepositories
          .map((e) => e.getItemsToBeSyncedDown(bandwidthModel.userId)),
    );

    final pendingSyncEntries = futures.expand((e) => e).toList();
    pendingSyncEntries.sort((a, b) => a.createdAt.compareTo(b.createdAt));

    final groupedEntries = pendingSyncEntries
        .where((element) =>
            element.type != DataModelType.householdMember &&
            element.type != DataModelType.service)
        .toList()
        .groupListsBy(
          (element) => element.type,
        );

    for (final typeGroupedEntity in groupedEntries.entries) {
      final groupedOperations = typeGroupedEntity.value.groupListsBy(
        (element) => element.operation,
      );

      final remote = _getRemoteForType(
        typeGroupedEntity.key,
        remoteRepositories,
      );

      final local = _getLocalForType(
        typeGroupedEntity.key,
        localRepositories,
      );

      for (final operationGroupedEntity in groupedOperations.entries) {
        final entities = operationGroupedEntity.value.map((e) {
          final serverGeneratedId = e.serverGeneratedId;
          final rowVersion = e.rowVersion;
          if (serverGeneratedId != null && !e.nonRecoverableError) {
            return local.opLogManager.applyServerGeneratedIdToEntity(
              e.entity,
              serverGeneratedId,
              rowVersion,
            );
          }

          return e.entity;
        }).toList();

        List<EntityModel> responseEntities = [];

        switch (typeGroupedEntity.key) {
          case DataModelType.household:
            responseEntities = await remote.search(HouseholdSearchModel(
              clientReferenceId: entities
                  .whereType<HouseholdModel>()
                  .map((e) => e.clientReferenceId)
                  .whereNotNull()
                  .toList(),
              isDeleted: true,
            ));

            for (var element in operationGroupedEntity.value) {
              if (element.id == null) return;
              final entity = element.entity as HouseholdModel;
              final responseEntity =
                  responseEntities.whereType<HouseholdModel>().firstWhereOrNull(
                        (e) => e.clientReferenceId == entity.clientReferenceId,
                      );

              final serverGeneratedId = responseEntity?.id;
              final rowVersion = responseEntity?.rowVersion;

              if (serverGeneratedId != null) {
                final addressAdditionalId = responseEntity?.address?.id == null
                    ? null
                    : AdditionalId(
                        idType: _householdAddressIdKey,
                        id: responseEntity!.address!.id!,
                      );

                await local.opLogManager.updateServerGeneratedIds(
                  model: UpdateServerGeneratedIdModel(
                    clientReferenceId: entity.clientReferenceId,
                    serverGeneratedId: serverGeneratedId,
                    additionalIds: [
                      if (addressAdditionalId != null) addressAdditionalId,
                    ],
                    dataOperation: element.operation,
                    rowVersion: rowVersion,
                    nonRecoverableError: element.nonRecoverableError,
                  ),
                );
              } else {
                final bool markAsNonRecoverable = await local.opLogManager
                    .updateSyncDownRetry(entity.clientReferenceId);

                if (markAsNonRecoverable) {
                  await local.update(
                    entity.copyWith(
                      nonRecoverableError: true,
                    ),
                    createOpLog: false,
                  );
                }
              }
            }

            break;

          case DataModelType.individual:
            responseEntities = await remote.search(IndividualSearchModel(
              clientReferenceId: entities
                  .whereType<IndividualModel>()
                  .map((e) => e.clientReferenceId)
                  .whereNotNull()
                  .toList(),
              isDeleted: true,
            ));

            for (var element in operationGroupedEntity.value) {
              if (element.id == null) return;
              final entity = element.entity as IndividualModel;
              final responseEntity = responseEntities
                  .whereType<IndividualModel>()
                  .firstWhereOrNull(
                    (e) => e.clientReferenceId == entity.clientReferenceId,
                  );

              final serverGeneratedId = responseEntity?.id;
              final rowVersion = responseEntity?.rowVersion;

              if (serverGeneratedId != null) {
                final identifierAdditionalIds = responseEntity?.identifiers
                    ?.map((e) {
                      final id = e.id;

                      if (id == null) return null;

                      return AdditionalId(
                        idType: _individualIdentifierIdKey,
                        id: id,
                      );
                    })
                    .whereNotNull()
                    .toList();

                final addressAdditionalIds = responseEntity?.address
                    ?.map((e) {
                      final id = e.id;

                      if (id == null) return null;

                      return AdditionalId(
                        idType: _individualAddressIdKey,
                        id: id,
                      );
                    })
                    .whereNotNull()
                    .toList();

                await local.opLogManager.updateServerGeneratedIds(
                  model: UpdateServerGeneratedIdModel(
                    clientReferenceId: entity.clientReferenceId,
                    serverGeneratedId: serverGeneratedId,
                    nonRecoverableError: entity.nonRecoverableError,
                    additionalIds: [
                      if (identifierAdditionalIds != null)
                        ...identifierAdditionalIds,
                      if (addressAdditionalIds != null) ...addressAdditionalIds,
                    ],
                    dataOperation: element.operation,
                    rowVersion: rowVersion,
                  ),
                );
              } else {
                final bool markAsNonRecoverable = await local.opLogManager
                    .updateSyncDownRetry(entity.clientReferenceId);

                if (markAsNonRecoverable) {
                  await local.update(
                    entity.copyWith(
                      nonRecoverableError: true,
                    ),
                    createOpLog: false,
                  );
                }
              }
            }

            break;
          case DataModelType.projectBeneficiary:
            responseEntities =
                await remote.search(ProjectBeneficiarySearchModel(
              clientReferenceId: entities
                  .whereType<ProjectBeneficiaryModel>()
                  .map((e) => e.clientReferenceId)
                  .whereNotNull()
                  .toList(),
              isDeleted: true,
            ));

            for (var element in operationGroupedEntity.value) {
              if (element.id == null) return;
              final entity = element.entity as ProjectBeneficiaryModel;
              final responseEntity = responseEntities
                  .whereType<ProjectBeneficiaryModel>()
                  .firstWhereOrNull(
                    (e) => e.clientReferenceId == entity.clientReferenceId,
                  );
              final serverGeneratedId = responseEntity?.id;
              final rowVersion = responseEntity?.rowVersion;

              if (serverGeneratedId != null) {
                await local.opLogManager.updateServerGeneratedIds(
                  model: UpdateServerGeneratedIdModel(
                    clientReferenceId: entity.clientReferenceId,
                    serverGeneratedId: serverGeneratedId,
                    dataOperation: element.operation,
                    rowVersion: rowVersion,
                  ),
                );
              } else {
                final bool markAsNonRecoverable = await local.opLogManager
                    .updateSyncDownRetry(entity.clientReferenceId);

                if (markAsNonRecoverable) {
                  await local.update(
                    entity.copyWith(
                      nonRecoverableError: true,
                    ),
                    createOpLog: false,
                  );
                }
              }
            }

            break;
          case DataModelType.task:
            responseEntities = await remote.search(TaskSearchModel(
              clientReferenceId: entities
                  .whereType<TaskModel>()
                  .map((e) => e.clientReferenceId)
                  .whereNotNull()
                  .toList(),
              isDeleted: true,
            ));

            for (var element in operationGroupedEntity.value) {
              if (element.id == null) return;
              final taskModel = element.entity as TaskModel;
              var responseEntity =
                  responseEntities.whereType<TaskModel>().firstWhereOrNull(
                        (e) =>
                            e.clientReferenceId == taskModel.clientReferenceId,
                      );

              final serverGeneratedId = responseEntity?.id;
              final rowVersion = responseEntity?.rowVersion;

              if (serverGeneratedId != null) {
                await local.opLogManager.updateServerGeneratedIds(
                  model: UpdateServerGeneratedIdModel(
                    clientReferenceId: taskModel.clientReferenceId,
                    serverGeneratedId: serverGeneratedId,
                    additionalIds: responseEntity?.resources
                        ?.map((e) {
                          final id = e.id;
                          if (id == null) return null;

                          return AdditionalId(
                            idType: _taskResourceIdKey,
                            id: id,
                          );
                        })
                        .whereNotNull()
                        .toList(),
                    dataOperation: element.operation,
                    rowVersion: rowVersion,
                  ),
                );
              } else {
                final bool markAsNonRecoverable = await local.opLogManager
                    .updateSyncDownRetry(taskModel.clientReferenceId);

                if (markAsNonRecoverable) {
                  await local.update(
                    taskModel.copyWith(
                      nonRecoverableError: true,
                    ),
                    createOpLog: false,
                  );
                }
              }
            }

            break;

          case DataModelType.stock:
            responseEntities = await remote.search(
              StockSearchModel(
                clientReferenceId: entities
                    .whereType<StockModel>()
                    .map((e) => e.clientReferenceId)
                    .whereNotNull()
                    .toList(),
              ),
            );

            for (var element in operationGroupedEntity.value) {
              if (element.id == null) return;
              final entity = element.entity as StockModel;
              final responseEntity =
                  responseEntities.whereType<StockModel>().firstWhereOrNull(
                        (e) => e.clientReferenceId == entity.clientReferenceId,
                      );

              final serverGeneratedId = responseEntity?.id;
              final rowVersion = responseEntity?.rowVersion;

              if (serverGeneratedId != null) {
                await local.opLogManager.updateServerGeneratedIds(
                  model: UpdateServerGeneratedIdModel(
                    clientReferenceId: entity.clientReferenceId,
                    serverGeneratedId: serverGeneratedId,
                    dataOperation: element.operation,
                    rowVersion: rowVersion,
                  ),
                );
              } else {
                final bool markAsNonRecoverable = await local.opLogManager
                    .updateSyncDownRetry(entity.clientReferenceId);

                if (markAsNonRecoverable) {
                  await local.update(
                    entity.copyWith(
                      nonRecoverableError: true,
                    ),
                    createOpLog: false,
                  );
                }
              }
            }

            break;

          case DataModelType.stockReconciliation:
            responseEntities =
                await remote.search(StockReconciliationSearchModel(
              clientReferenceId: entities
                  .whereType<StockReconciliationModel>()
                  .map((e) => e.clientReferenceId)
                  .whereNotNull()
                  .toList(),
            ));

            for (var element in operationGroupedEntity.value) {
              if (element.id == null) return;
              final entity = element.entity as StockReconciliationModel;
              final responseEntity = responseEntities
                  .whereType<StockReconciliationModel>()
                  .firstWhereOrNull(
                    (e) => e.clientReferenceId == entity.clientReferenceId,
                  );

              final serverGeneratedId = responseEntity?.id;
              final rowVersion = responseEntity?.rowVersion;

              if (serverGeneratedId != null) {
                await local.opLogManager.updateServerGeneratedIds(
                  model: UpdateServerGeneratedIdModel(
                    clientReferenceId: entity.clientReferenceId,
                    serverGeneratedId: serverGeneratedId,
                    dataOperation: element.operation,
                    rowVersion: rowVersion,
                  ),
                );
              } else {
                final bool markAsNonRecoverable = await local.opLogManager
                    .updateSyncDownRetry(entity.clientReferenceId);

                if (markAsNonRecoverable) {
                  await local.update(
                    entity.copyWith(
                      nonRecoverableError: true,
                    ),
                    createOpLog: false,
                  );
                }
              }
            }

            break;

          case DataModelType.complaints:
            if (remote is! PgrServiceRemoteRepository) continue;

            final futures = entities
                .whereType<PgrServiceModel>()
                .map((e) => e.serviceRequestId)
                .whereNotNull()
                .map(
              (e) {
                final future = remote.searchWithoutClientReferenceId(
                  PgrServiceSearchModel(
                    serviceRequestId: e,
                  ),
                );

                return Future.sync(() => future);
              },
            );

            final resolvedFutures = await Future.wait(futures);

            responseEntities = resolvedFutures
                .expand((element) => element)
                .whereType<PgrServiceResponseModel>()
                // We only need serviceRequestId and application status
                .map((e) => PgrServiceModel(
                      clientReferenceId: '',
                      tenantId: e.tenantId ?? '',
                      serviceCode: e.serviceCode ?? '',
                      description: e.description ?? '',
                      serviceRequestId: e.serviceRequestId,
                      applicationStatus: e.applicationStatus ??
                          PgrServiceApplicationStatus.pendingAssignment,
                      user: PgrComplainantModel(
                        clientReferenceId: '',
                        tenantId: '',
                        complaintClientReferenceId: e.serviceRequestId ?? '',
                      ),
                      address: PgrAddressModel(),
                    ))
                .toList();

            for (var element in operationGroupedEntity.value) {
              if (element.id == null) return;
              final entity = element.entity as PgrServiceModel;
              final responseEntity = responseEntities
                  .whereType<PgrServiceModel>()
                  .firstWhereOrNull(
                    (e) => e.clientReferenceId == entity.clientReferenceId,
                  );

              final serverGeneratedId = responseEntity?.serviceRequestId;
              final rowVersion = responseEntity?.rowVersion;

              if (serverGeneratedId != null) {
                await local.opLogManager.updateServerGeneratedIds(
                  model: UpdateServerGeneratedIdModel(
                    clientReferenceId: entity.clientReferenceId,
                    serverGeneratedId: serverGeneratedId,
                    dataOperation: element.operation,
                    rowVersion: rowVersion,
                  ),
                );
              }
            }

            break;

          default:
            continue;
        }

        for (var element in responseEntities) {
          await local.update(element, createOpLog: false);
        }
      }
    }
  }

  FutureOr<void> syncUp({
    required BandwidthModel bandwidthModel,
    required List<LocalRepository> localRepositories,
    required List<RemoteRepository> remoteRepositories,
  }) async {
    final futures = await Future.wait(
      localRepositories
          .map((e) => e.getItemsToBeSyncedUp(bandwidthModel.userId)),
    );

    final pendingSyncEntries = futures.expand((e) => e).toList();
    pendingSyncEntries.sort((a, b) => a.createdAt.compareTo(b.createdAt));
    final groupedEntries = pendingSyncEntries.groupListsBy(
      (element) => element.type,
    );

    final entries = groupedEntries.entries.toList();
    entries.sort((a, b) => DataModelType.values
        .indexOf(a.key)
        .compareTo(DataModelType.values.indexOf(b.key)));
    for (final typeGroupedEntity in entries) {
      final groupedOperations = typeGroupedEntity.value.groupListsBy(
        (element) => element.operation,
      );

      final remote = _getRemoteForType(
        typeGroupedEntity.key,
        remoteRepositories,
      );

      final local = _getLocalForType(
        typeGroupedEntity.key,
        localRepositories,
      );

      for (final operationGroupedEntity in groupedOperations.entries) {
        // [returns list of oplogs whose nonRecoverableError is false and syncedup is false]
        final opLogList = operationGroupedEntity.value
            .where(
              (element) => !element.nonRecoverableError && !element.syncedUp,
            )
            .toList();
        // [returns list of oplogs whose nonRecoverableError is true]
        final opLogErrorList = operationGroupedEntity.value
            .where((element) => element.nonRecoverableError)
            .toList();

        // [returns list of oplogs whose nonRecoverableError is false and retry count is equal to configured value]
        final nonRecoverableErrorList = operationGroupedEntity.value
            .where((element) =>
                !element.nonRecoverableError &&
                element.syncDownRetryCount >=
                    envConfig.variables.syncDownRetryCount)
            .toList();

        final List<List<OpLogEntry<EntityModel>>> listOfBatchedOpLogList =
            opLogList.slices(bandwidthModel.batchSize).toList();

        final List<List<OpLogEntry<EntityModel>>> listOfBatchedOpLogErrorList =
            opLogErrorList.slices(bandwidthModel.batchSize).toList();

        final List<List<OpLogEntry<EntityModel>>>
            listOfBatchedNonRecoverableErrorList =
            nonRecoverableErrorList.slices(bandwidthModel.batchSize).toList();

        if (listOfBatchedNonRecoverableErrorList.isNotEmpty) {
          for (final sublist in listOfBatchedNonRecoverableErrorList) {
            final nonRecoverableErrorEntities = getEntityModel(sublist, local);
            await remote.dumpError(
              nonRecoverableErrorEntities,
              operationGroupedEntity.key,
            );
            for (final syncedEntity in sublist) {
              if (syncedEntity.type == DataModelType.complaints) continue;
              await local.markSyncedUp(
                entry: syncedEntity,
                nonRecoverableError: true,
                clientReferenceId: syncedEntity.clientReferenceId,
                id: syncedEntity.id,
              );
            }
          }
        }

        if (listOfBatchedOpLogErrorList.isNotEmpty) {
          for (final sublist in listOfBatchedOpLogErrorList) {
            final errorEntities = getEntityModel(sublist, local);
            await remote.dumpError(
              errorEntities,
              operationGroupedEntity.key,
            );
            for (final syncedEntity in sublist) {
              await local.markSyncedUp(
                entry: syncedEntity,
                nonRecoverableError: syncedEntity.nonRecoverableError,
                clientReferenceId: syncedEntity.clientReferenceId,
                id: syncedEntity.id,
              );
            }
          }
        }
        if (listOfBatchedOpLogList.isNotEmpty) {
          for (final sublist in listOfBatchedOpLogList) {
            final entities = getEntityModel(sublist, local);
            if (operationGroupedEntity.key == DataOperation.create) {
              await Future.delayed(const Duration(seconds: 1));
              switch (typeGroupedEntity.key) {
                case DataModelType.complaints:
                  for (final entity in entities) {
                    if (remote is PgrServiceRemoteRepository &&
                        entity is PgrServiceModel) {
                      final response = await remote.create(entity);
                      final responseData = response.data;
                      if (responseData is! Map<String, dynamic>) {
                        AppLogger.instance.error(
                          title: 'NetworkManager : PgrServiceRemoteRepository',
                          message: responseData,
                          stackTrace: StackTrace.current,
                        );
                        continue;
                      }

                      PgrServiceCreateResponseModel
                          pgrServiceCreateResponseModel;
                      PgrComplaintResponseModel pgrComplaintModel;
                      try {
                        pgrServiceCreateResponseModel =
                            Mapper.fromMap<PgrServiceCreateResponseModel>(
                          responseData,
                        );
                        pgrComplaintModel =
                            pgrServiceCreateResponseModel.serviceWrappers.first;
                      } catch (e) {
                        rethrow;
                      }

                      final service = pgrComplaintModel.service;
                      final serviceRequestId = service.serviceRequestId;

                      if (serviceRequestId == null ||
                          serviceRequestId.isEmpty) {
                        AppLogger.instance.error(
                          title: 'NetworkManager : PgrServiceRemoteRepository',
                          message: 'Service Request ID is null',
                          stackTrace: StackTrace.current,
                        );
                        continue;
                      }

                      await local.markSyncedUp(
                        clientReferenceId: entity.clientReferenceId,
                        nonRecoverableError: entity.nonRecoverableError,
                      );

                      await local.opLogManager.updateServerGeneratedIds(
                        model: UpdateServerGeneratedIdModel(
                          clientReferenceId: entity.clientReferenceId,
                          serverGeneratedId: serviceRequestId,
                          dataOperation: operationGroupedEntity.key,
                          rowVersion: entity.rowVersion,
                        ),
                      );

                      await local.update(
                        entity.copyWith(
                          serviceRequestId: serviceRequestId,
                          id: service.id,
                          applicationStatus: service.applicationStatus,
                          accountId: service.accountId,
                        ),
                        createOpLog: false,
                      );
                    }
                  }
                  break;
                default:
                  await remote.bulkCreate(entities);
              }
            } else if (operationGroupedEntity.key == DataOperation.update) {
              await Future.delayed(const Duration(seconds: 1));
              await remote.bulkUpdate(entities);
            } else if (operationGroupedEntity.key == DataOperation.delete) {
              await Future.delayed(const Duration(seconds: 1));
              await remote.bulkDelete(entities);
            }
            if (operationGroupedEntity.key == DataOperation.singleCreate) {
              for (var element in entities) {
                await remote.singleCreate(element);
              }
            }
            for (final syncedEntity in sublist) {
              if (syncedEntity.type == DataModelType.complaints) continue;
              await local.markSyncedUp(
                entry: syncedEntity,
                id: syncedEntity.id,
                nonRecoverableError: syncedEntity.nonRecoverableError,
                clientReferenceId: syncedEntity.clientReferenceId,
              );
            }
          }
        }
      }
    }
  }

  FutureOr<int> getPendingSyncRecordsCount(
    List<LocalRepository> localRepositories,
    String userId,
  ) async =>
      (await Future.wait(localRepositories.map((e) {
        return e.getItemsToBeSyncedUp(userId);
      })))
          .expand((element) => element)
          .length;

  RemoteRepository _getRemoteForType(
    DataModelType type,
    List<RemoteRepository> remoteRepositories,
  ) {
    final repository = remoteRepositories.firstWhereOrNull(
      (e) => e.type == type,
    );

    if (repository == null) {
      throw Exception(
        'Remote repository is not configured in the network manager',
      );
    }

    return repository;
  }

  LocalRepository _getLocalForType(
    DataModelType type,
    List<LocalRepository> localRepositories,
  ) {
    final repository = localRepositories.firstWhereOrNull(
      (e) => e.type == type,
    );

    if (repository == null) {
      throw Exception(
        'Remote repository is not configured in the network manager',
      );
    }

    return repository;
  }
}

Future<List<OpLogEntry<EntityModel>>> filterOpLogbyBandwidth(
  int batchSize,
  List<OpLogEntry<EntityModel>> entities,
) async {
  final List<OpLogEntry<EntityModel>> items = [];
  final int size = batchSize < entities.length ? batchSize : entities.length;

  for (var i = 0; i < size; i++) {
    items.add(entities[i]);
  }

  return items;
}

List<EntityModel> getEntityModel(
  List<OpLogEntry<EntityModel>> opLogList,
  LocalRepository<EntityModel, EntitySearchModel> local,
) {
  return opLogList
      .map((e) {
        final oplogEntryEntity = e.entity;

        final serverGeneratedId = e.serverGeneratedId;
        final rowVersion = e.rowVersion;
        if (serverGeneratedId != null) {
          var updatedEntity = local.opLogManager.applyServerGeneratedIdToEntity(
            oplogEntryEntity,
            serverGeneratedId,
            rowVersion,
          );

          if (updatedEntity is HouseholdModel) {
            final addressId = e.additionalIds.firstWhereOrNull(
              (element) {
                return element.idType == NetworkManager._householdAddressIdKey;
              },
            )?.id;

            updatedEntity = updatedEntity.copyWith(
              address: updatedEntity.address?.copyWith(
                id: updatedEntity.address?.id ?? addressId,
              ),
            );
          }

          if (updatedEntity is IndividualModel) {
            final identifierId = e.additionalIds.firstWhereOrNull(
              (element) {
                return element.idType ==
                    NetworkManager._individualIdentifierIdKey;
              },
            )?.id;

            final addressId = e.additionalIds.firstWhereOrNull(
              (element) {
                return element.idType == NetworkManager._individualAddressIdKey;
              },
            )?.id;

            updatedEntity = updatedEntity.copyWith(
              identifiers: updatedEntity.identifiers?.map((e) {
                return e.copyWith(
                  id: e.id ?? identifierId,
                );
              }).toList(),
              address: updatedEntity.address?.map((e) {
                return e.copyWith(
                  id: e.id ?? addressId,
                );
              }).toList(),
            );
          }

          if (updatedEntity is TaskModel) {
            final resourceId = e.additionalIds
                .firstWhereOrNull(
                  (element) =>
                      element.idType == NetworkManager._taskResourceIdKey,
                )
                ?.id;

            updatedEntity = updatedEntity.copyWith(
              resources: updatedEntity.resources?.map((e) {
                if (resourceId != null) {
                  return e.copyWith(
                    taskId: serverGeneratedId,
                    id: e.id ?? resourceId,
                  );
                }

                return e.copyWith(taskId: serverGeneratedId);
              }).toList(),
            );
          }

          return updatedEntity;
        }

        return oplogEntryEntity;
      })
      .whereNotNull()
      .toList();
}

class NetworkManagerConfiguration {
  final PersistenceConfiguration persistenceConfig;

  const NetworkManagerConfiguration({
    this.persistenceConfig = PersistenceConfiguration.offlineFirst,
  });
}

enum PersistenceConfiguration { offlineFirst, onlineOnly }

abstract class SyncError implements Exception {
  final dynamic error;

  const SyncError([this.error]);
}

class SyncUpError extends SyncError {
  const SyncUpError([dynamic error]) : super(error);
}

class SyncDownError extends SyncError {
  const SyncDownError([dynamic error]) : super(error);
}
