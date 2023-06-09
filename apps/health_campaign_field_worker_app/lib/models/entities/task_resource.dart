// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';
import 'package:drift/drift.dart';

import '../data_model.dart';
import '../../data/local_store/sql_store/sql_store.dart';

@MappableClass(ignoreNull: true)
class TaskResourceSearchModel extends EntitySearchModel {
  final String? id;
  final String? tenantId;
  
  TaskResourceSearchModel({
    this.id,
    this.tenantId,
    super.boundaryCode,
    super.isDeleted,
  }):  super();

  @MappableConstructor()
  TaskResourceSearchModel.ignoreDeleted({
    this.id,
    this.tenantId,
    super.boundaryCode,
  }):  super(isDeleted: false);
}

@MappableClass(ignoreNull: true)
class TaskResourceModel extends EntityModel {

  static const schemaName = 'TaskResource';

  final String clientReferenceId;
  final String? taskId;
  final String? id;
  final String? productVariantId;
  final String? quantity;
  final bool? isDelivered;
  final String? deliveryComment;
  final String? tenantId;
  final int? rowVersion;
  final TaskResourceAdditionalFields? additionalFields;

  TaskResourceModel({
    this.additionalFields,
    required this.clientReferenceId,
    this.taskId,
    this.id,
    this.productVariantId,
    this.quantity,
    this.isDelivered,
    this.deliveryComment,
    this.tenantId,
    this.rowVersion,
    super.auditDetails,
    super.isDeleted = false,
  }): super();

  TaskResourceCompanion get companion {
    return TaskResourceCompanion(
      auditCreatedBy: Value(auditDetails?.createdBy),
      auditCreatedTime: Value(auditDetails?.createdTime),
      auditModifiedBy: Value(auditDetails?.lastModifiedBy),
      auditModifiedTime: Value(auditDetails?.lastModifiedTime),
      additionalFields: Value(additionalFields?.toJson()),
      isDeleted: Value(isDeleted),
      clientReferenceId: Value(clientReferenceId),
      taskId: Value(taskId),
      id: Value(id),
      productVariantId: Value(productVariantId),
      quantity: Value(quantity),
      isDelivered: Value(isDelivered),
      deliveryComment: Value(deliveryComment),
      tenantId: Value(tenantId),
      rowVersion: Value(rowVersion),
      );
  }
}

@MappableClass(ignoreNull: true)
class TaskResourceAdditionalFields extends AdditionalFields {
  TaskResourceAdditionalFields({
    super.schema = 'TaskResource',
    required super.version,
    super.fields,
  });
}
