// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';
import 'package:drift/drift.dart';

import '../data_model.dart';
import '../../data/local_store/sql_store/sql_store.dart';

@MappableClass(ignoreNull: true)
class AddressSearchModel extends EntitySearchModel {
  final String? id;
  final String? tenantId;
  final bool? isDeleted;
  
  AddressSearchModel({
    this.id,
    this.tenantId,
    this.isDeleted,
    super.boundaryCode,
  }):  super();
}

@MappableClass(ignoreNull: true)
class AddressModel extends EntityModel {

  static const schemaName = 'Address';

  final String? id;
  final String? relatedClientReferenceId;
  final String? doorNo;
  final double? latitude;
  final double? longitude;
  final double? locationAccuracy;
  final String? addressLine1;
  final String? addressLine2;
  final String? landmark;
  final String? city;
  final String? pincode;
  final String? buildingName;
  final String? street;
  final String? boundaryType;
  final String? boundary;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final AddressType? type;
  final AddressAdditionalFields? additionalFields;

  AddressModel({
    this.additionalFields,
    this.id,
    this.relatedClientReferenceId,
    this.doorNo,
    this.latitude,
    this.longitude,
    this.locationAccuracy,
    this.addressLine1,
    this.addressLine2,
    this.landmark,
    this.city,
    this.pincode,
    this.buildingName,
    this.street,
    this.boundaryType,
    this.boundary,
    this.tenantId,
    this.isDeleted,
    this.rowVersion,
    this.type,
    super.auditDetails,
  }): super();

  AddressCompanion get companion {
    return AddressCompanion(
      auditCreatedBy: Value(auditDetails?.createdBy),
      auditCreatedTime: Value(auditDetails?.createdTime),
      auditModifiedBy: Value(auditDetails?.lastModifiedBy),
      auditModifiedTime: Value(auditDetails?.lastModifiedTime),
      additionalFields: Value(additionalFields?.toJson()),
      id: Value(id),
      relatedClientReferenceId: Value(relatedClientReferenceId),
      doorNo: Value(doorNo),
      latitude: Value(latitude),
      longitude: Value(longitude),
      locationAccuracy: Value(locationAccuracy),
      addressLine1: Value(addressLine1),
      addressLine2: Value(addressLine2),
      landmark: Value(landmark),
      city: Value(city),
      pincode: Value(pincode),
      buildingName: Value(buildingName),
      street: Value(street),
      boundaryType: Value(boundaryType),
      boundary: Value(boundary),
      tenantId: Value(tenantId),
      isDeleted: Value(isDeleted),
      rowVersion: Value(rowVersion),
      type: Value(type),
      );
  }
}

@MappableClass(ignoreNull: true)
class AddressAdditionalFields extends AdditionalFields {
  AddressAdditionalFields({
    super.schema = 'Address',
    required super.version,
    super.fields,
  });
}
