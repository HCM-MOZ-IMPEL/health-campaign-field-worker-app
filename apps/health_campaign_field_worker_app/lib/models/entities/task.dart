// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';
import 'package:drift/drift.dart';

import '../data_model.dart';
import '../../data/local_store/sql_store/sql_store.dart';

@MappableClass(ignoreNull: true)
class TaskSearchModel extends EntitySearchModel {
  final String? id;
  final String? projectId;
  final String? projectBeneficiaryId;
  final String? projectBeneficiaryClientReferenceId;
  final String? createdBy;
  final String? status;
  final List<String>? clientReferenceId;
  final String? tenantId;
  final DateTime? plannedStartDateTime;
  final DateTime? plannedEndDateTime;
  final DateTime? actualStartDateTime;
  final DateTime? actualEndDateTime;
  
  TaskSearchModel({
    this.id,
    this.projectId,
    this.projectBeneficiaryId,
    this.projectBeneficiaryClientReferenceId,
    this.createdBy,
    this.status,
    this.clientReferenceId,
    this.tenantId,
    int? plannedStartDate,
    int? plannedEndDate,
    int? actualStartDate,
    int? actualEndDate,
    super.boundaryCode,
    super.isDeleted,
  }): plannedStartDateTime = plannedStartDate == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(plannedStartDate),
  plannedEndDateTime = plannedEndDate == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(plannedEndDate),
  actualStartDateTime = actualStartDate == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(actualStartDate),
  actualEndDateTime = actualEndDate == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(actualEndDate),
   super();

  @MappableConstructor()
  TaskSearchModel.ignoreDeleted({
    this.id,
    this.projectId,
    this.projectBeneficiaryId,
    this.projectBeneficiaryClientReferenceId,
    this.createdBy,
    this.status,
    this.clientReferenceId,
    this.tenantId,
    int? plannedStartDate,
    int? plannedEndDate,
    int? actualStartDate,
    int? actualEndDate,
    super.boundaryCode,
  }): plannedStartDateTime = plannedStartDate == null
  ? null
      : DateTime.fromMillisecondsSinceEpoch(plannedStartDate),
  plannedEndDateTime = plannedEndDate == null
  ? null
      : DateTime.fromMillisecondsSinceEpoch(plannedEndDate),
  actualStartDateTime = actualStartDate == null
  ? null
      : DateTime.fromMillisecondsSinceEpoch(actualStartDate),
  actualEndDateTime = actualEndDate == null
  ? null
      : DateTime.fromMillisecondsSinceEpoch(actualEndDate),
   super(isDeleted: false);

  int? get plannedStartDate => plannedStartDateTime?.millisecondsSinceEpoch;
  

  int? get plannedEndDate => plannedEndDateTime?.millisecondsSinceEpoch;
  

  int? get actualStartDate => actualStartDateTime?.millisecondsSinceEpoch;
  

  int? get actualEndDate => actualEndDateTime?.millisecondsSinceEpoch;
  
}

@MappableClass(ignoreNull: true)
class TaskModel extends EntityModel {

  static const schemaName = 'Task';

  final String? id;
  final String? projectId;
  final String? projectBeneficiaryId;
  final String? projectBeneficiaryClientReferenceId;
  final String? createdBy;
  final String? status;
  final String clientReferenceId;
  final String? tenantId;
  final int? rowVersion;
  final List<TaskResourceModel>? resources;
  final AddressModel? address;
  final DateTime? plannedStartDateTime;
  final DateTime? plannedEndDateTime;
  final DateTime? actualStartDateTime;
  final DateTime? actualEndDateTime;
  final DateTime? createdDateTime;
  final TaskAdditionalFields? additionalFields;

  TaskModel({
    this.additionalFields,
    this.id,
    this.projectId,
    this.projectBeneficiaryId,
    this.projectBeneficiaryClientReferenceId,
    this.createdBy,
    this.status,
    required this.clientReferenceId,
    this.tenantId,
    this.rowVersion,
    this.resources,
    this.address,
    int? plannedStartDate,
    int? plannedEndDate,
    int? actualStartDate,
    int? actualEndDate,
    int? createdDate,
    super.auditDetails,super.clientAuditDetails,
    super.isDeleted = false,
  }): plannedStartDateTime = plannedStartDate == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(plannedStartDate),
      plannedEndDateTime = plannedEndDate == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(plannedEndDate),
      actualStartDateTime = actualStartDate == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(actualStartDate),
      actualEndDateTime = actualEndDate == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(actualEndDate),
      createdDateTime = createdDate == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(createdDate),
      super();

  int?  get plannedStartDate => plannedStartDateTime?.millisecondsSinceEpoch;
  

  int?  get plannedEndDate => plannedEndDateTime?.millisecondsSinceEpoch;
  

  int?  get actualStartDate => actualStartDateTime?.millisecondsSinceEpoch;
  

  int?  get actualEndDate => actualEndDateTime?.millisecondsSinceEpoch;
  

  int?  get createdDate => createdDateTime?.millisecondsSinceEpoch;
  

  TaskCompanion get companion {
    return TaskCompanion(
      auditCreatedBy: Value(auditDetails?.createdBy),
      auditCreatedTime: Value(auditDetails?.createdTime),
      auditModifiedBy: Value(auditDetails?.lastModifiedBy),
      clientCreatedTime: Value(clientAuditDetails?.createdTime),
      clientModifiedTime: Value(clientAuditDetails?.lastModifiedTime),
      clientCreatedBy: Value(clientAuditDetails?.createdBy),
      clientModifiedBy: Value(clientAuditDetails?.lastModifiedBy),
      auditModifiedTime: Value(auditDetails?.lastModifiedTime),
      additionalFields: Value(additionalFields?.toJson()),
      isDeleted: Value(isDeleted),
      id: Value(id),
      projectId: Value(projectId),
      projectBeneficiaryId: Value(projectBeneficiaryId),
      projectBeneficiaryClientReferenceId: Value(projectBeneficiaryClientReferenceId),
      createdBy: Value(createdBy),
      status: Value(status),
      clientReferenceId: Value(clientReferenceId),
      tenantId: Value(tenantId),
      rowVersion: Value(rowVersion),
      plannedStartDate: Value(plannedStartDate),
      plannedEndDate: Value(plannedEndDate),
      actualStartDate: Value(actualStartDate),
      actualEndDate: Value(actualEndDate),
      createdDate: Value(createdDate),
      );
  }
}

@MappableClass(ignoreNull: true)
class TaskAdditionalFields extends AdditionalFields {
  TaskAdditionalFields({
    super.schema = 'Task',
    required super.version,
    super.fields,
  });
}
