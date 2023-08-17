// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';
import 'package:drift/drift.dart';

import '../data_model.dart';
import '../../data/local_store/sql_store/sql_store.dart';

@MappableClass(ignoreNull: true)
class IndividualSearchModel extends EntitySearchModel {
  final String? id;
  final String? dateOfBirth;
  final List<String>? clientReferenceId;
  final String? tenantId;
  final NameSearchModel? name;
  final Gender? gender;
  final List<IdentifierSearchModel>? identifiers;
  
  IndividualSearchModel({
    this.id,
    this.dateOfBirth,
    this.clientReferenceId,
    this.tenantId,
    this.name,
    this.gender,
    this.identifiers,
    super.boundaryCode,
    super.isDeleted,
  }):  super();

  @MappableConstructor()
  IndividualSearchModel.ignoreDeleted({
    this.id,
    this.dateOfBirth,
    this.clientReferenceId,
    this.tenantId,
    this.name,
    this.gender,
    this.identifiers,
    super.boundaryCode,
  }):  super(isDeleted: false);
}

@MappableClass(ignoreNull: true)
class IndividualModel extends EntityModel {

  static const schemaName = 'Individual';

  final String? id;
  final String? userId;
  final String? dateOfBirth;
  final String? mobileNumber;
  final String? altContactNumber;
  final String? email;
  final String? fatherName;
  final String? husbandName;
  final String? photo;
  final bool? nonRecoverableError;
  final String clientReferenceId;
  final String? tenantId;
  final int? rowVersion;
  final NameModel? name;
  final BloodGroup? bloodGroup;
  final List<AddressModel>? address;
  final Gender? gender;
  final List<IdentifierModel>? identifiers;
  final IndividualAdditionalFields? additionalFields;

  IndividualModel({
    this.additionalFields,
    this.id,
    this.userId,
    this.dateOfBirth,
    this.mobileNumber,
    this.altContactNumber,
    this.email,
    this.fatherName,
    this.husbandName,
    this.photo,
    this.nonRecoverableError = false,
    required this.clientReferenceId,
    this.tenantId,
    this.rowVersion,
    this.name,
    this.bloodGroup,
    this.address,
    this.gender,
    this.identifiers,
    super.auditDetails,
    super.isDeleted = false,
  }): super();

  IndividualCompanion get companion {
    return IndividualCompanion(
      auditCreatedBy: Value(auditDetails?.createdBy),
      auditCreatedTime: Value(auditDetails?.createdTime),
      auditModifiedBy: Value(auditDetails?.lastModifiedBy),
      auditModifiedTime: Value(auditDetails?.lastModifiedTime),
      additionalFields: Value(additionalFields?.toJson()),
      isDeleted: Value(isDeleted),
      id: Value(id),
      userId: Value(userId),
      dateOfBirth: Value(dateOfBirth),
      mobileNumber: Value(mobileNumber),
      altContactNumber: Value(altContactNumber),
      email: Value(email),
      fatherName: Value(fatherName),
      husbandName: Value(husbandName),
      photo: Value(photo),
      nonRecoverableError: Value(nonRecoverableError),
      clientReferenceId: Value(clientReferenceId),
      tenantId: Value(tenantId),
      rowVersion: Value(rowVersion),
      bloodGroup: Value(bloodGroup),
      gender: Value(gender),
      );
  }
}

@MappableClass(ignoreNull: true)
class IndividualAdditionalFields extends AdditionalFields {
  IndividualAdditionalFields({
    super.schema = 'Individual',
    required super.version,
    super.fields,
  });
}
