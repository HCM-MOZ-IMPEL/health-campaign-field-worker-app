// Generated using mason. Do not modify by hand

import '../../../models/data_model.dart';
import '../../data_repository.dart';

class ServiceRemoteRepository extends RemoteRepository<ServiceModel, ServiceSearchModel> {
  ServiceRemoteRepository(
    super.dio, {
    required super.actionMap,
    super.entityName = 'Service',
  });

  @override
  DataModelType get type => DataModelType.service;
}
