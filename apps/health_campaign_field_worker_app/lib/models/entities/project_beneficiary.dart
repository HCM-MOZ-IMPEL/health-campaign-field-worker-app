// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';
import 'package:drift/drift.dart';

import '../data_model.dart';
import '../../data/local_store/sql_store/sql_store.dart';

@MappableClass(ignoreNull: true)
class ProjectBeneficiarySearchModel extends EntitySearchModel {
  final String? id;
  final String? projectId;
  final String? beneficiaryId;
  final String? beneficiaryClientReferenceId;
  final DateTime? beneficiaryRegistrationDateLte;
  final DateTime? beneficiaryRegistrationDateGte;
  final List<String>? clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final DateTime? dateOfRegistrationTime;
  
  ProjectBeneficiarySearchModel({
    this.id,
    this.projectId,
    this.beneficiaryId,
    this.beneficiaryClientReferenceId,
    this.beneficiaryRegistrationDateLte,
    this.beneficiaryRegistrationDateGte,
    this.clientReferenceId,
    this.tenantId,
    this.isDeleted,
    int? dateOfRegistration,
    super.boundaryCode,
  }): dateOfRegistrationTime = dateOfRegistration == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(dateOfRegistration),
   super();

  int? get dateOfRegistration => dateOfRegistrationTime?.millisecondsSinceEpoch;
  
}

@MappableClass(ignoreNull: true)
class ProjectBeneficiaryModel extends EntityModel {

  static const schemaName = 'ProjectBeneficiary';

  final String? id;
  final String? projectId;
  final String? beneficiaryId;
  final String? beneficiaryClientReferenceId;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final DateTime dateOfRegistrationTime;
  final ProjectBeneficiaryAdditionalFields? additionalFields;

  ProjectBeneficiaryModel({
    this.additionalFields,
    this.id,
    this.projectId,
    this.beneficiaryId,
    this.beneficiaryClientReferenceId,
    required this.clientReferenceId,
    this.tenantId,
    this.isDeleted,
    this.rowVersion,
    required int dateOfRegistration,
    super.auditDetails,
  }): dateOfRegistrationTime = DateTime.fromMillisecondsSinceEpoch(dateOfRegistration),
      super();

  int  get dateOfRegistration => dateOfRegistrationTime.millisecondsSinceEpoch;
  

  ProjectBeneficiaryCompanion get companion {
    return ProjectBeneficiaryCompanion(
      auditCreatedBy: Value(auditDetails?.createdBy),
      auditCreatedTime: Value(auditDetails?.createdTime),
      auditModifiedBy: Value(auditDetails?.lastModifiedBy),
      auditModifiedTime: Value(auditDetails?.lastModifiedTime),
      additionalFields: Value(additionalFields?.toJson()),
      id: Value(id),
      projectId: Value(projectId),
      beneficiaryId: Value(beneficiaryId),
      beneficiaryClientReferenceId: Value(beneficiaryClientReferenceId),
      clientReferenceId: Value(clientReferenceId),
      tenantId: Value(tenantId),
      isDeleted: Value(isDeleted),
      rowVersion: Value(rowVersion),
      dateOfRegistration: Value(dateOfRegistration),
      );
  }
}

@MappableClass(ignoreNull: true)
class ProjectBeneficiaryAdditionalFields extends AdditionalFields {
  ProjectBeneficiaryAdditionalFields({
    super.schema = 'ProjectBeneficiary',
    required super.version,
    super.fields,
  });
}
