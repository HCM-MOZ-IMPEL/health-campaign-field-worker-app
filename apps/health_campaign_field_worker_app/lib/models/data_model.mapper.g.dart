import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable/internals.dart';

import 'data_model.dart';
import 'entities/address.dart';
import 'entities/address_type.dart';
import 'entities/attributes.dart';
import 'entities/blood_group.dart';
import 'entities/boundary.dart';
import 'entities/document.dart';
import 'entities/facility.dart';
import 'entities/gender.dart';
import 'entities/household.dart';
import 'entities/household_member.dart';
import 'entities/identifier.dart';
import 'entities/individual.dart';
import 'entities/locality.dart';
import 'entities/name.dart';
import 'entities/product.dart';
import 'entities/product_variant.dart';
import 'entities/project.dart';
import 'entities/project_beneficiary.dart';
import 'entities/project_facility.dart';
import 'entities/project_product_variant.dart';
import 'entities/project_resource.dart';
import 'entities/project_staff.dart';
import 'entities/project_type.dart';
import 'entities/service.dart';
import 'entities/service_attributes.dart';
import 'entities/service_definition.dart';
import 'entities/status.dart';
import 'entities/stock.dart';
import 'entities/stock_reconciliation.dart';
import 'entities/target.dart';
import 'entities/task.dart';
import 'entities/task_resource.dart';
import 'entities/transaction_reason.dart';
import 'entities/transaction_type.dart';
import 'oplog/oplog_entry.dart';


// === ALL STATICALLY REGISTERED MAPPERS ===

var _mappers = <BaseMapper>{
  // class mappers
  DataModelMapper._(),
  EntityModelMapper._(),
  EntitySearchModelMapper._(),
  AdditionalFieldsMapper._(),
  AdditionalFieldMapper._(),
  AuditDetailsMapper._(),
  AddressSearchModelMapper._(),
  AddressModelMapper._(),
  AddressAdditionalFieldsMapper._(),
  AttributesSearchModelMapper._(),
  AttributesModelMapper._(),
  AttributesAdditionalFieldsMapper._(),
  BoundarySearchModelMapper._(),
  BoundaryModelMapper._(),
  DocumentSearchModelMapper._(),
  DocumentModelMapper._(),
  DocumentAdditionalFieldsMapper._(),
  FacilitySearchModelMapper._(),
  FacilityModelMapper._(),
  FacilityAdditionalFieldsMapper._(),
  HouseholdSearchModelMapper._(),
  HouseholdModelMapper._(),
  HouseholdAdditionalFieldsMapper._(),
  HouseholdMemberSearchModelMapper._(),
  HouseholdMemberModelMapper._(),
  HouseholdMemberAdditionalFieldsMapper._(),
  IdentifierSearchModelMapper._(),
  IdentifierModelMapper._(),
  IdentifierAdditionalFieldsMapper._(),
  IndividualSearchModelMapper._(),
  IndividualModelMapper._(),
  IndividualAdditionalFieldsMapper._(),
  NameSearchModelMapper._(),
  NameModelMapper._(),
  NameAdditionalFieldsMapper._(),
  ProductSearchModelMapper._(),
  ProductModelMapper._(),
  ProductAdditionalFieldsMapper._(),
  ProductVariantSearchModelMapper._(),
  ProductVariantModelMapper._(),
  ProductVariantAdditionalFieldsMapper._(),
  ProjectSearchModelMapper._(),
  ProjectModelMapper._(),
  ProjectAdditionalFieldsMapper._(),
  ProjectBeneficiarySearchModelMapper._(),
  ProjectBeneficiaryModelMapper._(),
  ProjectBeneficiaryAdditionalFieldsMapper._(),
  ProjectFacilitySearchModelMapper._(),
  ProjectFacilityModelMapper._(),
  ProjectFacilityAdditionalFieldsMapper._(),
  ProjectProductVariantSearchModelMapper._(),
  ProjectProductVariantModelMapper._(),
  ProjectProductVariantAdditionalFieldsMapper._(),
  ProjectResourceSearchModelMapper._(),
  ProjectResourceModelMapper._(),
  ProjectResourceAdditionalFieldsMapper._(),
  ProjectStaffSearchModelMapper._(),
  ProjectStaffModelMapper._(),
  ProjectStaffAdditionalFieldsMapper._(),
  ProjectTypeSearchModelMapper._(),
  ProjectTypeModelMapper._(),
  ProjectTypeAdditionalFieldsMapper._(),
  ServiceSearchModelMapper._(),
  ServiceModelMapper._(),
  ServiceAdditionalFieldsMapper._(),
  ServiceAttributesSearchModelMapper._(),
  ServiceAttributesModelMapper._(),
  ServiceAttributesAdditionalFieldsMapper._(),
  ServiceDefinitionSearchModelMapper._(),
  ServiceDefinitionModelMapper._(),
  ServiceDefinitionAdditionalFieldsMapper._(),
  StockSearchModelMapper._(),
  StockModelMapper._(),
  StockAdditionalFieldsMapper._(),
  StockReconciliationSearchModelMapper._(),
  StockReconciliationModelMapper._(),
  StockReconciliationAdditionalFieldsMapper._(),
  TargetSearchModelMapper._(),
  TargetModelMapper._(),
  TargetAdditionalFieldsMapper._(),
  TaskSearchModelMapper._(),
  TaskModelMapper._(),
  TaskAdditionalFieldsMapper._(),
  TaskResourceSearchModelMapper._(),
  TaskResourceModelMapper._(),
  TaskResourceAdditionalFieldsMapper._(),
  LocalitySearchModelMapper._(),
  LocalityModelMapper._(),
  LocalityAdditionalFieldsMapper._(),
  OpLogEntryMapper._(),
  AdditionalIdMapper._(),
  // enum mappers
  AddressTypeMapper._(),
  BloodGroupMapper._(),
  GenderMapper._(),
  StatusMapper._(),
  TransactionReasonMapper._(),
  TransactionTypeMapper._(),
  DataOperationMapper._(),
  ApiOperationMapper._(),
  // custom mappers
};


// === GENERATED CLASS MAPPERS AND EXTENSIONS ===

class DataModelMapper extends BaseMapper<DataModel> {
  DataModelMapper._();

  @override Function get decoder => decode;
  DataModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  DataModel fromMap(Map<String, dynamic> map) => throw MapperException.missingConstructor('DataModel');

  @override Function get encoder => (DataModel v) => encode(v);
  dynamic encode(DataModel v) {
    if (v is EntityModel) { return EntityModelMapper._().encode(v); }
    else if (v is EntitySearchModel) { return EntitySearchModelMapper._().encode(v); }
    else { return toMap(v); }
  }
  Map<String, dynamic> toMap(DataModel d) => {'boundaryCode': Mapper.i.$enc(d.boundaryCode, 'boundaryCode')};

  @override String stringify(DataModel self) => 'DataModel(boundaryCode: ${Mapper.asString(self.boundaryCode)})';
  @override int hash(DataModel self) => Mapper.hash(self.boundaryCode);
  @override bool equals(DataModel self, DataModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode);

  @override Function get typeFactory => (f) => f<DataModel>();
}

extension DataModelMapperExtension  on DataModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
}

class EntityModelMapper extends BaseMapper<EntityModel> {
  EntityModelMapper._();

  @override Function get decoder => decode;
  EntityModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  EntityModel fromMap(Map<String, dynamic> map) => throw MapperException.missingConstructor('EntityModel');

  @override Function get encoder => (EntityModel v) => encode(v);
  dynamic encode(EntityModel v) {
    if (v is AddressModel) { return AddressModelMapper._().encode(v); }
    else if (v is AttributesModel) { return AttributesModelMapper._().encode(v); }
    else if (v is BoundaryModel) { return BoundaryModelMapper._().encode(v); }
    else if (v is DocumentModel) { return DocumentModelMapper._().encode(v); }
    else if (v is FacilityModel) { return FacilityModelMapper._().encode(v); }
    else if (v is HouseholdModel) { return HouseholdModelMapper._().encode(v); }
    else if (v is HouseholdMemberModel) { return HouseholdMemberModelMapper._().encode(v); }
    else if (v is IdentifierModel) { return IdentifierModelMapper._().encode(v); }
    else if (v is IndividualModel) { return IndividualModelMapper._().encode(v); }
    else if (v is NameModel) { return NameModelMapper._().encode(v); }
    else if (v is ProductModel) { return ProductModelMapper._().encode(v); }
    else if (v is ProductVariantModel) { return ProductVariantModelMapper._().encode(v); }
    else if (v is ProjectModel) { return ProjectModelMapper._().encode(v); }
    else if (v is ProjectBeneficiaryModel) { return ProjectBeneficiaryModelMapper._().encode(v); }
    else if (v is ProjectFacilityModel) { return ProjectFacilityModelMapper._().encode(v); }
    else if (v is ProjectProductVariantModel) { return ProjectProductVariantModelMapper._().encode(v); }
    else if (v is ProjectResourceModel) { return ProjectResourceModelMapper._().encode(v); }
    else if (v is ProjectStaffModel) { return ProjectStaffModelMapper._().encode(v); }
    else if (v is ProjectTypeModel) { return ProjectTypeModelMapper._().encode(v); }
    else if (v is ServiceModel) { return ServiceModelMapper._().encode(v); }
    else if (v is ServiceAttributesModel) { return ServiceAttributesModelMapper._().encode(v); }
    else if (v is ServiceDefinitionModel) { return ServiceDefinitionModelMapper._().encode(v); }
    else if (v is StockModel) { return StockModelMapper._().encode(v); }
    else if (v is StockReconciliationModel) { return StockReconciliationModelMapper._().encode(v); }
    else if (v is TargetModel) { return TargetModelMapper._().encode(v); }
    else if (v is TaskModel) { return TaskModelMapper._().encode(v); }
    else if (v is TaskResourceModel) { return TaskResourceModelMapper._().encode(v); }
    else if (v is LocalityModel) { return LocalityModelMapper._().encode(v); }
    else { return toMap(v); }
  }
  Map<String, dynamic> toMap(EntityModel e) => {'auditDetails': Mapper.i.$enc(e.auditDetails, 'auditDetails')};

  @override String stringify(EntityModel self) => 'EntityModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)})';
  @override int hash(EntityModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails);
  @override bool equals(EntityModel self, EntityModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails);

  @override Function get typeFactory => (f) => f<EntityModel>();
}

extension EntityModelMapperExtension  on EntityModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
}

class EntitySearchModelMapper extends BaseMapper<EntitySearchModel> {
  EntitySearchModelMapper._();

  @override Function get decoder => decode;
  EntitySearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  EntitySearchModel fromMap(Map<String, dynamic> map) => throw MapperException.missingConstructor('EntitySearchModel');

  @override Function get encoder => (EntitySearchModel v) => encode(v);
  dynamic encode(EntitySearchModel v) {
    if (v is AddressSearchModel) { return AddressSearchModelMapper._().encode(v); }
    else if (v is AttributesSearchModel) { return AttributesSearchModelMapper._().encode(v); }
    else if (v is BoundarySearchModel) { return BoundarySearchModelMapper._().encode(v); }
    else if (v is DocumentSearchModel) { return DocumentSearchModelMapper._().encode(v); }
    else if (v is FacilitySearchModel) { return FacilitySearchModelMapper._().encode(v); }
    else if (v is HouseholdSearchModel) { return HouseholdSearchModelMapper._().encode(v); }
    else if (v is HouseholdMemberSearchModel) { return HouseholdMemberSearchModelMapper._().encode(v); }
    else if (v is IdentifierSearchModel) { return IdentifierSearchModelMapper._().encode(v); }
    else if (v is IndividualSearchModel) { return IndividualSearchModelMapper._().encode(v); }
    else if (v is NameSearchModel) { return NameSearchModelMapper._().encode(v); }
    else if (v is ProductSearchModel) { return ProductSearchModelMapper._().encode(v); }
    else if (v is ProductVariantSearchModel) { return ProductVariantSearchModelMapper._().encode(v); }
    else if (v is ProjectSearchModel) { return ProjectSearchModelMapper._().encode(v); }
    else if (v is ProjectBeneficiarySearchModel) { return ProjectBeneficiarySearchModelMapper._().encode(v); }
    else if (v is ProjectFacilitySearchModel) { return ProjectFacilitySearchModelMapper._().encode(v); }
    else if (v is ProjectProductVariantSearchModel) { return ProjectProductVariantSearchModelMapper._().encode(v); }
    else if (v is ProjectResourceSearchModel) { return ProjectResourceSearchModelMapper._().encode(v); }
    else if (v is ProjectStaffSearchModel) { return ProjectStaffSearchModelMapper._().encode(v); }
    else if (v is ProjectTypeSearchModel) { return ProjectTypeSearchModelMapper._().encode(v); }
    else if (v is ServiceSearchModel) { return ServiceSearchModelMapper._().encode(v); }
    else if (v is ServiceAttributesSearchModel) { return ServiceAttributesSearchModelMapper._().encode(v); }
    else if (v is ServiceDefinitionSearchModel) { return ServiceDefinitionSearchModelMapper._().encode(v); }
    else if (v is StockSearchModel) { return StockSearchModelMapper._().encode(v); }
    else if (v is StockReconciliationSearchModel) { return StockReconciliationSearchModelMapper._().encode(v); }
    else if (v is TargetSearchModel) { return TargetSearchModelMapper._().encode(v); }
    else if (v is TaskSearchModel) { return TaskSearchModelMapper._().encode(v); }
    else if (v is TaskResourceSearchModel) { return TaskResourceSearchModelMapper._().encode(v); }
    else if (v is LocalitySearchModel) { return LocalitySearchModelMapper._().encode(v); }
    else { return toMap(v); }
  }
  Map<String, dynamic> toMap(EntitySearchModel e) => {if (Mapper.i.$enc(e.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(e.boundaryCode, 'boundaryCode'), if (Mapper.i.$enc(e.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(e.auditDetails, 'auditDetails'), if (Mapper.i.$enc(e.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(e.additionalFields, 'additionalFields')};

  @override String stringify(EntitySearchModel self) => 'EntitySearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(EntitySearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields);
  @override bool equals(EntitySearchModel self, EntitySearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<EntitySearchModel>();
}

extension EntitySearchModelMapperExtension  on EntitySearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
}

class AdditionalFieldsMapper extends BaseMapper<AdditionalFields> {
  AdditionalFieldsMapper._();

  @override Function get decoder => decode;
  AdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AdditionalFields fromMap(Map<String, dynamic> map) => throw MapperException.missingConstructor('AdditionalFields');

  @override Function get encoder => (AdditionalFields v) => encode(v);
  dynamic encode(AdditionalFields v) {
    if (v is AddressAdditionalFields) { return AddressAdditionalFieldsMapper._().encode(v); }
    else if (v is AttributesAdditionalFields) { return AttributesAdditionalFieldsMapper._().encode(v); }
    else if (v is DocumentAdditionalFields) { return DocumentAdditionalFieldsMapper._().encode(v); }
    else if (v is FacilityAdditionalFields) { return FacilityAdditionalFieldsMapper._().encode(v); }
    else if (v is HouseholdAdditionalFields) { return HouseholdAdditionalFieldsMapper._().encode(v); }
    else if (v is HouseholdMemberAdditionalFields) { return HouseholdMemberAdditionalFieldsMapper._().encode(v); }
    else if (v is IdentifierAdditionalFields) { return IdentifierAdditionalFieldsMapper._().encode(v); }
    else if (v is IndividualAdditionalFields) { return IndividualAdditionalFieldsMapper._().encode(v); }
    else if (v is NameAdditionalFields) { return NameAdditionalFieldsMapper._().encode(v); }
    else if (v is ProductAdditionalFields) { return ProductAdditionalFieldsMapper._().encode(v); }
    else if (v is ProductVariantAdditionalFields) { return ProductVariantAdditionalFieldsMapper._().encode(v); }
    else if (v is ProjectAdditionalFields) { return ProjectAdditionalFieldsMapper._().encode(v); }
    else if (v is ProjectBeneficiaryAdditionalFields) { return ProjectBeneficiaryAdditionalFieldsMapper._().encode(v); }
    else if (v is ProjectFacilityAdditionalFields) { return ProjectFacilityAdditionalFieldsMapper._().encode(v); }
    else if (v is ProjectProductVariantAdditionalFields) { return ProjectProductVariantAdditionalFieldsMapper._().encode(v); }
    else if (v is ProjectResourceAdditionalFields) { return ProjectResourceAdditionalFieldsMapper._().encode(v); }
    else if (v is ProjectStaffAdditionalFields) { return ProjectStaffAdditionalFieldsMapper._().encode(v); }
    else if (v is ProjectTypeAdditionalFields) { return ProjectTypeAdditionalFieldsMapper._().encode(v); }
    else if (v is ServiceAdditionalFields) { return ServiceAdditionalFieldsMapper._().encode(v); }
    else if (v is ServiceAttributesAdditionalFields) { return ServiceAttributesAdditionalFieldsMapper._().encode(v); }
    else if (v is ServiceDefinitionAdditionalFields) { return ServiceDefinitionAdditionalFieldsMapper._().encode(v); }
    else if (v is StockAdditionalFields) { return StockAdditionalFieldsMapper._().encode(v); }
    else if (v is StockReconciliationAdditionalFields) { return StockReconciliationAdditionalFieldsMapper._().encode(v); }
    else if (v is TargetAdditionalFields) { return TargetAdditionalFieldsMapper._().encode(v); }
    else if (v is TaskAdditionalFields) { return TaskAdditionalFieldsMapper._().encode(v); }
    else if (v is TaskResourceAdditionalFields) { return TaskResourceAdditionalFieldsMapper._().encode(v); }
    else if (v is LocalityAdditionalFields) { return LocalityAdditionalFieldsMapper._().encode(v); }
    else { return toMap(v); }
  }
  Map<String, dynamic> toMap(AdditionalFields a) => {'schema': Mapper.i.$enc(a.schema, 'schema'), 'version': Mapper.i.$enc(a.version, 'version'), 'fields': Mapper.i.$enc(a.fields, 'fields')};

  @override String stringify(AdditionalFields self) => 'AdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(AdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(AdditionalFields self, AdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<AdditionalFields>();
}

extension AdditionalFieldsMapperExtension  on AdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
}

class AdditionalFieldMapper extends BaseMapper<AdditionalField> {
  AdditionalFieldMapper._();

  @override Function get decoder => decode;
  AdditionalField decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AdditionalField fromMap(Map<String, dynamic> map) => AdditionalField(Mapper.i.$get(map, 'key'), Mapper.i.$getOpt(map, 'value'));

  @override Function get encoder => (AdditionalField v) => encode(v);
  dynamic encode(AdditionalField v) => toMap(v);
  Map<String, dynamic> toMap(AdditionalField a) => {'key': Mapper.i.$enc(a.key, 'key'), 'value': Mapper.i.$enc(a.value, 'value')};

  @override String stringify(AdditionalField self) => 'AdditionalField(key: ${Mapper.asString(self.key)}, value: ${Mapper.asString(self.value)})';
  @override int hash(AdditionalField self) => Mapper.hash(self.key) ^ Mapper.hash(self.value);
  @override bool equals(AdditionalField self, AdditionalField other) => Mapper.isEqual(self.key, other.key) && Mapper.isEqual(self.value, other.value);

  @override Function get typeFactory => (f) => f<AdditionalField>();
}

extension AdditionalFieldMapperExtension  on AdditionalField {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  AdditionalFieldCopyWith<AdditionalField> get copyWith => AdditionalFieldCopyWith(this, $identity);
}

abstract class AdditionalFieldCopyWith<$R> {
  factory AdditionalFieldCopyWith(AdditionalField value, Then<AdditionalField, $R> then) = _AdditionalFieldCopyWithImpl<$R>;
  $R call({String? key, dynamic value});
  $R apply(AdditionalField Function(AdditionalField) transform);
}

class _AdditionalFieldCopyWithImpl<$R> extends BaseCopyWith<AdditionalField, $R> implements AdditionalFieldCopyWith<$R> {
  _AdditionalFieldCopyWithImpl(AdditionalField value, Then<AdditionalField, $R> then) : super(value, then);

  @override $R call({String? key, Object? value = $none}) => $then(AdditionalField(key ?? $value.key, or(value, $value.value)));
}

class AuditDetailsMapper extends BaseMapper<AuditDetails> {
  AuditDetailsMapper._();

  @override Function get decoder => decode;
  AuditDetails decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AuditDetails fromMap(Map<String, dynamic> map) => AuditDetails(createdBy: Mapper.i.$get(map, 'createdBy'), createdTime: Mapper.i.$get(map, 'createdTime'), lastModifiedBy: Mapper.i.$getOpt(map, 'lastModifiedBy'), lastModifiedTime: Mapper.i.$getOpt(map, 'lastModifiedTime'));

  @override Function get encoder => (AuditDetails v) => encode(v);
  dynamic encode(AuditDetails v) => toMap(v);
  Map<String, dynamic> toMap(AuditDetails a) => {'createdBy': Mapper.i.$enc(a.createdBy, 'createdBy'), 'createdTime': Mapper.i.$enc(a.createdTime, 'createdTime'), 'lastModifiedBy': Mapper.i.$enc(a.lastModifiedBy, 'lastModifiedBy'), 'lastModifiedTime': Mapper.i.$enc(a.lastModifiedTime, 'lastModifiedTime')};

  @override String stringify(AuditDetails self) => 'AuditDetails(createdBy: ${Mapper.asString(self.createdBy)}, lastModifiedBy: ${Mapper.asString(self.lastModifiedBy)}, createdTime: ${Mapper.asString(self.createdTime)}, lastModifiedTime: ${Mapper.asString(self.lastModifiedTime)})';
  @override int hash(AuditDetails self) => Mapper.hash(self.createdBy) ^ Mapper.hash(self.lastModifiedBy) ^ Mapper.hash(self.createdTime) ^ Mapper.hash(self.lastModifiedTime);
  @override bool equals(AuditDetails self, AuditDetails other) => Mapper.isEqual(self.createdBy, other.createdBy) && Mapper.isEqual(self.lastModifiedBy, other.lastModifiedBy) && Mapper.isEqual(self.createdTime, other.createdTime) && Mapper.isEqual(self.lastModifiedTime, other.lastModifiedTime);

  @override Function get typeFactory => (f) => f<AuditDetails>();
}

extension AuditDetailsMapperExtension  on AuditDetails {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  AuditDetailsCopyWith<AuditDetails> get copyWith => AuditDetailsCopyWith(this, $identity);
}

abstract class AuditDetailsCopyWith<$R> {
  factory AuditDetailsCopyWith(AuditDetails value, Then<AuditDetails, $R> then) = _AuditDetailsCopyWithImpl<$R>;
  $R call({String? createdBy, int? createdTime, String? lastModifiedBy, int? lastModifiedTime});
  $R apply(AuditDetails Function(AuditDetails) transform);
}

class _AuditDetailsCopyWithImpl<$R> extends BaseCopyWith<AuditDetails, $R> implements AuditDetailsCopyWith<$R> {
  _AuditDetailsCopyWithImpl(AuditDetails value, Then<AuditDetails, $R> then) : super(value, then);

  @override $R call({String? createdBy, int? createdTime, Object? lastModifiedBy = $none, Object? lastModifiedTime = $none}) => $then(AuditDetails(createdBy: createdBy ?? $value.createdBy, createdTime: createdTime ?? $value.createdTime, lastModifiedBy: or(lastModifiedBy, $value.lastModifiedBy), lastModifiedTime: or(lastModifiedTime, $value.lastModifiedTime)));
}

class AddressSearchModelMapper extends BaseMapper<AddressSearchModel> {
  AddressSearchModelMapper._();

  @override Function get decoder => decode;
  AddressSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AddressSearchModel fromMap(Map<String, dynamic> map) => AddressSearchModel(id: Mapper.i.$getOpt(map, 'id'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (AddressSearchModel v) => encode(v);
  dynamic encode(AddressSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(AddressSearchModel a) => {if (Mapper.i.$enc(a.id, 'id') != null) 'id': Mapper.i.$enc(a.id, 'id'), if (Mapper.i.$enc(a.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(a.tenantId, 'tenantId'), if (Mapper.i.$enc(a.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(a.isDeleted, 'isDeleted'), if (Mapper.i.$enc(a.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(a.boundaryCode, 'boundaryCode')};

  @override String stringify(AddressSearchModel self) => 'AddressSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(AddressSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(AddressSearchModel self, AddressSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<AddressSearchModel>();
}

extension AddressSearchModelMapperExtension  on AddressSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  AddressSearchModelCopyWith<AddressSearchModel> get copyWith => AddressSearchModelCopyWith(this, $identity);
}

abstract class AddressSearchModelCopyWith<$R> {
  factory AddressSearchModelCopyWith(AddressSearchModel value, Then<AddressSearchModel, $R> then) = _AddressSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(AddressSearchModel Function(AddressSearchModel) transform);
}

class _AddressSearchModelCopyWithImpl<$R> extends BaseCopyWith<AddressSearchModel, $R> implements AddressSearchModelCopyWith<$R> {
  _AddressSearchModelCopyWithImpl(AddressSearchModel value, Then<AddressSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(AddressSearchModel(id: or(id, $value.id), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class AddressModelMapper extends BaseMapper<AddressModel> {
  AddressModelMapper._();

  @override Function get decoder => decode;
  AddressModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AddressModel fromMap(Map<String, dynamic> map) => AddressModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), relatedClientReferenceId: Mapper.i.$getOpt(map, 'relatedClientReferenceId'), doorNo: Mapper.i.$getOpt(map, 'doorNo'), latitude: Mapper.i.$getOpt(map, 'latitude'), longitude: Mapper.i.$getOpt(map, 'longitude'), locationAccuracy: Mapper.i.$getOpt(map, 'locationAccuracy'), addressLine1: Mapper.i.$getOpt(map, 'addressLine1'), addressLine2: Mapper.i.$getOpt(map, 'addressLine2'), landmark: Mapper.i.$getOpt(map, 'landmark'), city: Mapper.i.$getOpt(map, 'city'), pincode: Mapper.i.$getOpt(map, 'pincode'), buildingName: Mapper.i.$getOpt(map, 'buildingName'), street: Mapper.i.$getOpt(map, 'street'), boundaryType: Mapper.i.$getOpt(map, 'boundaryType'), boundary: Mapper.i.$getOpt(map, 'boundary'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), type: Mapper.i.$getOpt(map, 'type'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (AddressModel v) => encode(v);
  dynamic encode(AddressModel v) => toMap(v);
  Map<String, dynamic> toMap(AddressModel a) => {if (Mapper.i.$enc(a.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(a.additionalFields, 'additionalFields'), if (Mapper.i.$enc(a.id, 'id') != null) 'id': Mapper.i.$enc(a.id, 'id'), if (Mapper.i.$enc(a.relatedClientReferenceId, 'relatedClientReferenceId') != null) 'relatedClientReferenceId': Mapper.i.$enc(a.relatedClientReferenceId, 'relatedClientReferenceId'), if (Mapper.i.$enc(a.doorNo, 'doorNo') != null) 'doorNo': Mapper.i.$enc(a.doorNo, 'doorNo'), if (Mapper.i.$enc(a.latitude, 'latitude') != null) 'latitude': Mapper.i.$enc(a.latitude, 'latitude'), if (Mapper.i.$enc(a.longitude, 'longitude') != null) 'longitude': Mapper.i.$enc(a.longitude, 'longitude'), if (Mapper.i.$enc(a.locationAccuracy, 'locationAccuracy') != null) 'locationAccuracy': Mapper.i.$enc(a.locationAccuracy, 'locationAccuracy'), if (Mapper.i.$enc(a.addressLine1, 'addressLine1') != null) 'addressLine1': Mapper.i.$enc(a.addressLine1, 'addressLine1'), if (Mapper.i.$enc(a.addressLine2, 'addressLine2') != null) 'addressLine2': Mapper.i.$enc(a.addressLine2, 'addressLine2'), if (Mapper.i.$enc(a.landmark, 'landmark') != null) 'landmark': Mapper.i.$enc(a.landmark, 'landmark'), if (Mapper.i.$enc(a.city, 'city') != null) 'city': Mapper.i.$enc(a.city, 'city'), if (Mapper.i.$enc(a.pincode, 'pincode') != null) 'pincode': Mapper.i.$enc(a.pincode, 'pincode'), if (Mapper.i.$enc(a.buildingName, 'buildingName') != null) 'buildingName': Mapper.i.$enc(a.buildingName, 'buildingName'), if (Mapper.i.$enc(a.street, 'street') != null) 'street': Mapper.i.$enc(a.street, 'street'), if (Mapper.i.$enc(a.boundaryType, 'boundaryType') != null) 'boundaryType': Mapper.i.$enc(a.boundaryType, 'boundaryType'), if (Mapper.i.$enc(a.boundary, 'boundary') != null) 'boundary': Mapper.i.$enc(a.boundary, 'boundary'), if (Mapper.i.$enc(a.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(a.tenantId, 'tenantId'), if (Mapper.i.$enc(a.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(a.isDeleted, 'isDeleted'), if (Mapper.i.$enc(a.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(a.rowVersion, 'rowVersion'), if (Mapper.i.$enc(a.type, 'type') != null) 'type': Mapper.i.$enc(a.type, 'type'), if (Mapper.i.$enc(a.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(a.auditDetails, 'auditDetails')};

  @override String stringify(AddressModel self) => 'AddressModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, relatedClientReferenceId: ${Mapper.asString(self.relatedClientReferenceId)}, doorNo: ${Mapper.asString(self.doorNo)}, latitude: ${Mapper.asString(self.latitude)}, longitude: ${Mapper.asString(self.longitude)}, locationAccuracy: ${Mapper.asString(self.locationAccuracy)}, addressLine1: ${Mapper.asString(self.addressLine1)}, addressLine2: ${Mapper.asString(self.addressLine2)}, landmark: ${Mapper.asString(self.landmark)}, city: ${Mapper.asString(self.city)}, pincode: ${Mapper.asString(self.pincode)}, buildingName: ${Mapper.asString(self.buildingName)}, street: ${Mapper.asString(self.street)}, boundaryType: ${Mapper.asString(self.boundaryType)}, boundary: ${Mapper.asString(self.boundary)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, type: ${Mapper.asString(self.type)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(AddressModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.relatedClientReferenceId) ^ Mapper.hash(self.doorNo) ^ Mapper.hash(self.latitude) ^ Mapper.hash(self.longitude) ^ Mapper.hash(self.locationAccuracy) ^ Mapper.hash(self.addressLine1) ^ Mapper.hash(self.addressLine2) ^ Mapper.hash(self.landmark) ^ Mapper.hash(self.city) ^ Mapper.hash(self.pincode) ^ Mapper.hash(self.buildingName) ^ Mapper.hash(self.street) ^ Mapper.hash(self.boundaryType) ^ Mapper.hash(self.boundary) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.type) ^ Mapper.hash(self.additionalFields);
  @override bool equals(AddressModel self, AddressModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.relatedClientReferenceId, other.relatedClientReferenceId) && Mapper.isEqual(self.doorNo, other.doorNo) && Mapper.isEqual(self.latitude, other.latitude) && Mapper.isEqual(self.longitude, other.longitude) && Mapper.isEqual(self.locationAccuracy, other.locationAccuracy) && Mapper.isEqual(self.addressLine1, other.addressLine1) && Mapper.isEqual(self.addressLine2, other.addressLine2) && Mapper.isEqual(self.landmark, other.landmark) && Mapper.isEqual(self.city, other.city) && Mapper.isEqual(self.pincode, other.pincode) && Mapper.isEqual(self.buildingName, other.buildingName) && Mapper.isEqual(self.street, other.street) && Mapper.isEqual(self.boundaryType, other.boundaryType) && Mapper.isEqual(self.boundary, other.boundary) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.type, other.type) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<AddressModel>();
}

extension AddressModelMapperExtension  on AddressModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  AddressModelCopyWith<AddressModel> get copyWith => AddressModelCopyWith(this, $identity);
}

abstract class AddressModelCopyWith<$R> {
  factory AddressModelCopyWith(AddressModel value, Then<AddressModel, $R> then) = _AddressModelCopyWithImpl<$R>;
  AddressAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({AddressAdditionalFields? additionalFields, String? id, String? relatedClientReferenceId, String? doorNo, double? latitude, double? longitude, double? locationAccuracy, String? addressLine1, String? addressLine2, String? landmark, String? city, String? pincode, String? buildingName, String? street, String? boundaryType, String? boundary, String? tenantId, bool? isDeleted, int? rowVersion, AddressType? type, AuditDetails? auditDetails});
  $R apply(AddressModel Function(AddressModel) transform);
}

class _AddressModelCopyWithImpl<$R> extends BaseCopyWith<AddressModel, $R> implements AddressModelCopyWith<$R> {
  _AddressModelCopyWithImpl(AddressModel value, Then<AddressModel, $R> then) : super(value, then);

  @override AddressAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? AddressAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? relatedClientReferenceId = $none, Object? doorNo = $none, Object? latitude = $none, Object? longitude = $none, Object? locationAccuracy = $none, Object? addressLine1 = $none, Object? addressLine2 = $none, Object? landmark = $none, Object? city = $none, Object? pincode = $none, Object? buildingName = $none, Object? street = $none, Object? boundaryType = $none, Object? boundary = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? type = $none, Object? auditDetails = $none}) => $then(AddressModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), relatedClientReferenceId: or(relatedClientReferenceId, $value.relatedClientReferenceId), doorNo: or(doorNo, $value.doorNo), latitude: or(latitude, $value.latitude), longitude: or(longitude, $value.longitude), locationAccuracy: or(locationAccuracy, $value.locationAccuracy), addressLine1: or(addressLine1, $value.addressLine1), addressLine2: or(addressLine2, $value.addressLine2), landmark: or(landmark, $value.landmark), city: or(city, $value.city), pincode: or(pincode, $value.pincode), buildingName: or(buildingName, $value.buildingName), street: or(street, $value.street), boundaryType: or(boundaryType, $value.boundaryType), boundary: or(boundary, $value.boundary), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), type: or(type, $value.type), auditDetails: or(auditDetails, $value.auditDetails)));
}

class AddressAdditionalFieldsMapper extends BaseMapper<AddressAdditionalFields> {
  AddressAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  AddressAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AddressAdditionalFields fromMap(Map<String, dynamic> map) => AddressAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Address', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (AddressAdditionalFields v) => encode(v);
  dynamic encode(AddressAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(AddressAdditionalFields a) => {'schema': Mapper.i.$enc(a.schema, 'schema'), 'version': Mapper.i.$enc(a.version, 'version'), 'fields': Mapper.i.$enc(a.fields, 'fields')};

  @override String stringify(AddressAdditionalFields self) => 'AddressAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(AddressAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(AddressAdditionalFields self, AddressAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<AddressAdditionalFields>();
}

extension AddressAdditionalFieldsMapperExtension  on AddressAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  AddressAdditionalFieldsCopyWith<AddressAdditionalFields> get copyWith => AddressAdditionalFieldsCopyWith(this, $identity);
}

abstract class AddressAdditionalFieldsCopyWith<$R> {
  factory AddressAdditionalFieldsCopyWith(AddressAdditionalFields value, Then<AddressAdditionalFields, $R> then) = _AddressAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(AddressAdditionalFields Function(AddressAdditionalFields) transform);
}

class _AddressAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<AddressAdditionalFields, $R> implements AddressAdditionalFieldsCopyWith<$R> {
  _AddressAdditionalFieldsCopyWithImpl(AddressAdditionalFields value, Then<AddressAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(AddressAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class AttributesSearchModelMapper extends BaseMapper<AttributesSearchModel> {
  AttributesSearchModelMapper._();

  @override Function get decoder => decode;
  AttributesSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AttributesSearchModel fromMap(Map<String, dynamic> map) => AttributesSearchModel(id: Mapper.i.$getOpt(map, 'id'), dataType: Mapper.i.$getOpt(map, 'dataType'), referenceId: Mapper.i.$getOpt(map, 'referenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), code: Mapper.i.$getOpt(map, 'code'), isActive: Mapper.i.$getOpt(map, 'isActive'), required: Mapper.i.$getOpt(map, 'required'), regex: Mapper.i.$getOpt(map, 'regex'), order: Mapper.i.$getOpt(map, 'order'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (AttributesSearchModel v) => encode(v);
  dynamic encode(AttributesSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(AttributesSearchModel a) => {if (Mapper.i.$enc(a.id, 'id') != null) 'id': Mapper.i.$enc(a.id, 'id'), if (Mapper.i.$enc(a.dataType, 'dataType') != null) 'dataType': Mapper.i.$enc(a.dataType, 'dataType'), if (Mapper.i.$enc(a.referenceId, 'referenceId') != null) 'referenceId': Mapper.i.$enc(a.referenceId, 'referenceId'), if (Mapper.i.$enc(a.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(a.tenantId, 'tenantId'), if (Mapper.i.$enc(a.code, 'code') != null) 'code': Mapper.i.$enc(a.code, 'code'), if (Mapper.i.$enc(a.isActive, 'isActive') != null) 'isActive': Mapper.i.$enc(a.isActive, 'isActive'), if (Mapper.i.$enc(a.required, 'required') != null) 'required': Mapper.i.$enc(a.required, 'required'), if (Mapper.i.$enc(a.regex, 'regex') != null) 'regex': Mapper.i.$enc(a.regex, 'regex'), if (Mapper.i.$enc(a.order, 'order') != null) 'order': Mapper.i.$enc(a.order, 'order'), if (Mapper.i.$enc(a.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(a.isDeleted, 'isDeleted'), if (Mapper.i.$enc(a.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(a.boundaryCode, 'boundaryCode')};

  @override String stringify(AttributesSearchModel self) => 'AttributesSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, dataType: ${Mapper.asString(self.dataType)}, referenceId: ${Mapper.asString(self.referenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, code: ${Mapper.asString(self.code)}, isActive: ${Mapper.asString(self.isActive)}, required: ${Mapper.asString(self.required)}, regex: ${Mapper.asString(self.regex)}, order: ${Mapper.asString(self.order)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(AttributesSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.dataType) ^ Mapper.hash(self.referenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.code) ^ Mapper.hash(self.isActive) ^ Mapper.hash(self.required) ^ Mapper.hash(self.regex) ^ Mapper.hash(self.order) ^ Mapper.hash(self.isDeleted);
  @override bool equals(AttributesSearchModel self, AttributesSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.dataType, other.dataType) && Mapper.isEqual(self.referenceId, other.referenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.code, other.code) && Mapper.isEqual(self.isActive, other.isActive) && Mapper.isEqual(self.required, other.required) && Mapper.isEqual(self.regex, other.regex) && Mapper.isEqual(self.order, other.order) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<AttributesSearchModel>();
}

extension AttributesSearchModelMapperExtension  on AttributesSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  AttributesSearchModelCopyWith<AttributesSearchModel> get copyWith => AttributesSearchModelCopyWith(this, $identity);
}

abstract class AttributesSearchModelCopyWith<$R> {
  factory AttributesSearchModelCopyWith(AttributesSearchModel value, Then<AttributesSearchModel, $R> then) = _AttributesSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? dataType, String? referenceId, String? tenantId, String? code, String? isActive, bool? required, String? regex, int? order, bool? isDeleted, String? boundaryCode});
  $R apply(AttributesSearchModel Function(AttributesSearchModel) transform);
}

class _AttributesSearchModelCopyWithImpl<$R> extends BaseCopyWith<AttributesSearchModel, $R> implements AttributesSearchModelCopyWith<$R> {
  _AttributesSearchModelCopyWithImpl(AttributesSearchModel value, Then<AttributesSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? dataType = $none, Object? referenceId = $none, Object? tenantId = $none, Object? code = $none, Object? isActive = $none, Object? required = $none, Object? regex = $none, Object? order = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(AttributesSearchModel(id: or(id, $value.id), dataType: or(dataType, $value.dataType), referenceId: or(referenceId, $value.referenceId), tenantId: or(tenantId, $value.tenantId), code: or(code, $value.code), isActive: or(isActive, $value.isActive), required: or(required, $value.required), regex: or(regex, $value.regex), order: or(order, $value.order), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class AttributesModelMapper extends BaseMapper<AttributesModel> {
  AttributesModelMapper._();

  @override Function get decoder => decode;
  AttributesModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AttributesModel fromMap(Map<String, dynamic> map) => AttributesModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), dataType: Mapper.i.$getOpt(map, 'dataType'), referenceId: Mapper.i.$getOpt(map, 'referenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), code: Mapper.i.$getOpt(map, 'code'), values: Mapper.i.$getOpt(map, 'values'), isActive: Mapper.i.$getOpt(map, 'isActive'), required: Mapper.i.$getOpt(map, 'required'), regex: Mapper.i.$getOpt(map, 'regex'), order: Mapper.i.$getOpt(map, 'order'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (AttributesModel v) => encode(v);
  dynamic encode(AttributesModel v) => toMap(v);
  Map<String, dynamic> toMap(AttributesModel a) => {if (Mapper.i.$enc(a.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(a.additionalFields, 'additionalFields'), if (Mapper.i.$enc(a.id, 'id') != null) 'id': Mapper.i.$enc(a.id, 'id'), if (Mapper.i.$enc(a.dataType, 'dataType') != null) 'dataType': Mapper.i.$enc(a.dataType, 'dataType'), if (Mapper.i.$enc(a.referenceId, 'referenceId') != null) 'referenceId': Mapper.i.$enc(a.referenceId, 'referenceId'), if (Mapper.i.$enc(a.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(a.tenantId, 'tenantId'), if (Mapper.i.$enc(a.code, 'code') != null) 'code': Mapper.i.$enc(a.code, 'code'), if (Mapper.i.$enc(a.values, 'values') != null) 'values': Mapper.i.$enc(a.values, 'values'), if (Mapper.i.$enc(a.isActive, 'isActive') != null) 'isActive': Mapper.i.$enc(a.isActive, 'isActive'), if (Mapper.i.$enc(a.required, 'required') != null) 'required': Mapper.i.$enc(a.required, 'required'), if (Mapper.i.$enc(a.regex, 'regex') != null) 'regex': Mapper.i.$enc(a.regex, 'regex'), if (Mapper.i.$enc(a.order, 'order') != null) 'order': Mapper.i.$enc(a.order, 'order'), if (Mapper.i.$enc(a.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(a.isDeleted, 'isDeleted'), if (Mapper.i.$enc(a.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(a.rowVersion, 'rowVersion'), if (Mapper.i.$enc(a.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(a.auditDetails, 'auditDetails')};

  @override String stringify(AttributesModel self) => 'AttributesModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, dataType: ${Mapper.asString(self.dataType)}, referenceId: ${Mapper.asString(self.referenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, code: ${Mapper.asString(self.code)}, values: ${Mapper.asString(self.values)}, isActive: ${Mapper.asString(self.isActive)}, required: ${Mapper.asString(self.required)}, regex: ${Mapper.asString(self.regex)}, order: ${Mapper.asString(self.order)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(AttributesModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.dataType) ^ Mapper.hash(self.referenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.code) ^ Mapper.hash(self.values) ^ Mapper.hash(self.isActive) ^ Mapper.hash(self.required) ^ Mapper.hash(self.regex) ^ Mapper.hash(self.order) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(AttributesModel self, AttributesModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.dataType, other.dataType) && Mapper.isEqual(self.referenceId, other.referenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.code, other.code) && Mapper.isEqual(self.values, other.values) && Mapper.isEqual(self.isActive, other.isActive) && Mapper.isEqual(self.required, other.required) && Mapper.isEqual(self.regex, other.regex) && Mapper.isEqual(self.order, other.order) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<AttributesModel>();
}

extension AttributesModelMapperExtension  on AttributesModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  AttributesModelCopyWith<AttributesModel> get copyWith => AttributesModelCopyWith(this, $identity);
}

abstract class AttributesModelCopyWith<$R> {
  factory AttributesModelCopyWith(AttributesModel value, Then<AttributesModel, $R> then) = _AttributesModelCopyWithImpl<$R>;
  AttributesAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({AttributesAdditionalFields? additionalFields, String? id, String? dataType, String? referenceId, String? tenantId, String? code, List<String>? values, String? isActive, bool? required, String? regex, int? order, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(AttributesModel Function(AttributesModel) transform);
}

class _AttributesModelCopyWithImpl<$R> extends BaseCopyWith<AttributesModel, $R> implements AttributesModelCopyWith<$R> {
  _AttributesModelCopyWithImpl(AttributesModel value, Then<AttributesModel, $R> then) : super(value, then);

  @override AttributesAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? AttributesAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? dataType = $none, Object? referenceId = $none, Object? tenantId = $none, Object? code = $none, Object? values = $none, Object? isActive = $none, Object? required = $none, Object? regex = $none, Object? order = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(AttributesModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), dataType: or(dataType, $value.dataType), referenceId: or(referenceId, $value.referenceId), tenantId: or(tenantId, $value.tenantId), code: or(code, $value.code), values: or(values, $value.values), isActive: or(isActive, $value.isActive), required: or(required, $value.required), regex: or(regex, $value.regex), order: or(order, $value.order), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class AttributesAdditionalFieldsMapper extends BaseMapper<AttributesAdditionalFields> {
  AttributesAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  AttributesAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AttributesAdditionalFields fromMap(Map<String, dynamic> map) => AttributesAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Attributes', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (AttributesAdditionalFields v) => encode(v);
  dynamic encode(AttributesAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(AttributesAdditionalFields a) => {'schema': Mapper.i.$enc(a.schema, 'schema'), 'version': Mapper.i.$enc(a.version, 'version'), 'fields': Mapper.i.$enc(a.fields, 'fields')};

  @override String stringify(AttributesAdditionalFields self) => 'AttributesAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(AttributesAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(AttributesAdditionalFields self, AttributesAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<AttributesAdditionalFields>();
}

extension AttributesAdditionalFieldsMapperExtension  on AttributesAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  AttributesAdditionalFieldsCopyWith<AttributesAdditionalFields> get copyWith => AttributesAdditionalFieldsCopyWith(this, $identity);
}

abstract class AttributesAdditionalFieldsCopyWith<$R> {
  factory AttributesAdditionalFieldsCopyWith(AttributesAdditionalFields value, Then<AttributesAdditionalFields, $R> then) = _AttributesAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(AttributesAdditionalFields Function(AttributesAdditionalFields) transform);
}

class _AttributesAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<AttributesAdditionalFields, $R> implements AttributesAdditionalFieldsCopyWith<$R> {
  _AttributesAdditionalFieldsCopyWithImpl(AttributesAdditionalFields value, Then<AttributesAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(AttributesAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class BoundarySearchModelMapper extends BaseMapper<BoundarySearchModel> {
  BoundarySearchModelMapper._();

  @override Function get decoder => decode;
  BoundarySearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  BoundarySearchModel fromMap(Map<String, dynamic> map) => BoundarySearchModel(boundaryType: Mapper.i.$getOpt(map, 'boundaryType'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), code: Mapper.i.$getOpt(map, 'code'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (BoundarySearchModel v) => encode(v);
  dynamic encode(BoundarySearchModel v) => toMap(v);
  Map<String, dynamic> toMap(BoundarySearchModel b) => {if (Mapper.i.$enc(b.boundaryType, 'boundaryType') != null) 'boundaryType': Mapper.i.$enc(b.boundaryType, 'boundaryType'), if (Mapper.i.$enc(b.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(b.tenantId, 'tenantId'), if (Mapper.i.$enc(b.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(b.isDeleted, 'isDeleted'), if (Mapper.i.$enc(b.code, 'code') != null) 'code': Mapper.i.$enc(b.code, 'code'), if (Mapper.i.$enc(b.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(b.boundaryCode, 'boundaryCode')};

  @override String stringify(BoundarySearchModel self) => 'BoundarySearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, boundaryType: ${Mapper.asString(self.boundaryType)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, code: ${Mapper.asString(self.code)})';
  @override int hash(BoundarySearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.boundaryType) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.code);
  @override bool equals(BoundarySearchModel self, BoundarySearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.boundaryType, other.boundaryType) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.code, other.code);

  @override Function get typeFactory => (f) => f<BoundarySearchModel>();
}

extension BoundarySearchModelMapperExtension  on BoundarySearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  BoundarySearchModelCopyWith<BoundarySearchModel> get copyWith => BoundarySearchModelCopyWith(this, $identity);
}

abstract class BoundarySearchModelCopyWith<$R> {
  factory BoundarySearchModelCopyWith(BoundarySearchModel value, Then<BoundarySearchModel, $R> then) = _BoundarySearchModelCopyWithImpl<$R>;
  $R call({String? boundaryType, String? tenantId, bool? isDeleted, String? code, String? boundaryCode});
  $R apply(BoundarySearchModel Function(BoundarySearchModel) transform);
}

class _BoundarySearchModelCopyWithImpl<$R> extends BaseCopyWith<BoundarySearchModel, $R> implements BoundarySearchModelCopyWith<$R> {
  _BoundarySearchModelCopyWithImpl(BoundarySearchModel value, Then<BoundarySearchModel, $R> then) : super(value, then);

  @override $R call({Object? boundaryType = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? code = $none, Object? boundaryCode = $none}) => $then(BoundarySearchModel(boundaryType: or(boundaryType, $value.boundaryType), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), code: or(code, $value.code), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class BoundaryModelMapper extends BaseMapper<BoundaryModel> {
  BoundaryModelMapper._();

  @override Function get decoder => decode;
  BoundaryModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  BoundaryModel fromMap(Map<String, dynamic> map) => BoundaryModel(code: Mapper.i.$getOpt(map, 'code'), name: Mapper.i.$getOpt(map, 'name'), label: Mapper.i.$getOpt(map, 'label'), latitude: Mapper.i.$getOpt(map, 'latitude'), longitude: Mapper.i.$getOpt(map, 'longitude'), materializedPath: Mapper.i.$getOpt(map, 'materializedPath'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryNum: Mapper.i.$getOpt(map, 'boundaryNum'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), children: Mapper.i.$getOpt(map, 'children') ?? const [], auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (BoundaryModel v) => encode(v);
  dynamic encode(BoundaryModel v) => toMap(v);
  Map<String, dynamic> toMap(BoundaryModel b) => {if (Mapper.i.$enc(b.code, 'code') != null) 'code': Mapper.i.$enc(b.code, 'code'), if (Mapper.i.$enc(b.name, 'name') != null) 'name': Mapper.i.$enc(b.name, 'name'), if (Mapper.i.$enc(b.label, 'label') != null) 'label': Mapper.i.$enc(b.label, 'label'), if (Mapper.i.$enc(b.latitude, 'latitude') != null) 'latitude': Mapper.i.$enc(b.latitude, 'latitude'), if (Mapper.i.$enc(b.longitude, 'longitude') != null) 'longitude': Mapper.i.$enc(b.longitude, 'longitude'), if (Mapper.i.$enc(b.materializedPath, 'materializedPath') != null) 'materializedPath': Mapper.i.$enc(b.materializedPath, 'materializedPath'), if (Mapper.i.$enc(b.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(b.tenantId, 'tenantId'), if (Mapper.i.$enc(b.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(b.isDeleted, 'isDeleted'), if (Mapper.i.$enc(b.boundaryNum, 'boundaryNum') != null) 'boundaryNum': Mapper.i.$enc(b.boundaryNum, 'boundaryNum'), if (Mapper.i.$enc(b.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(b.rowVersion, 'rowVersion'), 'children': Mapper.i.$enc(b.children, 'children'), if (Mapper.i.$enc(b.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(b.auditDetails, 'auditDetails')};

  @override String stringify(BoundaryModel self) => 'BoundaryModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, code: ${Mapper.asString(self.code)}, name: ${Mapper.asString(self.name)}, label: ${Mapper.asString(self.label)}, latitude: ${Mapper.asString(self.latitude)}, boundaryNum: ${Mapper.asString(self.boundaryNum)}, longitude: ${Mapper.asString(self.longitude)}, materializedPath: ${Mapper.asString(self.materializedPath)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, children: ${Mapper.asString(self.children)})';
  @override int hash(BoundaryModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.code) ^ Mapper.hash(self.name) ^ Mapper.hash(self.label) ^ Mapper.hash(self.latitude) ^ Mapper.hash(self.boundaryNum) ^ Mapper.hash(self.longitude) ^ Mapper.hash(self.materializedPath) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.children);
  @override bool equals(BoundaryModel self, BoundaryModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.code, other.code) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.label, other.label) && Mapper.isEqual(self.latitude, other.latitude) && Mapper.isEqual(self.boundaryNum, other.boundaryNum) && Mapper.isEqual(self.longitude, other.longitude) && Mapper.isEqual(self.materializedPath, other.materializedPath) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.children, other.children);

  @override Function get typeFactory => (f) => f<BoundaryModel>();
}

extension BoundaryModelMapperExtension  on BoundaryModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  BoundaryModelCopyWith<BoundaryModel> get copyWith => BoundaryModelCopyWith(this, $identity);
}

abstract class BoundaryModelCopyWith<$R> {
  factory BoundaryModelCopyWith(BoundaryModel value, Then<BoundaryModel, $R> then) = _BoundaryModelCopyWithImpl<$R>;
  ListCopyWith<$R, BoundaryModel, BoundaryModelCopyWith<$R>> get children;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({String? code, String? name, String? label, String? latitude, String? longitude, String? materializedPath, String? tenantId, bool? isDeleted, int? boundaryNum, int? rowVersion, List<BoundaryModel>? children, AuditDetails? auditDetails});
  $R apply(BoundaryModel Function(BoundaryModel) transform);
}

class _BoundaryModelCopyWithImpl<$R> extends BaseCopyWith<BoundaryModel, $R> implements BoundaryModelCopyWith<$R> {
  _BoundaryModelCopyWithImpl(BoundaryModel value, Then<BoundaryModel, $R> then) : super(value, then);

  @override ListCopyWith<$R, BoundaryModel, BoundaryModelCopyWith<$R>> get children => ListCopyWith($value.children, (v, t) => BoundaryModelCopyWith(v, t), (v) => call(children: v));
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? code = $none, Object? name = $none, Object? label = $none, Object? latitude = $none, Object? longitude = $none, Object? materializedPath = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryNum = $none, Object? rowVersion = $none, List<BoundaryModel>? children, Object? auditDetails = $none}) => $then(BoundaryModel(code: or(code, $value.code), name: or(name, $value.name), label: or(label, $value.label), latitude: or(latitude, $value.latitude), longitude: or(longitude, $value.longitude), materializedPath: or(materializedPath, $value.materializedPath), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryNum: or(boundaryNum, $value.boundaryNum), rowVersion: or(rowVersion, $value.rowVersion), children: children ?? $value.children, auditDetails: or(auditDetails, $value.auditDetails)));
}

class DocumentSearchModelMapper extends BaseMapper<DocumentSearchModel> {
  DocumentSearchModelMapper._();

  @override Function get decoder => decode;
  DocumentSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  DocumentSearchModel fromMap(Map<String, dynamic> map) => DocumentSearchModel(clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (DocumentSearchModel v) => encode(v);
  dynamic encode(DocumentSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(DocumentSearchModel d) => {if (Mapper.i.$enc(d.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(d.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(d.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(d.tenantId, 'tenantId'), if (Mapper.i.$enc(d.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(d.isDeleted, 'isDeleted'), if (Mapper.i.$enc(d.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(d.boundaryCode, 'boundaryCode')};

  @override String stringify(DocumentSearchModel self) => 'DocumentSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(DocumentSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(DocumentSearchModel self, DocumentSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<DocumentSearchModel>();
}

extension DocumentSearchModelMapperExtension  on DocumentSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  DocumentSearchModelCopyWith<DocumentSearchModel> get copyWith => DocumentSearchModelCopyWith(this, $identity);
}

abstract class DocumentSearchModelCopyWith<$R> {
  factory DocumentSearchModelCopyWith(DocumentSearchModel value, Then<DocumentSearchModel, $R> then) = _DocumentSearchModelCopyWithImpl<$R>;
  $R call({List<String>? clientReferenceId, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(DocumentSearchModel Function(DocumentSearchModel) transform);
}

class _DocumentSearchModelCopyWithImpl<$R> extends BaseCopyWith<DocumentSearchModel, $R> implements DocumentSearchModelCopyWith<$R> {
  _DocumentSearchModelCopyWithImpl(DocumentSearchModel value, Then<DocumentSearchModel, $R> then) : super(value, then);

  @override $R call({Object? clientReferenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(DocumentSearchModel(clientReferenceId: or(clientReferenceId, $value.clientReferenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class DocumentModelMapper extends BaseMapper<DocumentModel> {
  DocumentModelMapper._();

  @override Function get decoder => decode;
  DocumentModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  DocumentModel fromMap(Map<String, dynamic> map) => DocumentModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), documentType: Mapper.i.$getOpt(map, 'documentType'), fileStoreId: Mapper.i.$getOpt(map, 'fileStoreId'), documentUid: Mapper.i.$getOpt(map, 'documentUid'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (DocumentModel v) => encode(v);
  dynamic encode(DocumentModel v) => toMap(v);
  Map<String, dynamic> toMap(DocumentModel d) => {if (Mapper.i.$enc(d.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(d.additionalFields, 'additionalFields'), if (Mapper.i.$enc(d.id, 'id') != null) 'id': Mapper.i.$enc(d.id, 'id'), if (Mapper.i.$enc(d.documentType, 'documentType') != null) 'documentType': Mapper.i.$enc(d.documentType, 'documentType'), if (Mapper.i.$enc(d.fileStoreId, 'fileStoreId') != null) 'fileStoreId': Mapper.i.$enc(d.fileStoreId, 'fileStoreId'), if (Mapper.i.$enc(d.documentUid, 'documentUid') != null) 'documentUid': Mapper.i.$enc(d.documentUid, 'documentUid'), 'clientReferenceId': Mapper.i.$enc(d.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(d.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(d.tenantId, 'tenantId'), if (Mapper.i.$enc(d.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(d.isDeleted, 'isDeleted'), if (Mapper.i.$enc(d.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(d.rowVersion, 'rowVersion'), if (Mapper.i.$enc(d.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(d.auditDetails, 'auditDetails')};

  @override String stringify(DocumentModel self) => 'DocumentModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, documentType: ${Mapper.asString(self.documentType)}, fileStoreId: ${Mapper.asString(self.fileStoreId)}, documentUid: ${Mapper.asString(self.documentUid)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(DocumentModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.documentType) ^ Mapper.hash(self.fileStoreId) ^ Mapper.hash(self.documentUid) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(DocumentModel self, DocumentModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.documentType, other.documentType) && Mapper.isEqual(self.fileStoreId, other.fileStoreId) && Mapper.isEqual(self.documentUid, other.documentUid) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<DocumentModel>();
}

extension DocumentModelMapperExtension  on DocumentModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  DocumentModelCopyWith<DocumentModel> get copyWith => DocumentModelCopyWith(this, $identity);
}

abstract class DocumentModelCopyWith<$R> {
  factory DocumentModelCopyWith(DocumentModel value, Then<DocumentModel, $R> then) = _DocumentModelCopyWithImpl<$R>;
  DocumentAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({DocumentAdditionalFields? additionalFields, String? id, String? documentType, String? fileStoreId, String? documentUid, String? clientReferenceId, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(DocumentModel Function(DocumentModel) transform);
}

class _DocumentModelCopyWithImpl<$R> extends BaseCopyWith<DocumentModel, $R> implements DocumentModelCopyWith<$R> {
  _DocumentModelCopyWithImpl(DocumentModel value, Then<DocumentModel, $R> then) : super(value, then);

  @override DocumentAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? DocumentAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? documentType = $none, Object? fileStoreId = $none, Object? documentUid = $none, String? clientReferenceId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(DocumentModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), documentType: or(documentType, $value.documentType), fileStoreId: or(fileStoreId, $value.fileStoreId), documentUid: or(documentUid, $value.documentUid), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class DocumentAdditionalFieldsMapper extends BaseMapper<DocumentAdditionalFields> {
  DocumentAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  DocumentAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  DocumentAdditionalFields fromMap(Map<String, dynamic> map) => DocumentAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Document', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (DocumentAdditionalFields v) => encode(v);
  dynamic encode(DocumentAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(DocumentAdditionalFields d) => {'schema': Mapper.i.$enc(d.schema, 'schema'), 'version': Mapper.i.$enc(d.version, 'version'), 'fields': Mapper.i.$enc(d.fields, 'fields')};

  @override String stringify(DocumentAdditionalFields self) => 'DocumentAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(DocumentAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(DocumentAdditionalFields self, DocumentAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<DocumentAdditionalFields>();
}

extension DocumentAdditionalFieldsMapperExtension  on DocumentAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  DocumentAdditionalFieldsCopyWith<DocumentAdditionalFields> get copyWith => DocumentAdditionalFieldsCopyWith(this, $identity);
}

abstract class DocumentAdditionalFieldsCopyWith<$R> {
  factory DocumentAdditionalFieldsCopyWith(DocumentAdditionalFields value, Then<DocumentAdditionalFields, $R> then) = _DocumentAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(DocumentAdditionalFields Function(DocumentAdditionalFields) transform);
}

class _DocumentAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<DocumentAdditionalFields, $R> implements DocumentAdditionalFieldsCopyWith<$R> {
  _DocumentAdditionalFieldsCopyWithImpl(DocumentAdditionalFields value, Then<DocumentAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(DocumentAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class FacilitySearchModelMapper extends BaseMapper<FacilitySearchModel> {
  FacilitySearchModelMapper._();

  @override Function get decoder => decode;
  FacilitySearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  FacilitySearchModel fromMap(Map<String, dynamic> map) => FacilitySearchModel(id: Mapper.i.$getOpt(map, 'id'), name: Mapper.i.$getOpt(map, 'name'), isPermanent: Mapper.i.$getOpt(map, 'isPermanent'), usage: Mapper.i.$getOpt(map, 'usage'), storageCapacity: Mapper.i.$getOpt(map, 'storageCapacity'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (FacilitySearchModel v) => encode(v);
  dynamic encode(FacilitySearchModel v) => toMap(v);
  Map<String, dynamic> toMap(FacilitySearchModel f) => {if (Mapper.i.$enc(f.id, 'id') != null) 'id': Mapper.i.$enc(f.id, 'id'), if (Mapper.i.$enc(f.name, 'name') != null) 'name': Mapper.i.$enc(f.name, 'name'), if (Mapper.i.$enc(f.isPermanent, 'isPermanent') != null) 'isPermanent': Mapper.i.$enc(f.isPermanent, 'isPermanent'), if (Mapper.i.$enc(f.usage, 'usage') != null) 'usage': Mapper.i.$enc(f.usage, 'usage'), if (Mapper.i.$enc(f.storageCapacity, 'storageCapacity') != null) 'storageCapacity': Mapper.i.$enc(f.storageCapacity, 'storageCapacity'), if (Mapper.i.$enc(f.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(f.tenantId, 'tenantId'), if (Mapper.i.$enc(f.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(f.isDeleted, 'isDeleted'), if (Mapper.i.$enc(f.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(f.boundaryCode, 'boundaryCode')};

  @override String stringify(FacilitySearchModel self) => 'FacilitySearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, name: ${Mapper.asString(self.name)}, isPermanent: ${Mapper.asString(self.isPermanent)}, usage: ${Mapper.asString(self.usage)}, storageCapacity: ${Mapper.asString(self.storageCapacity)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(FacilitySearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.name) ^ Mapper.hash(self.isPermanent) ^ Mapper.hash(self.usage) ^ Mapper.hash(self.storageCapacity) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(FacilitySearchModel self, FacilitySearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.isPermanent, other.isPermanent) && Mapper.isEqual(self.usage, other.usage) && Mapper.isEqual(self.storageCapacity, other.storageCapacity) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<FacilitySearchModel>();
}

extension FacilitySearchModelMapperExtension  on FacilitySearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  FacilitySearchModelCopyWith<FacilitySearchModel> get copyWith => FacilitySearchModelCopyWith(this, $identity);
}

abstract class FacilitySearchModelCopyWith<$R> {
  factory FacilitySearchModelCopyWith(FacilitySearchModel value, Then<FacilitySearchModel, $R> then) = _FacilitySearchModelCopyWithImpl<$R>;
  $R call({List<String>? id, String? name, bool? isPermanent, String? usage, int? storageCapacity, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(FacilitySearchModel Function(FacilitySearchModel) transform);
}

class _FacilitySearchModelCopyWithImpl<$R> extends BaseCopyWith<FacilitySearchModel, $R> implements FacilitySearchModelCopyWith<$R> {
  _FacilitySearchModelCopyWithImpl(FacilitySearchModel value, Then<FacilitySearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? name = $none, Object? isPermanent = $none, Object? usage = $none, Object? storageCapacity = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(FacilitySearchModel(id: or(id, $value.id), name: or(name, $value.name), isPermanent: or(isPermanent, $value.isPermanent), usage: or(usage, $value.usage), storageCapacity: or(storageCapacity, $value.storageCapacity), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class FacilityModelMapper extends BaseMapper<FacilityModel> {
  FacilityModelMapper._();

  @override Function get decoder => decode;
  FacilityModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  FacilityModel fromMap(Map<String, dynamic> map) => FacilityModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$get(map, 'id'), name: Mapper.i.$getOpt(map, 'name'), isPermanent: Mapper.i.$getOpt(map, 'isPermanent'), usage: Mapper.i.$getOpt(map, 'usage'), storageCapacity: Mapper.i.$getOpt(map, 'storageCapacity'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), address: Mapper.i.$getOpt(map, 'address'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (FacilityModel v) => encode(v);
  dynamic encode(FacilityModel v) => toMap(v);
  Map<String, dynamic> toMap(FacilityModel f) => {if (Mapper.i.$enc(f.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(f.additionalFields, 'additionalFields'), 'id': Mapper.i.$enc(f.id, 'id'), if (Mapper.i.$enc(f.name, 'name') != null) 'name': Mapper.i.$enc(f.name, 'name'), if (Mapper.i.$enc(f.isPermanent, 'isPermanent') != null) 'isPermanent': Mapper.i.$enc(f.isPermanent, 'isPermanent'), if (Mapper.i.$enc(f.usage, 'usage') != null) 'usage': Mapper.i.$enc(f.usage, 'usage'), if (Mapper.i.$enc(f.storageCapacity, 'storageCapacity') != null) 'storageCapacity': Mapper.i.$enc(f.storageCapacity, 'storageCapacity'), if (Mapper.i.$enc(f.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(f.tenantId, 'tenantId'), if (Mapper.i.$enc(f.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(f.isDeleted, 'isDeleted'), if (Mapper.i.$enc(f.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(f.rowVersion, 'rowVersion'), if (Mapper.i.$enc(f.address, 'address') != null) 'address': Mapper.i.$enc(f.address, 'address'), if (Mapper.i.$enc(f.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(f.auditDetails, 'auditDetails')};

  @override String stringify(FacilityModel self) => 'FacilityModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, name: ${Mapper.asString(self.name)}, isPermanent: ${Mapper.asString(self.isPermanent)}, usage: ${Mapper.asString(self.usage)}, storageCapacity: ${Mapper.asString(self.storageCapacity)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, address: ${Mapper.asString(self.address)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(FacilityModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.name) ^ Mapper.hash(self.isPermanent) ^ Mapper.hash(self.usage) ^ Mapper.hash(self.storageCapacity) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.address) ^ Mapper.hash(self.additionalFields);
  @override bool equals(FacilityModel self, FacilityModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.isPermanent, other.isPermanent) && Mapper.isEqual(self.usage, other.usage) && Mapper.isEqual(self.storageCapacity, other.storageCapacity) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.address, other.address) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<FacilityModel>();
}

extension FacilityModelMapperExtension  on FacilityModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  FacilityModelCopyWith<FacilityModel> get copyWith => FacilityModelCopyWith(this, $identity);
}

abstract class FacilityModelCopyWith<$R> {
  factory FacilityModelCopyWith(FacilityModel value, Then<FacilityModel, $R> then) = _FacilityModelCopyWithImpl<$R>;
  FacilityAdditionalFieldsCopyWith<$R>? get additionalFields;
  AddressModelCopyWith<$R>? get address;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({FacilityAdditionalFields? additionalFields, String? id, String? name, bool? isPermanent, String? usage, int? storageCapacity, String? tenantId, bool? isDeleted, int? rowVersion, AddressModel? address, AuditDetails? auditDetails});
  $R apply(FacilityModel Function(FacilityModel) transform);
}

class _FacilityModelCopyWithImpl<$R> extends BaseCopyWith<FacilityModel, $R> implements FacilityModelCopyWith<$R> {
  _FacilityModelCopyWithImpl(FacilityModel value, Then<FacilityModel, $R> then) : super(value, then);

  @override FacilityAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? FacilityAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AddressModelCopyWith<$R>? get address => $value.address != null ? AddressModelCopyWith($value.address!, (v) => call(address: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, String? id, Object? name = $none, Object? isPermanent = $none, Object? usage = $none, Object? storageCapacity = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? address = $none, Object? auditDetails = $none}) => $then(FacilityModel(additionalFields: or(additionalFields, $value.additionalFields), id: id ?? $value.id, name: or(name, $value.name), isPermanent: or(isPermanent, $value.isPermanent), usage: or(usage, $value.usage), storageCapacity: or(storageCapacity, $value.storageCapacity), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), address: or(address, $value.address), auditDetails: or(auditDetails, $value.auditDetails)));
}

class FacilityAdditionalFieldsMapper extends BaseMapper<FacilityAdditionalFields> {
  FacilityAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  FacilityAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  FacilityAdditionalFields fromMap(Map<String, dynamic> map) => FacilityAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Facility', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (FacilityAdditionalFields v) => encode(v);
  dynamic encode(FacilityAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(FacilityAdditionalFields f) => {'schema': Mapper.i.$enc(f.schema, 'schema'), 'version': Mapper.i.$enc(f.version, 'version'), 'fields': Mapper.i.$enc(f.fields, 'fields')};

  @override String stringify(FacilityAdditionalFields self) => 'FacilityAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(FacilityAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(FacilityAdditionalFields self, FacilityAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<FacilityAdditionalFields>();
}

extension FacilityAdditionalFieldsMapperExtension  on FacilityAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  FacilityAdditionalFieldsCopyWith<FacilityAdditionalFields> get copyWith => FacilityAdditionalFieldsCopyWith(this, $identity);
}

abstract class FacilityAdditionalFieldsCopyWith<$R> {
  factory FacilityAdditionalFieldsCopyWith(FacilityAdditionalFields value, Then<FacilityAdditionalFields, $R> then) = _FacilityAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(FacilityAdditionalFields Function(FacilityAdditionalFields) transform);
}

class _FacilityAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<FacilityAdditionalFields, $R> implements FacilityAdditionalFieldsCopyWith<$R> {
  _FacilityAdditionalFieldsCopyWithImpl(FacilityAdditionalFields value, Then<FacilityAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(FacilityAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class HouseholdSearchModelMapper extends BaseMapper<HouseholdSearchModel> {
  HouseholdSearchModelMapper._();

  @override Function get decoder => decode;
  HouseholdSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  HouseholdSearchModel fromMap(Map<String, dynamic> map) => HouseholdSearchModel(id: Mapper.i.$getOpt(map, 'id'), memberCount: Mapper.i.$getOpt(map, 'memberCount'), clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (HouseholdSearchModel v) => encode(v);
  dynamic encode(HouseholdSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(HouseholdSearchModel h) => {if (Mapper.i.$enc(h.id, 'id') != null) 'id': Mapper.i.$enc(h.id, 'id'), if (Mapper.i.$enc(h.memberCount, 'memberCount') != null) 'memberCount': Mapper.i.$enc(h.memberCount, 'memberCount'), if (Mapper.i.$enc(h.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(h.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(h.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(h.tenantId, 'tenantId'), if (Mapper.i.$enc(h.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(h.isDeleted, 'isDeleted'), if (Mapper.i.$enc(h.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(h.boundaryCode, 'boundaryCode')};

  @override String stringify(HouseholdSearchModel self) => 'HouseholdSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, memberCount: ${Mapper.asString(self.memberCount)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(HouseholdSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.memberCount) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(HouseholdSearchModel self, HouseholdSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.memberCount, other.memberCount) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<HouseholdSearchModel>();
}

extension HouseholdSearchModelMapperExtension  on HouseholdSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  HouseholdSearchModelCopyWith<HouseholdSearchModel> get copyWith => HouseholdSearchModelCopyWith(this, $identity);
}

abstract class HouseholdSearchModelCopyWith<$R> {
  factory HouseholdSearchModelCopyWith(HouseholdSearchModel value, Then<HouseholdSearchModel, $R> then) = _HouseholdSearchModelCopyWithImpl<$R>;
  $R call({String? id, int? memberCount, List<String>? clientReferenceId, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(HouseholdSearchModel Function(HouseholdSearchModel) transform);
}

class _HouseholdSearchModelCopyWithImpl<$R> extends BaseCopyWith<HouseholdSearchModel, $R> implements HouseholdSearchModelCopyWith<$R> {
  _HouseholdSearchModelCopyWithImpl(HouseholdSearchModel value, Then<HouseholdSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? memberCount = $none, Object? clientReferenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(HouseholdSearchModel(id: or(id, $value.id), memberCount: or(memberCount, $value.memberCount), clientReferenceId: or(clientReferenceId, $value.clientReferenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class HouseholdModelMapper extends BaseMapper<HouseholdModel> {
  HouseholdModelMapper._();

  @override Function get decoder => decode;
  HouseholdModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  HouseholdModel fromMap(Map<String, dynamic> map) => HouseholdModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), memberCount: Mapper.i.$getOpt(map, 'memberCount'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), address: Mapper.i.$getOpt(map, 'address'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (HouseholdModel v) => encode(v);
  dynamic encode(HouseholdModel v) => toMap(v);
  Map<String, dynamic> toMap(HouseholdModel h) => {if (Mapper.i.$enc(h.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(h.additionalFields, 'additionalFields'), if (Mapper.i.$enc(h.id, 'id') != null) 'id': Mapper.i.$enc(h.id, 'id'), if (Mapper.i.$enc(h.memberCount, 'memberCount') != null) 'memberCount': Mapper.i.$enc(h.memberCount, 'memberCount'), 'clientReferenceId': Mapper.i.$enc(h.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(h.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(h.tenantId, 'tenantId'), if (Mapper.i.$enc(h.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(h.isDeleted, 'isDeleted'), if (Mapper.i.$enc(h.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(h.rowVersion, 'rowVersion'), if (Mapper.i.$enc(h.address, 'address') != null) 'address': Mapper.i.$enc(h.address, 'address'), if (Mapper.i.$enc(h.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(h.auditDetails, 'auditDetails')};

  @override String stringify(HouseholdModel self) => 'HouseholdModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, memberCount: ${Mapper.asString(self.memberCount)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, address: ${Mapper.asString(self.address)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(HouseholdModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.memberCount) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.address) ^ Mapper.hash(self.additionalFields);
  @override bool equals(HouseholdModel self, HouseholdModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.memberCount, other.memberCount) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.address, other.address) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<HouseholdModel>();
}

extension HouseholdModelMapperExtension  on HouseholdModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  HouseholdModelCopyWith<HouseholdModel> get copyWith => HouseholdModelCopyWith(this, $identity);
}

abstract class HouseholdModelCopyWith<$R> {
  factory HouseholdModelCopyWith(HouseholdModel value, Then<HouseholdModel, $R> then) = _HouseholdModelCopyWithImpl<$R>;
  HouseholdAdditionalFieldsCopyWith<$R>? get additionalFields;
  AddressModelCopyWith<$R>? get address;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({HouseholdAdditionalFields? additionalFields, String? id, int? memberCount, String? clientReferenceId, String? tenantId, bool? isDeleted, int? rowVersion, AddressModel? address, AuditDetails? auditDetails});
  $R apply(HouseholdModel Function(HouseholdModel) transform);
}

class _HouseholdModelCopyWithImpl<$R> extends BaseCopyWith<HouseholdModel, $R> implements HouseholdModelCopyWith<$R> {
  _HouseholdModelCopyWithImpl(HouseholdModel value, Then<HouseholdModel, $R> then) : super(value, then);

  @override HouseholdAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? HouseholdAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AddressModelCopyWith<$R>? get address => $value.address != null ? AddressModelCopyWith($value.address!, (v) => call(address: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? memberCount = $none, String? clientReferenceId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? address = $none, Object? auditDetails = $none}) => $then(HouseholdModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), memberCount: or(memberCount, $value.memberCount), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), address: or(address, $value.address), auditDetails: or(auditDetails, $value.auditDetails)));
}

class HouseholdAdditionalFieldsMapper extends BaseMapper<HouseholdAdditionalFields> {
  HouseholdAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  HouseholdAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  HouseholdAdditionalFields fromMap(Map<String, dynamic> map) => HouseholdAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Household', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (HouseholdAdditionalFields v) => encode(v);
  dynamic encode(HouseholdAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(HouseholdAdditionalFields h) => {'schema': Mapper.i.$enc(h.schema, 'schema'), 'version': Mapper.i.$enc(h.version, 'version'), 'fields': Mapper.i.$enc(h.fields, 'fields')};

  @override String stringify(HouseholdAdditionalFields self) => 'HouseholdAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(HouseholdAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(HouseholdAdditionalFields self, HouseholdAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<HouseholdAdditionalFields>();
}

extension HouseholdAdditionalFieldsMapperExtension  on HouseholdAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  HouseholdAdditionalFieldsCopyWith<HouseholdAdditionalFields> get copyWith => HouseholdAdditionalFieldsCopyWith(this, $identity);
}

abstract class HouseholdAdditionalFieldsCopyWith<$R> {
  factory HouseholdAdditionalFieldsCopyWith(HouseholdAdditionalFields value, Then<HouseholdAdditionalFields, $R> then) = _HouseholdAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(HouseholdAdditionalFields Function(HouseholdAdditionalFields) transform);
}

class _HouseholdAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<HouseholdAdditionalFields, $R> implements HouseholdAdditionalFieldsCopyWith<$R> {
  _HouseholdAdditionalFieldsCopyWithImpl(HouseholdAdditionalFields value, Then<HouseholdAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(HouseholdAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class HouseholdMemberSearchModelMapper extends BaseMapper<HouseholdMemberSearchModel> {
  HouseholdMemberSearchModelMapper._();

  @override Function get decoder => decode;
  HouseholdMemberSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  HouseholdMemberSearchModel fromMap(Map<String, dynamic> map) => HouseholdMemberSearchModel(id: Mapper.i.$getOpt(map, 'id'), householdId: Mapper.i.$getOpt(map, 'householdId'), householdClientReferenceId: Mapper.i.$getOpt(map, 'householdClientReferenceId'), individualId: Mapper.i.$getOpt(map, 'individualId'), individualClientReferenceId: Mapper.i.$getOpt(map, 'individualClientReferenceId'), isHeadOfHousehold: Mapper.i.$getOpt(map, 'isHeadOfHousehold'), clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (HouseholdMemberSearchModel v) => encode(v);
  dynamic encode(HouseholdMemberSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(HouseholdMemberSearchModel h) => {if (Mapper.i.$enc(h.id, 'id') != null) 'id': Mapper.i.$enc(h.id, 'id'), if (Mapper.i.$enc(h.householdId, 'householdId') != null) 'householdId': Mapper.i.$enc(h.householdId, 'householdId'), if (Mapper.i.$enc(h.householdClientReferenceId, 'householdClientReferenceId') != null) 'householdClientReferenceId': Mapper.i.$enc(h.householdClientReferenceId, 'householdClientReferenceId'), if (Mapper.i.$enc(h.individualId, 'individualId') != null) 'individualId': Mapper.i.$enc(h.individualId, 'individualId'), if (Mapper.i.$enc(h.individualClientReferenceId, 'individualClientReferenceId') != null) 'individualClientReferenceId': Mapper.i.$enc(h.individualClientReferenceId, 'individualClientReferenceId'), if (Mapper.i.$enc(h.isHeadOfHousehold, 'isHeadOfHousehold') != null) 'isHeadOfHousehold': Mapper.i.$enc(h.isHeadOfHousehold, 'isHeadOfHousehold'), if (Mapper.i.$enc(h.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(h.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(h.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(h.tenantId, 'tenantId'), if (Mapper.i.$enc(h.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(h.isDeleted, 'isDeleted'), if (Mapper.i.$enc(h.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(h.boundaryCode, 'boundaryCode')};

  @override String stringify(HouseholdMemberSearchModel self) => 'HouseholdMemberSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, householdId: ${Mapper.asString(self.householdId)}, householdClientReferenceId: ${Mapper.asString(self.householdClientReferenceId)}, individualId: ${Mapper.asString(self.individualId)}, individualClientReferenceId: ${Mapper.asString(self.individualClientReferenceId)}, isHeadOfHousehold: ${Mapper.asString(self.isHeadOfHousehold)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(HouseholdMemberSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.householdId) ^ Mapper.hash(self.householdClientReferenceId) ^ Mapper.hash(self.individualId) ^ Mapper.hash(self.individualClientReferenceId) ^ Mapper.hash(self.isHeadOfHousehold) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(HouseholdMemberSearchModel self, HouseholdMemberSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.householdId, other.householdId) && Mapper.isEqual(self.householdClientReferenceId, other.householdClientReferenceId) && Mapper.isEqual(self.individualId, other.individualId) && Mapper.isEqual(self.individualClientReferenceId, other.individualClientReferenceId) && Mapper.isEqual(self.isHeadOfHousehold, other.isHeadOfHousehold) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<HouseholdMemberSearchModel>();
}

extension HouseholdMemberSearchModelMapperExtension  on HouseholdMemberSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  HouseholdMemberSearchModelCopyWith<HouseholdMemberSearchModel> get copyWith => HouseholdMemberSearchModelCopyWith(this, $identity);
}

abstract class HouseholdMemberSearchModelCopyWith<$R> {
  factory HouseholdMemberSearchModelCopyWith(HouseholdMemberSearchModel value, Then<HouseholdMemberSearchModel, $R> then) = _HouseholdMemberSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? householdId, String? householdClientReferenceId, String? individualId, String? individualClientReferenceId, bool? isHeadOfHousehold, List<String>? clientReferenceId, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(HouseholdMemberSearchModel Function(HouseholdMemberSearchModel) transform);
}

class _HouseholdMemberSearchModelCopyWithImpl<$R> extends BaseCopyWith<HouseholdMemberSearchModel, $R> implements HouseholdMemberSearchModelCopyWith<$R> {
  _HouseholdMemberSearchModelCopyWithImpl(HouseholdMemberSearchModel value, Then<HouseholdMemberSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? householdId = $none, Object? householdClientReferenceId = $none, Object? individualId = $none, Object? individualClientReferenceId = $none, Object? isHeadOfHousehold = $none, Object? clientReferenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(HouseholdMemberSearchModel(id: or(id, $value.id), householdId: or(householdId, $value.householdId), householdClientReferenceId: or(householdClientReferenceId, $value.householdClientReferenceId), individualId: or(individualId, $value.individualId), individualClientReferenceId: or(individualClientReferenceId, $value.individualClientReferenceId), isHeadOfHousehold: or(isHeadOfHousehold, $value.isHeadOfHousehold), clientReferenceId: or(clientReferenceId, $value.clientReferenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class HouseholdMemberModelMapper extends BaseMapper<HouseholdMemberModel> {
  HouseholdMemberModelMapper._();

  @override Function get decoder => decode;
  HouseholdMemberModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  HouseholdMemberModel fromMap(Map<String, dynamic> map) => HouseholdMemberModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), householdId: Mapper.i.$getOpt(map, 'householdId'), householdClientReferenceId: Mapper.i.$getOpt(map, 'householdClientReferenceId'), individualId: Mapper.i.$getOpt(map, 'individualId'), individualClientReferenceId: Mapper.i.$getOpt(map, 'individualClientReferenceId'), isHeadOfHousehold: Mapper.i.$get(map, 'isHeadOfHousehold'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (HouseholdMemberModel v) => encode(v);
  dynamic encode(HouseholdMemberModel v) => toMap(v);
  Map<String, dynamic> toMap(HouseholdMemberModel h) => {if (Mapper.i.$enc(h.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(h.additionalFields, 'additionalFields'), if (Mapper.i.$enc(h.id, 'id') != null) 'id': Mapper.i.$enc(h.id, 'id'), if (Mapper.i.$enc(h.householdId, 'householdId') != null) 'householdId': Mapper.i.$enc(h.householdId, 'householdId'), if (Mapper.i.$enc(h.householdClientReferenceId, 'householdClientReferenceId') != null) 'householdClientReferenceId': Mapper.i.$enc(h.householdClientReferenceId, 'householdClientReferenceId'), if (Mapper.i.$enc(h.individualId, 'individualId') != null) 'individualId': Mapper.i.$enc(h.individualId, 'individualId'), if (Mapper.i.$enc(h.individualClientReferenceId, 'individualClientReferenceId') != null) 'individualClientReferenceId': Mapper.i.$enc(h.individualClientReferenceId, 'individualClientReferenceId'), 'isHeadOfHousehold': Mapper.i.$enc(h.isHeadOfHousehold, 'isHeadOfHousehold'), 'clientReferenceId': Mapper.i.$enc(h.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(h.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(h.tenantId, 'tenantId'), if (Mapper.i.$enc(h.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(h.isDeleted, 'isDeleted'), if (Mapper.i.$enc(h.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(h.rowVersion, 'rowVersion'), if (Mapper.i.$enc(h.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(h.auditDetails, 'auditDetails')};

  @override String stringify(HouseholdMemberModel self) => 'HouseholdMemberModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, householdId: ${Mapper.asString(self.householdId)}, householdClientReferenceId: ${Mapper.asString(self.householdClientReferenceId)}, individualId: ${Mapper.asString(self.individualId)}, individualClientReferenceId: ${Mapper.asString(self.individualClientReferenceId)}, isHeadOfHousehold: ${Mapper.asString(self.isHeadOfHousehold)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(HouseholdMemberModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.householdId) ^ Mapper.hash(self.householdClientReferenceId) ^ Mapper.hash(self.individualId) ^ Mapper.hash(self.individualClientReferenceId) ^ Mapper.hash(self.isHeadOfHousehold) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(HouseholdMemberModel self, HouseholdMemberModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.householdId, other.householdId) && Mapper.isEqual(self.householdClientReferenceId, other.householdClientReferenceId) && Mapper.isEqual(self.individualId, other.individualId) && Mapper.isEqual(self.individualClientReferenceId, other.individualClientReferenceId) && Mapper.isEqual(self.isHeadOfHousehold, other.isHeadOfHousehold) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<HouseholdMemberModel>();
}

extension HouseholdMemberModelMapperExtension  on HouseholdMemberModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  HouseholdMemberModelCopyWith<HouseholdMemberModel> get copyWith => HouseholdMemberModelCopyWith(this, $identity);
}

abstract class HouseholdMemberModelCopyWith<$R> {
  factory HouseholdMemberModelCopyWith(HouseholdMemberModel value, Then<HouseholdMemberModel, $R> then) = _HouseholdMemberModelCopyWithImpl<$R>;
  HouseholdMemberAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({HouseholdMemberAdditionalFields? additionalFields, String? id, String? householdId, String? householdClientReferenceId, String? individualId, String? individualClientReferenceId, bool? isHeadOfHousehold, String? clientReferenceId, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(HouseholdMemberModel Function(HouseholdMemberModel) transform);
}

class _HouseholdMemberModelCopyWithImpl<$R> extends BaseCopyWith<HouseholdMemberModel, $R> implements HouseholdMemberModelCopyWith<$R> {
  _HouseholdMemberModelCopyWithImpl(HouseholdMemberModel value, Then<HouseholdMemberModel, $R> then) : super(value, then);

  @override HouseholdMemberAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? HouseholdMemberAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? householdId = $none, Object? householdClientReferenceId = $none, Object? individualId = $none, Object? individualClientReferenceId = $none, bool? isHeadOfHousehold, String? clientReferenceId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(HouseholdMemberModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), householdId: or(householdId, $value.householdId), householdClientReferenceId: or(householdClientReferenceId, $value.householdClientReferenceId), individualId: or(individualId, $value.individualId), individualClientReferenceId: or(individualClientReferenceId, $value.individualClientReferenceId), isHeadOfHousehold: isHeadOfHousehold ?? $value.isHeadOfHousehold, clientReferenceId: clientReferenceId ?? $value.clientReferenceId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class HouseholdMemberAdditionalFieldsMapper extends BaseMapper<HouseholdMemberAdditionalFields> {
  HouseholdMemberAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  HouseholdMemberAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  HouseholdMemberAdditionalFields fromMap(Map<String, dynamic> map) => HouseholdMemberAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'HouseholdMember', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (HouseholdMemberAdditionalFields v) => encode(v);
  dynamic encode(HouseholdMemberAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(HouseholdMemberAdditionalFields h) => {'schema': Mapper.i.$enc(h.schema, 'schema'), 'version': Mapper.i.$enc(h.version, 'version'), 'fields': Mapper.i.$enc(h.fields, 'fields')};

  @override String stringify(HouseholdMemberAdditionalFields self) => 'HouseholdMemberAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(HouseholdMemberAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(HouseholdMemberAdditionalFields self, HouseholdMemberAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<HouseholdMemberAdditionalFields>();
}

extension HouseholdMemberAdditionalFieldsMapperExtension  on HouseholdMemberAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  HouseholdMemberAdditionalFieldsCopyWith<HouseholdMemberAdditionalFields> get copyWith => HouseholdMemberAdditionalFieldsCopyWith(this, $identity);
}

abstract class HouseholdMemberAdditionalFieldsCopyWith<$R> {
  factory HouseholdMemberAdditionalFieldsCopyWith(HouseholdMemberAdditionalFields value, Then<HouseholdMemberAdditionalFields, $R> then) = _HouseholdMemberAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(HouseholdMemberAdditionalFields Function(HouseholdMemberAdditionalFields) transform);
}

class _HouseholdMemberAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<HouseholdMemberAdditionalFields, $R> implements HouseholdMemberAdditionalFieldsCopyWith<$R> {
  _HouseholdMemberAdditionalFieldsCopyWithImpl(HouseholdMemberAdditionalFields value, Then<HouseholdMemberAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(HouseholdMemberAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class IdentifierSearchModelMapper extends BaseMapper<IdentifierSearchModel> {
  IdentifierSearchModelMapper._();

  @override Function get decoder => decode;
  IdentifierSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  IdentifierSearchModel fromMap(Map<String, dynamic> map) => IdentifierSearchModel(id: Mapper.i.$getOpt(map, 'id'), identifierType: Mapper.i.$getOpt(map, 'identifierType'), identifierId: Mapper.i.$getOpt(map, 'identifierId'), clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (IdentifierSearchModel v) => encode(v);
  dynamic encode(IdentifierSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(IdentifierSearchModel i) => {if (Mapper.i.$enc(i.id, 'id') != null) 'id': Mapper.i.$enc(i.id, 'id'), if (Mapper.i.$enc(i.identifierType, 'identifierType') != null) 'identifierType': Mapper.i.$enc(i.identifierType, 'identifierType'), if (Mapper.i.$enc(i.identifierId, 'identifierId') != null) 'identifierId': Mapper.i.$enc(i.identifierId, 'identifierId'), if (Mapper.i.$enc(i.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(i.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(i.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(i.tenantId, 'tenantId'), if (Mapper.i.$enc(i.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(i.isDeleted, 'isDeleted'), if (Mapper.i.$enc(i.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(i.boundaryCode, 'boundaryCode')};

  @override String stringify(IdentifierSearchModel self) => 'IdentifierSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, identifierType: ${Mapper.asString(self.identifierType)}, identifierId: ${Mapper.asString(self.identifierId)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(IdentifierSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.identifierType) ^ Mapper.hash(self.identifierId) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(IdentifierSearchModel self, IdentifierSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.identifierType, other.identifierType) && Mapper.isEqual(self.identifierId, other.identifierId) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<IdentifierSearchModel>();
}

extension IdentifierSearchModelMapperExtension  on IdentifierSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  IdentifierSearchModelCopyWith<IdentifierSearchModel> get copyWith => IdentifierSearchModelCopyWith(this, $identity);
}

abstract class IdentifierSearchModelCopyWith<$R> {
  factory IdentifierSearchModelCopyWith(IdentifierSearchModel value, Then<IdentifierSearchModel, $R> then) = _IdentifierSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? identifierType, String? identifierId, List<String>? clientReferenceId, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(IdentifierSearchModel Function(IdentifierSearchModel) transform);
}

class _IdentifierSearchModelCopyWithImpl<$R> extends BaseCopyWith<IdentifierSearchModel, $R> implements IdentifierSearchModelCopyWith<$R> {
  _IdentifierSearchModelCopyWithImpl(IdentifierSearchModel value, Then<IdentifierSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? identifierType = $none, Object? identifierId = $none, Object? clientReferenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(IdentifierSearchModel(id: or(id, $value.id), identifierType: or(identifierType, $value.identifierType), identifierId: or(identifierId, $value.identifierId), clientReferenceId: or(clientReferenceId, $value.clientReferenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class IdentifierModelMapper extends BaseMapper<IdentifierModel> {
  IdentifierModelMapper._();

  @override Function get decoder => decode;
  IdentifierModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  IdentifierModel fromMap(Map<String, dynamic> map) => IdentifierModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), identifierType: Mapper.i.$getOpt(map, 'identifierType'), identifierId: Mapper.i.$getOpt(map, 'identifierId'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (IdentifierModel v) => encode(v);
  dynamic encode(IdentifierModel v) => toMap(v);
  Map<String, dynamic> toMap(IdentifierModel i) => {if (Mapper.i.$enc(i.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(i.additionalFields, 'additionalFields'), if (Mapper.i.$enc(i.id, 'id') != null) 'id': Mapper.i.$enc(i.id, 'id'), if (Mapper.i.$enc(i.identifierType, 'identifierType') != null) 'identifierType': Mapper.i.$enc(i.identifierType, 'identifierType'), if (Mapper.i.$enc(i.identifierId, 'identifierId') != null) 'identifierId': Mapper.i.$enc(i.identifierId, 'identifierId'), 'clientReferenceId': Mapper.i.$enc(i.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(i.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(i.tenantId, 'tenantId'), if (Mapper.i.$enc(i.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(i.isDeleted, 'isDeleted'), if (Mapper.i.$enc(i.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(i.rowVersion, 'rowVersion'), if (Mapper.i.$enc(i.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(i.auditDetails, 'auditDetails')};

  @override String stringify(IdentifierModel self) => 'IdentifierModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, identifierType: ${Mapper.asString(self.identifierType)}, identifierId: ${Mapper.asString(self.identifierId)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(IdentifierModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.identifierType) ^ Mapper.hash(self.identifierId) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(IdentifierModel self, IdentifierModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.identifierType, other.identifierType) && Mapper.isEqual(self.identifierId, other.identifierId) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<IdentifierModel>();
}

extension IdentifierModelMapperExtension  on IdentifierModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  IdentifierModelCopyWith<IdentifierModel> get copyWith => IdentifierModelCopyWith(this, $identity);
}

abstract class IdentifierModelCopyWith<$R> {
  factory IdentifierModelCopyWith(IdentifierModel value, Then<IdentifierModel, $R> then) = _IdentifierModelCopyWithImpl<$R>;
  IdentifierAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({IdentifierAdditionalFields? additionalFields, String? id, String? identifierType, String? identifierId, String? clientReferenceId, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(IdentifierModel Function(IdentifierModel) transform);
}

class _IdentifierModelCopyWithImpl<$R> extends BaseCopyWith<IdentifierModel, $R> implements IdentifierModelCopyWith<$R> {
  _IdentifierModelCopyWithImpl(IdentifierModel value, Then<IdentifierModel, $R> then) : super(value, then);

  @override IdentifierAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? IdentifierAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? identifierType = $none, Object? identifierId = $none, String? clientReferenceId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(IdentifierModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), identifierType: or(identifierType, $value.identifierType), identifierId: or(identifierId, $value.identifierId), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class IdentifierAdditionalFieldsMapper extends BaseMapper<IdentifierAdditionalFields> {
  IdentifierAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  IdentifierAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  IdentifierAdditionalFields fromMap(Map<String, dynamic> map) => IdentifierAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Identifier', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (IdentifierAdditionalFields v) => encode(v);
  dynamic encode(IdentifierAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(IdentifierAdditionalFields i) => {'schema': Mapper.i.$enc(i.schema, 'schema'), 'version': Mapper.i.$enc(i.version, 'version'), 'fields': Mapper.i.$enc(i.fields, 'fields')};

  @override String stringify(IdentifierAdditionalFields self) => 'IdentifierAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(IdentifierAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(IdentifierAdditionalFields self, IdentifierAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<IdentifierAdditionalFields>();
}

extension IdentifierAdditionalFieldsMapperExtension  on IdentifierAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  IdentifierAdditionalFieldsCopyWith<IdentifierAdditionalFields> get copyWith => IdentifierAdditionalFieldsCopyWith(this, $identity);
}

abstract class IdentifierAdditionalFieldsCopyWith<$R> {
  factory IdentifierAdditionalFieldsCopyWith(IdentifierAdditionalFields value, Then<IdentifierAdditionalFields, $R> then) = _IdentifierAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(IdentifierAdditionalFields Function(IdentifierAdditionalFields) transform);
}

class _IdentifierAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<IdentifierAdditionalFields, $R> implements IdentifierAdditionalFieldsCopyWith<$R> {
  _IdentifierAdditionalFieldsCopyWithImpl(IdentifierAdditionalFields value, Then<IdentifierAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(IdentifierAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class IndividualSearchModelMapper extends BaseMapper<IndividualSearchModel> {
  IndividualSearchModelMapper._();

  @override Function get decoder => decode;
  IndividualSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  IndividualSearchModel fromMap(Map<String, dynamic> map) => IndividualSearchModel(id: Mapper.i.$getOpt(map, 'id'), dateOfBirth: Mapper.i.$getOpt(map, 'dateOfBirth'), clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), name: Mapper.i.$getOpt(map, 'name'), gender: Mapper.i.$getOpt(map, 'gender'), identifiers: Mapper.i.$getOpt(map, 'identifiers'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (IndividualSearchModel v) => encode(v);
  dynamic encode(IndividualSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(IndividualSearchModel i) => {if (Mapper.i.$enc(i.id, 'id') != null) 'id': Mapper.i.$enc(i.id, 'id'), if (Mapper.i.$enc(i.dateOfBirth, 'dateOfBirth') != null) 'dateOfBirth': Mapper.i.$enc(i.dateOfBirth, 'dateOfBirth'), if (Mapper.i.$enc(i.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(i.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(i.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(i.tenantId, 'tenantId'), if (Mapper.i.$enc(i.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(i.isDeleted, 'isDeleted'), if (Mapper.i.$enc(i.name, 'name') != null) 'name': Mapper.i.$enc(i.name, 'name'), if (Mapper.i.$enc(i.gender, 'gender') != null) 'gender': Mapper.i.$enc(i.gender, 'gender'), if (Mapper.i.$enc(i.identifiers, 'identifiers') != null) 'identifiers': Mapper.i.$enc(i.identifiers, 'identifiers'), if (Mapper.i.$enc(i.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(i.boundaryCode, 'boundaryCode')};

  @override String stringify(IndividualSearchModel self) => 'IndividualSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, dateOfBirth: ${Mapper.asString(self.dateOfBirth)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, name: ${Mapper.asString(self.name)}, gender: ${Mapper.asString(self.gender)}, identifiers: ${Mapper.asString(self.identifiers)})';
  @override int hash(IndividualSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.dateOfBirth) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.name) ^ Mapper.hash(self.gender) ^ Mapper.hash(self.identifiers);
  @override bool equals(IndividualSearchModel self, IndividualSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.dateOfBirth, other.dateOfBirth) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.gender, other.gender) && Mapper.isEqual(self.identifiers, other.identifiers);

  @override Function get typeFactory => (f) => f<IndividualSearchModel>();
}

extension IndividualSearchModelMapperExtension  on IndividualSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  IndividualSearchModelCopyWith<IndividualSearchModel> get copyWith => IndividualSearchModelCopyWith(this, $identity);
}

abstract class IndividualSearchModelCopyWith<$R> {
  factory IndividualSearchModelCopyWith(IndividualSearchModel value, Then<IndividualSearchModel, $R> then) = _IndividualSearchModelCopyWithImpl<$R>;
  NameSearchModelCopyWith<$R>? get name;
  ListCopyWith<$R, IdentifierSearchModel, IdentifierSearchModelCopyWith<$R>>? get identifiers;
  $R call({String? id, String? dateOfBirth, List<String>? clientReferenceId, String? tenantId, bool? isDeleted, NameSearchModel? name, Gender? gender, List<IdentifierSearchModel>? identifiers, String? boundaryCode});
  $R apply(IndividualSearchModel Function(IndividualSearchModel) transform);
}

class _IndividualSearchModelCopyWithImpl<$R> extends BaseCopyWith<IndividualSearchModel, $R> implements IndividualSearchModelCopyWith<$R> {
  _IndividualSearchModelCopyWithImpl(IndividualSearchModel value, Then<IndividualSearchModel, $R> then) : super(value, then);

  @override NameSearchModelCopyWith<$R>? get name => $value.name != null ? NameSearchModelCopyWith($value.name!, (v) => call(name: v)) : null;
  @override ListCopyWith<$R, IdentifierSearchModel, IdentifierSearchModelCopyWith<$R>>? get identifiers => $value.identifiers != null ? ListCopyWith($value.identifiers!, (v, t) => IdentifierSearchModelCopyWith(v, t), (v) => call(identifiers: v)) : null;
  @override $R call({Object? id = $none, Object? dateOfBirth = $none, Object? clientReferenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? name = $none, Object? gender = $none, Object? identifiers = $none, Object? boundaryCode = $none}) => $then(IndividualSearchModel(id: or(id, $value.id), dateOfBirth: or(dateOfBirth, $value.dateOfBirth), clientReferenceId: or(clientReferenceId, $value.clientReferenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), name: or(name, $value.name), gender: or(gender, $value.gender), identifiers: or(identifiers, $value.identifiers), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class IndividualModelMapper extends BaseMapper<IndividualModel> {
  IndividualModelMapper._();

  @override Function get decoder => decode;
  IndividualModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  IndividualModel fromMap(Map<String, dynamic> map) => IndividualModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), userId: Mapper.i.$getOpt(map, 'userId'), dateOfBirth: Mapper.i.$getOpt(map, 'dateOfBirth'), mobileNumber: Mapper.i.$getOpt(map, 'mobileNumber'), altContactNumber: Mapper.i.$getOpt(map, 'altContactNumber'), email: Mapper.i.$getOpt(map, 'email'), fatherName: Mapper.i.$getOpt(map, 'fatherName'), husbandName: Mapper.i.$getOpt(map, 'husbandName'), photo: Mapper.i.$getOpt(map, 'photo'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), name: Mapper.i.$getOpt(map, 'name'), bloodGroup: Mapper.i.$getOpt(map, 'bloodGroup'), address: Mapper.i.$getOpt(map, 'address'), gender: Mapper.i.$getOpt(map, 'gender'), identifiers: Mapper.i.$getOpt(map, 'identifiers'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (IndividualModel v) => encode(v);
  dynamic encode(IndividualModel v) => toMap(v);
  Map<String, dynamic> toMap(IndividualModel i) => {if (Mapper.i.$enc(i.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(i.additionalFields, 'additionalFields'), if (Mapper.i.$enc(i.id, 'id') != null) 'id': Mapper.i.$enc(i.id, 'id'), if (Mapper.i.$enc(i.userId, 'userId') != null) 'userId': Mapper.i.$enc(i.userId, 'userId'), if (Mapper.i.$enc(i.dateOfBirth, 'dateOfBirth') != null) 'dateOfBirth': Mapper.i.$enc(i.dateOfBirth, 'dateOfBirth'), if (Mapper.i.$enc(i.mobileNumber, 'mobileNumber') != null) 'mobileNumber': Mapper.i.$enc(i.mobileNumber, 'mobileNumber'), if (Mapper.i.$enc(i.altContactNumber, 'altContactNumber') != null) 'altContactNumber': Mapper.i.$enc(i.altContactNumber, 'altContactNumber'), if (Mapper.i.$enc(i.email, 'email') != null) 'email': Mapper.i.$enc(i.email, 'email'), if (Mapper.i.$enc(i.fatherName, 'fatherName') != null) 'fatherName': Mapper.i.$enc(i.fatherName, 'fatherName'), if (Mapper.i.$enc(i.husbandName, 'husbandName') != null) 'husbandName': Mapper.i.$enc(i.husbandName, 'husbandName'), if (Mapper.i.$enc(i.photo, 'photo') != null) 'photo': Mapper.i.$enc(i.photo, 'photo'), 'clientReferenceId': Mapper.i.$enc(i.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(i.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(i.tenantId, 'tenantId'), if (Mapper.i.$enc(i.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(i.isDeleted, 'isDeleted'), if (Mapper.i.$enc(i.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(i.rowVersion, 'rowVersion'), if (Mapper.i.$enc(i.name, 'name') != null) 'name': Mapper.i.$enc(i.name, 'name'), if (Mapper.i.$enc(i.bloodGroup, 'bloodGroup') != null) 'bloodGroup': Mapper.i.$enc(i.bloodGroup, 'bloodGroup'), if (Mapper.i.$enc(i.address, 'address') != null) 'address': Mapper.i.$enc(i.address, 'address'), if (Mapper.i.$enc(i.gender, 'gender') != null) 'gender': Mapper.i.$enc(i.gender, 'gender'), if (Mapper.i.$enc(i.identifiers, 'identifiers') != null) 'identifiers': Mapper.i.$enc(i.identifiers, 'identifiers'), if (Mapper.i.$enc(i.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(i.auditDetails, 'auditDetails')};

  @override String stringify(IndividualModel self) => 'IndividualModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, userId: ${Mapper.asString(self.userId)}, dateOfBirth: ${Mapper.asString(self.dateOfBirth)}, mobileNumber: ${Mapper.asString(self.mobileNumber)}, altContactNumber: ${Mapper.asString(self.altContactNumber)}, email: ${Mapper.asString(self.email)}, fatherName: ${Mapper.asString(self.fatherName)}, husbandName: ${Mapper.asString(self.husbandName)}, photo: ${Mapper.asString(self.photo)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, name: ${Mapper.asString(self.name)}, bloodGroup: ${Mapper.asString(self.bloodGroup)}, address: ${Mapper.asString(self.address)}, gender: ${Mapper.asString(self.gender)}, identifiers: ${Mapper.asString(self.identifiers)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(IndividualModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.userId) ^ Mapper.hash(self.dateOfBirth) ^ Mapper.hash(self.mobileNumber) ^ Mapper.hash(self.altContactNumber) ^ Mapper.hash(self.email) ^ Mapper.hash(self.fatherName) ^ Mapper.hash(self.husbandName) ^ Mapper.hash(self.photo) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.name) ^ Mapper.hash(self.bloodGroup) ^ Mapper.hash(self.address) ^ Mapper.hash(self.gender) ^ Mapper.hash(self.identifiers) ^ Mapper.hash(self.additionalFields);
  @override bool equals(IndividualModel self, IndividualModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.userId, other.userId) && Mapper.isEqual(self.dateOfBirth, other.dateOfBirth) && Mapper.isEqual(self.mobileNumber, other.mobileNumber) && Mapper.isEqual(self.altContactNumber, other.altContactNumber) && Mapper.isEqual(self.email, other.email) && Mapper.isEqual(self.fatherName, other.fatherName) && Mapper.isEqual(self.husbandName, other.husbandName) && Mapper.isEqual(self.photo, other.photo) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.bloodGroup, other.bloodGroup) && Mapper.isEqual(self.address, other.address) && Mapper.isEqual(self.gender, other.gender) && Mapper.isEqual(self.identifiers, other.identifiers) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<IndividualModel>();
}

extension IndividualModelMapperExtension  on IndividualModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  IndividualModelCopyWith<IndividualModel> get copyWith => IndividualModelCopyWith(this, $identity);
}

abstract class IndividualModelCopyWith<$R> {
  factory IndividualModelCopyWith(IndividualModel value, Then<IndividualModel, $R> then) = _IndividualModelCopyWithImpl<$R>;
  IndividualAdditionalFieldsCopyWith<$R>? get additionalFields;
  NameModelCopyWith<$R>? get name;
  ListCopyWith<$R, AddressModel, AddressModelCopyWith<$R>>? get address;
  ListCopyWith<$R, IdentifierModel, IdentifierModelCopyWith<$R>>? get identifiers;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({IndividualAdditionalFields? additionalFields, String? id, String? userId, String? dateOfBirth, String? mobileNumber, String? altContactNumber, String? email, String? fatherName, String? husbandName, String? photo, String? clientReferenceId, String? tenantId, bool? isDeleted, int? rowVersion, NameModel? name, BloodGroup? bloodGroup, List<AddressModel>? address, Gender? gender, List<IdentifierModel>? identifiers, AuditDetails? auditDetails});
  $R apply(IndividualModel Function(IndividualModel) transform);
}

class _IndividualModelCopyWithImpl<$R> extends BaseCopyWith<IndividualModel, $R> implements IndividualModelCopyWith<$R> {
  _IndividualModelCopyWithImpl(IndividualModel value, Then<IndividualModel, $R> then) : super(value, then);

  @override IndividualAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? IndividualAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override NameModelCopyWith<$R>? get name => $value.name != null ? NameModelCopyWith($value.name!, (v) => call(name: v)) : null;
  @override ListCopyWith<$R, AddressModel, AddressModelCopyWith<$R>>? get address => $value.address != null ? ListCopyWith($value.address!, (v, t) => AddressModelCopyWith(v, t), (v) => call(address: v)) : null;
  @override ListCopyWith<$R, IdentifierModel, IdentifierModelCopyWith<$R>>? get identifiers => $value.identifiers != null ? ListCopyWith($value.identifiers!, (v, t) => IdentifierModelCopyWith(v, t), (v) => call(identifiers: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? userId = $none, Object? dateOfBirth = $none, Object? mobileNumber = $none, Object? altContactNumber = $none, Object? email = $none, Object? fatherName = $none, Object? husbandName = $none, Object? photo = $none, String? clientReferenceId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? name = $none, Object? bloodGroup = $none, Object? address = $none, Object? gender = $none, Object? identifiers = $none, Object? auditDetails = $none}) => $then(IndividualModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), userId: or(userId, $value.userId), dateOfBirth: or(dateOfBirth, $value.dateOfBirth), mobileNumber: or(mobileNumber, $value.mobileNumber), altContactNumber: or(altContactNumber, $value.altContactNumber), email: or(email, $value.email), fatherName: or(fatherName, $value.fatherName), husbandName: or(husbandName, $value.husbandName), photo: or(photo, $value.photo), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), name: or(name, $value.name), bloodGroup: or(bloodGroup, $value.bloodGroup), address: or(address, $value.address), gender: or(gender, $value.gender), identifiers: or(identifiers, $value.identifiers), auditDetails: or(auditDetails, $value.auditDetails)));
}

class IndividualAdditionalFieldsMapper extends BaseMapper<IndividualAdditionalFields> {
  IndividualAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  IndividualAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  IndividualAdditionalFields fromMap(Map<String, dynamic> map) => IndividualAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Individual', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (IndividualAdditionalFields v) => encode(v);
  dynamic encode(IndividualAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(IndividualAdditionalFields i) => {'schema': Mapper.i.$enc(i.schema, 'schema'), 'version': Mapper.i.$enc(i.version, 'version'), 'fields': Mapper.i.$enc(i.fields, 'fields')};

  @override String stringify(IndividualAdditionalFields self) => 'IndividualAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(IndividualAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(IndividualAdditionalFields self, IndividualAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<IndividualAdditionalFields>();
}

extension IndividualAdditionalFieldsMapperExtension  on IndividualAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  IndividualAdditionalFieldsCopyWith<IndividualAdditionalFields> get copyWith => IndividualAdditionalFieldsCopyWith(this, $identity);
}

abstract class IndividualAdditionalFieldsCopyWith<$R> {
  factory IndividualAdditionalFieldsCopyWith(IndividualAdditionalFields value, Then<IndividualAdditionalFields, $R> then) = _IndividualAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(IndividualAdditionalFields Function(IndividualAdditionalFields) transform);
}

class _IndividualAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<IndividualAdditionalFields, $R> implements IndividualAdditionalFieldsCopyWith<$R> {
  _IndividualAdditionalFieldsCopyWithImpl(IndividualAdditionalFields value, Then<IndividualAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(IndividualAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class NameSearchModelMapper extends BaseMapper<NameSearchModel> {
  NameSearchModelMapper._();

  @override Function get decoder => decode;
  NameSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  NameSearchModel fromMap(Map<String, dynamic> map) => NameSearchModel(id: Mapper.i.$getOpt(map, 'id'), givenName: Mapper.i.$getOpt(map, 'givenName'), familyName: Mapper.i.$getOpt(map, 'familyName'), otherNames: Mapper.i.$getOpt(map, 'otherNames'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (NameSearchModel v) => encode(v);
  dynamic encode(NameSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(NameSearchModel n) => {if (Mapper.i.$enc(n.id, 'id') != null) 'id': Mapper.i.$enc(n.id, 'id'), if (Mapper.i.$enc(n.givenName, 'givenName') != null) 'givenName': Mapper.i.$enc(n.givenName, 'givenName'), if (Mapper.i.$enc(n.familyName, 'familyName') != null) 'familyName': Mapper.i.$enc(n.familyName, 'familyName'), if (Mapper.i.$enc(n.otherNames, 'otherNames') != null) 'otherNames': Mapper.i.$enc(n.otherNames, 'otherNames'), if (Mapper.i.$enc(n.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(n.tenantId, 'tenantId'), if (Mapper.i.$enc(n.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(n.isDeleted, 'isDeleted'), if (Mapper.i.$enc(n.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(n.boundaryCode, 'boundaryCode')};

  @override String stringify(NameSearchModel self) => 'NameSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, givenName: ${Mapper.asString(self.givenName)}, familyName: ${Mapper.asString(self.familyName)}, otherNames: ${Mapper.asString(self.otherNames)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(NameSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.givenName) ^ Mapper.hash(self.familyName) ^ Mapper.hash(self.otherNames) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(NameSearchModel self, NameSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.givenName, other.givenName) && Mapper.isEqual(self.familyName, other.familyName) && Mapper.isEqual(self.otherNames, other.otherNames) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<NameSearchModel>();
}

extension NameSearchModelMapperExtension  on NameSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  NameSearchModelCopyWith<NameSearchModel> get copyWith => NameSearchModelCopyWith(this, $identity);
}

abstract class NameSearchModelCopyWith<$R> {
  factory NameSearchModelCopyWith(NameSearchModel value, Then<NameSearchModel, $R> then) = _NameSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? givenName, String? familyName, String? otherNames, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(NameSearchModel Function(NameSearchModel) transform);
}

class _NameSearchModelCopyWithImpl<$R> extends BaseCopyWith<NameSearchModel, $R> implements NameSearchModelCopyWith<$R> {
  _NameSearchModelCopyWithImpl(NameSearchModel value, Then<NameSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? givenName = $none, Object? familyName = $none, Object? otherNames = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(NameSearchModel(id: or(id, $value.id), givenName: or(givenName, $value.givenName), familyName: or(familyName, $value.familyName), otherNames: or(otherNames, $value.otherNames), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class NameModelMapper extends BaseMapper<NameModel> {
  NameModelMapper._();

  @override Function get decoder => decode;
  NameModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  NameModel fromMap(Map<String, dynamic> map) => NameModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), individualClientReferenceId: Mapper.i.$getOpt(map, 'individualClientReferenceId'), givenName: Mapper.i.$getOpt(map, 'givenName'), familyName: Mapper.i.$getOpt(map, 'familyName'), otherNames: Mapper.i.$getOpt(map, 'otherNames'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (NameModel v) => encode(v);
  dynamic encode(NameModel v) => toMap(v);
  Map<String, dynamic> toMap(NameModel n) => {if (Mapper.i.$enc(n.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(n.additionalFields, 'additionalFields'), if (Mapper.i.$enc(n.id, 'id') != null) 'id': Mapper.i.$enc(n.id, 'id'), if (Mapper.i.$enc(n.individualClientReferenceId, 'individualClientReferenceId') != null) 'individualClientReferenceId': Mapper.i.$enc(n.individualClientReferenceId, 'individualClientReferenceId'), if (Mapper.i.$enc(n.givenName, 'givenName') != null) 'givenName': Mapper.i.$enc(n.givenName, 'givenName'), if (Mapper.i.$enc(n.familyName, 'familyName') != null) 'familyName': Mapper.i.$enc(n.familyName, 'familyName'), if (Mapper.i.$enc(n.otherNames, 'otherNames') != null) 'otherNames': Mapper.i.$enc(n.otherNames, 'otherNames'), if (Mapper.i.$enc(n.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(n.tenantId, 'tenantId'), if (Mapper.i.$enc(n.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(n.isDeleted, 'isDeleted'), if (Mapper.i.$enc(n.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(n.rowVersion, 'rowVersion'), if (Mapper.i.$enc(n.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(n.auditDetails, 'auditDetails')};

  @override String stringify(NameModel self) => 'NameModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, individualClientReferenceId: ${Mapper.asString(self.individualClientReferenceId)}, givenName: ${Mapper.asString(self.givenName)}, familyName: ${Mapper.asString(self.familyName)}, otherNames: ${Mapper.asString(self.otherNames)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(NameModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.individualClientReferenceId) ^ Mapper.hash(self.givenName) ^ Mapper.hash(self.familyName) ^ Mapper.hash(self.otherNames) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(NameModel self, NameModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.individualClientReferenceId, other.individualClientReferenceId) && Mapper.isEqual(self.givenName, other.givenName) && Mapper.isEqual(self.familyName, other.familyName) && Mapper.isEqual(self.otherNames, other.otherNames) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<NameModel>();
}

extension NameModelMapperExtension  on NameModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  NameModelCopyWith<NameModel> get copyWith => NameModelCopyWith(this, $identity);
}

abstract class NameModelCopyWith<$R> {
  factory NameModelCopyWith(NameModel value, Then<NameModel, $R> then) = _NameModelCopyWithImpl<$R>;
  NameAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({NameAdditionalFields? additionalFields, String? id, String? individualClientReferenceId, String? givenName, String? familyName, String? otherNames, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(NameModel Function(NameModel) transform);
}

class _NameModelCopyWithImpl<$R> extends BaseCopyWith<NameModel, $R> implements NameModelCopyWith<$R> {
  _NameModelCopyWithImpl(NameModel value, Then<NameModel, $R> then) : super(value, then);

  @override NameAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? NameAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? individualClientReferenceId = $none, Object? givenName = $none, Object? familyName = $none, Object? otherNames = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(NameModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), individualClientReferenceId: or(individualClientReferenceId, $value.individualClientReferenceId), givenName: or(givenName, $value.givenName), familyName: or(familyName, $value.familyName), otherNames: or(otherNames, $value.otherNames), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class NameAdditionalFieldsMapper extends BaseMapper<NameAdditionalFields> {
  NameAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  NameAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  NameAdditionalFields fromMap(Map<String, dynamic> map) => NameAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Name', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (NameAdditionalFields v) => encode(v);
  dynamic encode(NameAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(NameAdditionalFields n) => {'schema': Mapper.i.$enc(n.schema, 'schema'), 'version': Mapper.i.$enc(n.version, 'version'), 'fields': Mapper.i.$enc(n.fields, 'fields')};

  @override String stringify(NameAdditionalFields self) => 'NameAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(NameAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(NameAdditionalFields self, NameAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<NameAdditionalFields>();
}

extension NameAdditionalFieldsMapperExtension  on NameAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  NameAdditionalFieldsCopyWith<NameAdditionalFields> get copyWith => NameAdditionalFieldsCopyWith(this, $identity);
}

abstract class NameAdditionalFieldsCopyWith<$R> {
  factory NameAdditionalFieldsCopyWith(NameAdditionalFields value, Then<NameAdditionalFields, $R> then) = _NameAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(NameAdditionalFields Function(NameAdditionalFields) transform);
}

class _NameAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<NameAdditionalFields, $R> implements NameAdditionalFieldsCopyWith<$R> {
  _NameAdditionalFieldsCopyWithImpl(NameAdditionalFields value, Then<NameAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(NameAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ProductSearchModelMapper extends BaseMapper<ProductSearchModel> {
  ProductSearchModelMapper._();

  @override Function get decoder => decode;
  ProductSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProductSearchModel fromMap(Map<String, dynamic> map) => ProductSearchModel(id: Mapper.i.$getOpt(map, 'id'), type: Mapper.i.$getOpt(map, 'type'), name: Mapper.i.$getOpt(map, 'name'), manufacturer: Mapper.i.$getOpt(map, 'manufacturer'), clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ProductSearchModel v) => encode(v);
  dynamic encode(ProductSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ProductSearchModel p) => {if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.type, 'type') != null) 'type': Mapper.i.$enc(p.type, 'type'), if (Mapper.i.$enc(p.name, 'name') != null) 'name': Mapper.i.$enc(p.name, 'name'), if (Mapper.i.$enc(p.manufacturer, 'manufacturer') != null) 'manufacturer': Mapper.i.$enc(p.manufacturer, 'manufacturer'), if (Mapper.i.$enc(p.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(p.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(p.boundaryCode, 'boundaryCode')};

  @override String stringify(ProductSearchModel self) => 'ProductSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, type: ${Mapper.asString(self.type)}, name: ${Mapper.asString(self.name)}, manufacturer: ${Mapper.asString(self.manufacturer)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(ProductSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.type) ^ Mapper.hash(self.name) ^ Mapper.hash(self.manufacturer) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(ProductSearchModel self, ProductSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.type, other.type) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.manufacturer, other.manufacturer) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<ProductSearchModel>();
}

extension ProductSearchModelMapperExtension  on ProductSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProductSearchModelCopyWith<ProductSearchModel> get copyWith => ProductSearchModelCopyWith(this, $identity);
}

abstract class ProductSearchModelCopyWith<$R> {
  factory ProductSearchModelCopyWith(ProductSearchModel value, Then<ProductSearchModel, $R> then) = _ProductSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? type, String? name, String? manufacturer, List<String>? clientReferenceId, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(ProductSearchModel Function(ProductSearchModel) transform);
}

class _ProductSearchModelCopyWithImpl<$R> extends BaseCopyWith<ProductSearchModel, $R> implements ProductSearchModelCopyWith<$R> {
  _ProductSearchModelCopyWithImpl(ProductSearchModel value, Then<ProductSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? type = $none, Object? name = $none, Object? manufacturer = $none, Object? clientReferenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(ProductSearchModel(id: or(id, $value.id), type: or(type, $value.type), name: or(name, $value.name), manufacturer: or(manufacturer, $value.manufacturer), clientReferenceId: or(clientReferenceId, $value.clientReferenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ProductModelMapper extends BaseMapper<ProductModel> {
  ProductModelMapper._();

  @override Function get decoder => decode;
  ProductModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProductModel fromMap(Map<String, dynamic> map) => ProductModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), type: Mapper.i.$getOpt(map, 'type'), name: Mapper.i.$getOpt(map, 'name'), manufacturer: Mapper.i.$getOpt(map, 'manufacturer'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ProductModel v) => encode(v);
  dynamic encode(ProductModel v) => toMap(v);
  Map<String, dynamic> toMap(ProductModel p) => {if (Mapper.i.$enc(p.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(p.additionalFields, 'additionalFields'), if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.type, 'type') != null) 'type': Mapper.i.$enc(p.type, 'type'), if (Mapper.i.$enc(p.name, 'name') != null) 'name': Mapper.i.$enc(p.name, 'name'), if (Mapper.i.$enc(p.manufacturer, 'manufacturer') != null) 'manufacturer': Mapper.i.$enc(p.manufacturer, 'manufacturer'), 'clientReferenceId': Mapper.i.$enc(p.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(p.rowVersion, 'rowVersion'), if (Mapper.i.$enc(p.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(p.auditDetails, 'auditDetails')};

  @override String stringify(ProductModel self) => 'ProductModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, type: ${Mapper.asString(self.type)}, name: ${Mapper.asString(self.name)}, manufacturer: ${Mapper.asString(self.manufacturer)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ProductModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.type) ^ Mapper.hash(self.name) ^ Mapper.hash(self.manufacturer) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ProductModel self, ProductModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.type, other.type) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.manufacturer, other.manufacturer) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ProductModel>();
}

extension ProductModelMapperExtension  on ProductModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProductModelCopyWith<ProductModel> get copyWith => ProductModelCopyWith(this, $identity);
}

abstract class ProductModelCopyWith<$R> {
  factory ProductModelCopyWith(ProductModel value, Then<ProductModel, $R> then) = _ProductModelCopyWithImpl<$R>;
  ProductAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ProductAdditionalFields? additionalFields, String? id, String? type, String? name, String? manufacturer, String? clientReferenceId, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(ProductModel Function(ProductModel) transform);
}

class _ProductModelCopyWithImpl<$R> extends BaseCopyWith<ProductModel, $R> implements ProductModelCopyWith<$R> {
  _ProductModelCopyWithImpl(ProductModel value, Then<ProductModel, $R> then) : super(value, then);

  @override ProductAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ProductAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? type = $none, Object? name = $none, Object? manufacturer = $none, String? clientReferenceId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(ProductModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), type: or(type, $value.type), name: or(name, $value.name), manufacturer: or(manufacturer, $value.manufacturer), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class ProductAdditionalFieldsMapper extends BaseMapper<ProductAdditionalFields> {
  ProductAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ProductAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProductAdditionalFields fromMap(Map<String, dynamic> map) => ProductAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Product', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ProductAdditionalFields v) => encode(v);
  dynamic encode(ProductAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ProductAdditionalFields p) => {'schema': Mapper.i.$enc(p.schema, 'schema'), 'version': Mapper.i.$enc(p.version, 'version'), 'fields': Mapper.i.$enc(p.fields, 'fields')};

  @override String stringify(ProductAdditionalFields self) => 'ProductAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ProductAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ProductAdditionalFields self, ProductAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ProductAdditionalFields>();
}

extension ProductAdditionalFieldsMapperExtension  on ProductAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProductAdditionalFieldsCopyWith<ProductAdditionalFields> get copyWith => ProductAdditionalFieldsCopyWith(this, $identity);
}

abstract class ProductAdditionalFieldsCopyWith<$R> {
  factory ProductAdditionalFieldsCopyWith(ProductAdditionalFields value, Then<ProductAdditionalFields, $R> then) = _ProductAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ProductAdditionalFields Function(ProductAdditionalFields) transform);
}

class _ProductAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ProductAdditionalFields, $R> implements ProductAdditionalFieldsCopyWith<$R> {
  _ProductAdditionalFieldsCopyWithImpl(ProductAdditionalFields value, Then<ProductAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ProductAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ProductVariantSearchModelMapper extends BaseMapper<ProductVariantSearchModel> {
  ProductVariantSearchModelMapper._();

  @override Function get decoder => decode;
  ProductVariantSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProductVariantSearchModel fromMap(Map<String, dynamic> map) => ProductVariantSearchModel(id: Mapper.i.$getOpt(map, 'id'), productId: Mapper.i.$getOpt(map, 'productId'), sku: Mapper.i.$getOpt(map, 'sku'), variation: Mapper.i.$getOpt(map, 'variation'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ProductVariantSearchModel v) => encode(v);
  dynamic encode(ProductVariantSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ProductVariantSearchModel p) => {if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.productId, 'productId') != null) 'productId': Mapper.i.$enc(p.productId, 'productId'), if (Mapper.i.$enc(p.sku, 'sku') != null) 'sku': Mapper.i.$enc(p.sku, 'sku'), if (Mapper.i.$enc(p.variation, 'variation') != null) 'variation': Mapper.i.$enc(p.variation, 'variation'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(p.boundaryCode, 'boundaryCode')};

  @override String stringify(ProductVariantSearchModel self) => 'ProductVariantSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, productId: ${Mapper.asString(self.productId)}, sku: ${Mapper.asString(self.sku)}, variation: ${Mapper.asString(self.variation)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(ProductVariantSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.productId) ^ Mapper.hash(self.sku) ^ Mapper.hash(self.variation) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(ProductVariantSearchModel self, ProductVariantSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.productId, other.productId) && Mapper.isEqual(self.sku, other.sku) && Mapper.isEqual(self.variation, other.variation) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<ProductVariantSearchModel>();
}

extension ProductVariantSearchModelMapperExtension  on ProductVariantSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProductVariantSearchModelCopyWith<ProductVariantSearchModel> get copyWith => ProductVariantSearchModelCopyWith(this, $identity);
}

abstract class ProductVariantSearchModelCopyWith<$R> {
  factory ProductVariantSearchModelCopyWith(ProductVariantSearchModel value, Then<ProductVariantSearchModel, $R> then) = _ProductVariantSearchModelCopyWithImpl<$R>;
  $R call({List<String>? id, String? productId, String? sku, String? variation, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(ProductVariantSearchModel Function(ProductVariantSearchModel) transform);
}

class _ProductVariantSearchModelCopyWithImpl<$R> extends BaseCopyWith<ProductVariantSearchModel, $R> implements ProductVariantSearchModelCopyWith<$R> {
  _ProductVariantSearchModelCopyWithImpl(ProductVariantSearchModel value, Then<ProductVariantSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? productId = $none, Object? sku = $none, Object? variation = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(ProductVariantSearchModel(id: or(id, $value.id), productId: or(productId, $value.productId), sku: or(sku, $value.sku), variation: or(variation, $value.variation), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ProductVariantModelMapper extends BaseMapper<ProductVariantModel> {
  ProductVariantModelMapper._();

  @override Function get decoder => decode;
  ProductVariantModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProductVariantModel fromMap(Map<String, dynamic> map) => ProductVariantModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$get(map, 'id'), productId: Mapper.i.$getOpt(map, 'productId'), sku: Mapper.i.$getOpt(map, 'sku'), variation: Mapper.i.$getOpt(map, 'variation'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ProductVariantModel v) => encode(v);
  dynamic encode(ProductVariantModel v) => toMap(v);
  Map<String, dynamic> toMap(ProductVariantModel p) => {if (Mapper.i.$enc(p.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(p.additionalFields, 'additionalFields'), 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.productId, 'productId') != null) 'productId': Mapper.i.$enc(p.productId, 'productId'), if (Mapper.i.$enc(p.sku, 'sku') != null) 'sku': Mapper.i.$enc(p.sku, 'sku'), if (Mapper.i.$enc(p.variation, 'variation') != null) 'variation': Mapper.i.$enc(p.variation, 'variation'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(p.rowVersion, 'rowVersion'), if (Mapper.i.$enc(p.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(p.auditDetails, 'auditDetails')};

  @override String stringify(ProductVariantModel self) => 'ProductVariantModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, productId: ${Mapper.asString(self.productId)}, sku: ${Mapper.asString(self.sku)}, variation: ${Mapper.asString(self.variation)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ProductVariantModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.productId) ^ Mapper.hash(self.sku) ^ Mapper.hash(self.variation) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ProductVariantModel self, ProductVariantModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.productId, other.productId) && Mapper.isEqual(self.sku, other.sku) && Mapper.isEqual(self.variation, other.variation) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ProductVariantModel>();
}

extension ProductVariantModelMapperExtension  on ProductVariantModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProductVariantModelCopyWith<ProductVariantModel> get copyWith => ProductVariantModelCopyWith(this, $identity);
}

abstract class ProductVariantModelCopyWith<$R> {
  factory ProductVariantModelCopyWith(ProductVariantModel value, Then<ProductVariantModel, $R> then) = _ProductVariantModelCopyWithImpl<$R>;
  ProductVariantAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ProductVariantAdditionalFields? additionalFields, String? id, String? productId, String? sku, String? variation, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(ProductVariantModel Function(ProductVariantModel) transform);
}

class _ProductVariantModelCopyWithImpl<$R> extends BaseCopyWith<ProductVariantModel, $R> implements ProductVariantModelCopyWith<$R> {
  _ProductVariantModelCopyWithImpl(ProductVariantModel value, Then<ProductVariantModel, $R> then) : super(value, then);

  @override ProductVariantAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ProductVariantAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, String? id, Object? productId = $none, Object? sku = $none, Object? variation = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(ProductVariantModel(additionalFields: or(additionalFields, $value.additionalFields), id: id ?? $value.id, productId: or(productId, $value.productId), sku: or(sku, $value.sku), variation: or(variation, $value.variation), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class ProductVariantAdditionalFieldsMapper extends BaseMapper<ProductVariantAdditionalFields> {
  ProductVariantAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ProductVariantAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProductVariantAdditionalFields fromMap(Map<String, dynamic> map) => ProductVariantAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'ProductVariant', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ProductVariantAdditionalFields v) => encode(v);
  dynamic encode(ProductVariantAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ProductVariantAdditionalFields p) => {'schema': Mapper.i.$enc(p.schema, 'schema'), 'version': Mapper.i.$enc(p.version, 'version'), 'fields': Mapper.i.$enc(p.fields, 'fields')};

  @override String stringify(ProductVariantAdditionalFields self) => 'ProductVariantAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ProductVariantAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ProductVariantAdditionalFields self, ProductVariantAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ProductVariantAdditionalFields>();
}

extension ProductVariantAdditionalFieldsMapperExtension  on ProductVariantAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProductVariantAdditionalFieldsCopyWith<ProductVariantAdditionalFields> get copyWith => ProductVariantAdditionalFieldsCopyWith(this, $identity);
}

abstract class ProductVariantAdditionalFieldsCopyWith<$R> {
  factory ProductVariantAdditionalFieldsCopyWith(ProductVariantAdditionalFields value, Then<ProductVariantAdditionalFields, $R> then) = _ProductVariantAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ProductVariantAdditionalFields Function(ProductVariantAdditionalFields) transform);
}

class _ProductVariantAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ProductVariantAdditionalFields, $R> implements ProductVariantAdditionalFieldsCopyWith<$R> {
  _ProductVariantAdditionalFieldsCopyWithImpl(ProductVariantAdditionalFields value, Then<ProductVariantAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ProductVariantAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ProjectSearchModelMapper extends BaseMapper<ProjectSearchModel> {
  ProjectSearchModelMapper._();

  @override Function get decoder => decode;
  ProjectSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectSearchModel fromMap(Map<String, dynamic> map) => ProjectSearchModel(id: Mapper.i.$getOpt(map, 'id'), projectTypeId: Mapper.i.$getOpt(map, 'projectTypeId'), projectNumber: Mapper.i.$getOpt(map, 'projectNumber'), subProjectTypeId: Mapper.i.$getOpt(map, 'subProjectTypeId'), isTaskEnabled: Mapper.i.$getOpt(map, 'isTaskEnabled'), parent: Mapper.i.$getOpt(map, 'parent'), department: Mapper.i.$getOpt(map, 'department'), referenceId: Mapper.i.$getOpt(map, 'referenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), startDate: Mapper.i.$getOpt(map, 'startDate'), endDate: Mapper.i.$getOpt(map, 'endDate'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ProjectSearchModel v) => encode(v);
  dynamic encode(ProjectSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectSearchModel p) => {if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.projectTypeId, 'projectTypeId') != null) 'projectTypeId': Mapper.i.$enc(p.projectTypeId, 'projectTypeId'), if (Mapper.i.$enc(p.projectNumber, 'projectNumber') != null) 'projectNumber': Mapper.i.$enc(p.projectNumber, 'projectNumber'), if (Mapper.i.$enc(p.subProjectTypeId, 'subProjectTypeId') != null) 'subProjectTypeId': Mapper.i.$enc(p.subProjectTypeId, 'subProjectTypeId'), if (Mapper.i.$enc(p.isTaskEnabled, 'isTaskEnabled') != null) 'isTaskEnabled': Mapper.i.$enc(p.isTaskEnabled, 'isTaskEnabled'), if (Mapper.i.$enc(p.parent, 'parent') != null) 'parent': Mapper.i.$enc(p.parent, 'parent'), if (Mapper.i.$enc(p.department, 'department') != null) 'department': Mapper.i.$enc(p.department, 'department'), if (Mapper.i.$enc(p.referenceId, 'referenceId') != null) 'referenceId': Mapper.i.$enc(p.referenceId, 'referenceId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.startDate, 'startDate') != null) 'startDate': Mapper.i.$enc(p.startDate, 'startDate'), if (Mapper.i.$enc(p.endDate, 'endDate') != null) 'endDate': Mapper.i.$enc(p.endDate, 'endDate'), if (Mapper.i.$enc(p.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(p.boundaryCode, 'boundaryCode')};

  @override String stringify(ProjectSearchModel self) => 'ProjectSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, projectTypeId: ${Mapper.asString(self.projectTypeId)}, projectNumber: ${Mapper.asString(self.projectNumber)}, subProjectTypeId: ${Mapper.asString(self.subProjectTypeId)}, isTaskEnabled: ${Mapper.asString(self.isTaskEnabled)}, parent: ${Mapper.asString(self.parent)}, department: ${Mapper.asString(self.department)}, referenceId: ${Mapper.asString(self.referenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, startDateTime: ${Mapper.asString(self.startDateTime)}, endDateTime: ${Mapper.asString(self.endDateTime)})';
  @override int hash(ProjectSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.projectTypeId) ^ Mapper.hash(self.projectNumber) ^ Mapper.hash(self.subProjectTypeId) ^ Mapper.hash(self.isTaskEnabled) ^ Mapper.hash(self.parent) ^ Mapper.hash(self.department) ^ Mapper.hash(self.referenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.startDateTime) ^ Mapper.hash(self.endDateTime);
  @override bool equals(ProjectSearchModel self, ProjectSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.projectTypeId, other.projectTypeId) && Mapper.isEqual(self.projectNumber, other.projectNumber) && Mapper.isEqual(self.subProjectTypeId, other.subProjectTypeId) && Mapper.isEqual(self.isTaskEnabled, other.isTaskEnabled) && Mapper.isEqual(self.parent, other.parent) && Mapper.isEqual(self.department, other.department) && Mapper.isEqual(self.referenceId, other.referenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.startDateTime, other.startDateTime) && Mapper.isEqual(self.endDateTime, other.endDateTime);

  @override Function get typeFactory => (f) => f<ProjectSearchModel>();
}

extension ProjectSearchModelMapperExtension  on ProjectSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectSearchModelCopyWith<ProjectSearchModel> get copyWith => ProjectSearchModelCopyWith(this, $identity);
}

abstract class ProjectSearchModelCopyWith<$R> {
  factory ProjectSearchModelCopyWith(ProjectSearchModel value, Then<ProjectSearchModel, $R> then) = _ProjectSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? projectTypeId, String? projectNumber, String? subProjectTypeId, bool? isTaskEnabled, String? parent, String? department, String? referenceId, String? tenantId, bool? isDeleted, int? startDate, int? endDate, String? boundaryCode});
  $R apply(ProjectSearchModel Function(ProjectSearchModel) transform);
}

class _ProjectSearchModelCopyWithImpl<$R> extends BaseCopyWith<ProjectSearchModel, $R> implements ProjectSearchModelCopyWith<$R> {
  _ProjectSearchModelCopyWithImpl(ProjectSearchModel value, Then<ProjectSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? projectTypeId = $none, Object? projectNumber = $none, Object? subProjectTypeId = $none, Object? isTaskEnabled = $none, Object? parent = $none, Object? department = $none, Object? referenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? startDate = $none, Object? endDate = $none, Object? boundaryCode = $none}) => $then(ProjectSearchModel(id: or(id, $value.id), projectTypeId: or(projectTypeId, $value.projectTypeId), projectNumber: or(projectNumber, $value.projectNumber), subProjectTypeId: or(subProjectTypeId, $value.subProjectTypeId), isTaskEnabled: or(isTaskEnabled, $value.isTaskEnabled), parent: or(parent, $value.parent), department: or(department, $value.department), referenceId: or(referenceId, $value.referenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), startDate: or(startDate, $value.startDate), endDate: or(endDate, $value.endDate), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ProjectModelMapper extends BaseMapper<ProjectModel> {
  ProjectModelMapper._();

  @override Function get decoder => decode;
  ProjectModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectModel fromMap(Map<String, dynamic> map) => ProjectModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$get(map, 'id'), projectTypeId: Mapper.i.$getOpt(map, 'projectTypeId'), projectNumber: Mapper.i.$getOpt(map, 'projectNumber'), subProjectTypeId: Mapper.i.$getOpt(map, 'subProjectTypeId'), isTaskEnabled: Mapper.i.$getOpt(map, 'isTaskEnabled'), parent: Mapper.i.$getOpt(map, 'parent'), name: Mapper.i.$get(map, 'name'), department: Mapper.i.$getOpt(map, 'department'), description: Mapper.i.$getOpt(map, 'description'), referenceId: Mapper.i.$getOpt(map, 'referenceId'), projectHierarchy: Mapper.i.$getOpt(map, 'projectHierarchy'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), address: Mapper.i.$getOpt(map, 'address'), targets: Mapper.i.$getOpt(map, 'targets'), documents: Mapper.i.$getOpt(map, 'documents'), startDate: Mapper.i.$getOpt(map, 'startDate'), endDate: Mapper.i.$getOpt(map, 'endDate'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ProjectModel v) => encode(v);
  dynamic encode(ProjectModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectModel p) => {if (Mapper.i.$enc(p.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(p.additionalFields, 'additionalFields'), 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.projectTypeId, 'projectTypeId') != null) 'projectTypeId': Mapper.i.$enc(p.projectTypeId, 'projectTypeId'), if (Mapper.i.$enc(p.projectNumber, 'projectNumber') != null) 'projectNumber': Mapper.i.$enc(p.projectNumber, 'projectNumber'), if (Mapper.i.$enc(p.subProjectTypeId, 'subProjectTypeId') != null) 'subProjectTypeId': Mapper.i.$enc(p.subProjectTypeId, 'subProjectTypeId'), if (Mapper.i.$enc(p.isTaskEnabled, 'isTaskEnabled') != null) 'isTaskEnabled': Mapper.i.$enc(p.isTaskEnabled, 'isTaskEnabled'), if (Mapper.i.$enc(p.parent, 'parent') != null) 'parent': Mapper.i.$enc(p.parent, 'parent'), 'name': Mapper.i.$enc(p.name, 'name'), if (Mapper.i.$enc(p.department, 'department') != null) 'department': Mapper.i.$enc(p.department, 'department'), if (Mapper.i.$enc(p.description, 'description') != null) 'description': Mapper.i.$enc(p.description, 'description'), if (Mapper.i.$enc(p.referenceId, 'referenceId') != null) 'referenceId': Mapper.i.$enc(p.referenceId, 'referenceId'), if (Mapper.i.$enc(p.projectHierarchy, 'projectHierarchy') != null) 'projectHierarchy': Mapper.i.$enc(p.projectHierarchy, 'projectHierarchy'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(p.rowVersion, 'rowVersion'), if (Mapper.i.$enc(p.address, 'address') != null) 'address': Mapper.i.$enc(p.address, 'address'), if (Mapper.i.$enc(p.targets, 'targets') != null) 'targets': Mapper.i.$enc(p.targets, 'targets'), if (Mapper.i.$enc(p.documents, 'documents') != null) 'documents': Mapper.i.$enc(p.documents, 'documents'), if (Mapper.i.$enc(p.startDate, 'startDate') != null) 'startDate': Mapper.i.$enc(p.startDate, 'startDate'), if (Mapper.i.$enc(p.endDate, 'endDate') != null) 'endDate': Mapper.i.$enc(p.endDate, 'endDate'), if (Mapper.i.$enc(p.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(p.auditDetails, 'auditDetails')};

  @override String stringify(ProjectModel self) => 'ProjectModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, projectTypeId: ${Mapper.asString(self.projectTypeId)}, projectNumber: ${Mapper.asString(self.projectNumber)}, subProjectTypeId: ${Mapper.asString(self.subProjectTypeId)}, isTaskEnabled: ${Mapper.asString(self.isTaskEnabled)}, parent: ${Mapper.asString(self.parent)}, name: ${Mapper.asString(self.name)}, department: ${Mapper.asString(self.department)}, description: ${Mapper.asString(self.description)}, referenceId: ${Mapper.asString(self.referenceId)}, projectHierarchy: ${Mapper.asString(self.projectHierarchy)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, address: ${Mapper.asString(self.address)}, targets: ${Mapper.asString(self.targets)}, documents: ${Mapper.asString(self.documents)}, startDateTime: ${Mapper.asString(self.startDateTime)}, endDateTime: ${Mapper.asString(self.endDateTime)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ProjectModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.projectTypeId) ^ Mapper.hash(self.projectNumber) ^ Mapper.hash(self.subProjectTypeId) ^ Mapper.hash(self.isTaskEnabled) ^ Mapper.hash(self.parent) ^ Mapper.hash(self.name) ^ Mapper.hash(self.department) ^ Mapper.hash(self.description) ^ Mapper.hash(self.referenceId) ^ Mapper.hash(self.projectHierarchy) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.address) ^ Mapper.hash(self.targets) ^ Mapper.hash(self.documents) ^ Mapper.hash(self.startDateTime) ^ Mapper.hash(self.endDateTime) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ProjectModel self, ProjectModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.projectTypeId, other.projectTypeId) && Mapper.isEqual(self.projectNumber, other.projectNumber) && Mapper.isEqual(self.subProjectTypeId, other.subProjectTypeId) && Mapper.isEqual(self.isTaskEnabled, other.isTaskEnabled) && Mapper.isEqual(self.parent, other.parent) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.department, other.department) && Mapper.isEqual(self.description, other.description) && Mapper.isEqual(self.referenceId, other.referenceId) && Mapper.isEqual(self.projectHierarchy, other.projectHierarchy) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.address, other.address) && Mapper.isEqual(self.targets, other.targets) && Mapper.isEqual(self.documents, other.documents) && Mapper.isEqual(self.startDateTime, other.startDateTime) && Mapper.isEqual(self.endDateTime, other.endDateTime) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ProjectModel>();
}

extension ProjectModelMapperExtension  on ProjectModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectModelCopyWith<ProjectModel> get copyWith => ProjectModelCopyWith(this, $identity);
}

abstract class ProjectModelCopyWith<$R> {
  factory ProjectModelCopyWith(ProjectModel value, Then<ProjectModel, $R> then) = _ProjectModelCopyWithImpl<$R>;
  ProjectAdditionalFieldsCopyWith<$R>? get additionalFields;
  AddressModelCopyWith<$R>? get address;
  ListCopyWith<$R, TargetModel, TargetModelCopyWith<$R>>? get targets;
  ListCopyWith<$R, DocumentModel, DocumentModelCopyWith<$R>>? get documents;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ProjectAdditionalFields? additionalFields, String? id, String? projectTypeId, String? projectNumber, String? subProjectTypeId, bool? isTaskEnabled, String? parent, String? name, String? department, String? description, String? referenceId, String? projectHierarchy, String? tenantId, bool? isDeleted, int? rowVersion, AddressModel? address, List<TargetModel>? targets, List<DocumentModel>? documents, int? startDate, int? endDate, AuditDetails? auditDetails});
  $R apply(ProjectModel Function(ProjectModel) transform);
}

class _ProjectModelCopyWithImpl<$R> extends BaseCopyWith<ProjectModel, $R> implements ProjectModelCopyWith<$R> {
  _ProjectModelCopyWithImpl(ProjectModel value, Then<ProjectModel, $R> then) : super(value, then);

  @override ProjectAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ProjectAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AddressModelCopyWith<$R>? get address => $value.address != null ? AddressModelCopyWith($value.address!, (v) => call(address: v)) : null;
  @override ListCopyWith<$R, TargetModel, TargetModelCopyWith<$R>>? get targets => $value.targets != null ? ListCopyWith($value.targets!, (v, t) => TargetModelCopyWith(v, t), (v) => call(targets: v)) : null;
  @override ListCopyWith<$R, DocumentModel, DocumentModelCopyWith<$R>>? get documents => $value.documents != null ? ListCopyWith($value.documents!, (v, t) => DocumentModelCopyWith(v, t), (v) => call(documents: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, String? id, Object? projectTypeId = $none, Object? projectNumber = $none, Object? subProjectTypeId = $none, Object? isTaskEnabled = $none, Object? parent = $none, String? name, Object? department = $none, Object? description = $none, Object? referenceId = $none, Object? projectHierarchy = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? address = $none, Object? targets = $none, Object? documents = $none, Object? startDate = $none, Object? endDate = $none, Object? auditDetails = $none}) => $then(ProjectModel(additionalFields: or(additionalFields, $value.additionalFields), id: id ?? $value.id, projectTypeId: or(projectTypeId, $value.projectTypeId), projectNumber: or(projectNumber, $value.projectNumber), subProjectTypeId: or(subProjectTypeId, $value.subProjectTypeId), isTaskEnabled: or(isTaskEnabled, $value.isTaskEnabled), parent: or(parent, $value.parent), name: name ?? $value.name, department: or(department, $value.department), description: or(description, $value.description), referenceId: or(referenceId, $value.referenceId), projectHierarchy: or(projectHierarchy, $value.projectHierarchy), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), address: or(address, $value.address), targets: or(targets, $value.targets), documents: or(documents, $value.documents), startDate: or(startDate, $value.startDate), endDate: or(endDate, $value.endDate), auditDetails: or(auditDetails, $value.auditDetails)));
}

class ProjectAdditionalFieldsMapper extends BaseMapper<ProjectAdditionalFields> {
  ProjectAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ProjectAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectAdditionalFields fromMap(Map<String, dynamic> map) => ProjectAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Project', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ProjectAdditionalFields v) => encode(v);
  dynamic encode(ProjectAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ProjectAdditionalFields p) => {'schema': Mapper.i.$enc(p.schema, 'schema'), 'version': Mapper.i.$enc(p.version, 'version'), 'fields': Mapper.i.$enc(p.fields, 'fields')};

  @override String stringify(ProjectAdditionalFields self) => 'ProjectAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ProjectAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ProjectAdditionalFields self, ProjectAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ProjectAdditionalFields>();
}

extension ProjectAdditionalFieldsMapperExtension  on ProjectAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectAdditionalFieldsCopyWith<ProjectAdditionalFields> get copyWith => ProjectAdditionalFieldsCopyWith(this, $identity);
}

abstract class ProjectAdditionalFieldsCopyWith<$R> {
  factory ProjectAdditionalFieldsCopyWith(ProjectAdditionalFields value, Then<ProjectAdditionalFields, $R> then) = _ProjectAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ProjectAdditionalFields Function(ProjectAdditionalFields) transform);
}

class _ProjectAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ProjectAdditionalFields, $R> implements ProjectAdditionalFieldsCopyWith<$R> {
  _ProjectAdditionalFieldsCopyWithImpl(ProjectAdditionalFields value, Then<ProjectAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ProjectAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ProjectBeneficiarySearchModelMapper extends BaseMapper<ProjectBeneficiarySearchModel> {
  ProjectBeneficiarySearchModelMapper._();

  @override Function get decoder => decode;
  ProjectBeneficiarySearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectBeneficiarySearchModel fromMap(Map<String, dynamic> map) => ProjectBeneficiarySearchModel(id: Mapper.i.$getOpt(map, 'id'), projectId: Mapper.i.$getOpt(map, 'projectId'), beneficiaryId: Mapper.i.$getOpt(map, 'beneficiaryId'), beneficiaryClientReferenceId: Mapper.i.$getOpt(map, 'beneficiaryClientReferenceId'), clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), dateOfRegistration: Mapper.i.$getOpt(map, 'dateOfRegistration'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ProjectBeneficiarySearchModel v) => encode(v);
  dynamic encode(ProjectBeneficiarySearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectBeneficiarySearchModel p) => {if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.projectId, 'projectId') != null) 'projectId': Mapper.i.$enc(p.projectId, 'projectId'), if (Mapper.i.$enc(p.beneficiaryId, 'beneficiaryId') != null) 'beneficiaryId': Mapper.i.$enc(p.beneficiaryId, 'beneficiaryId'), if (Mapper.i.$enc(p.beneficiaryClientReferenceId, 'beneficiaryClientReferenceId') != null) 'beneficiaryClientReferenceId': Mapper.i.$enc(p.beneficiaryClientReferenceId, 'beneficiaryClientReferenceId'), if (Mapper.i.$enc(p.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(p.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.dateOfRegistration, 'dateOfRegistration') != null) 'dateOfRegistration': Mapper.i.$enc(p.dateOfRegistration, 'dateOfRegistration'), if (Mapper.i.$enc(p.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(p.boundaryCode, 'boundaryCode')};

  @override String stringify(ProjectBeneficiarySearchModel self) => 'ProjectBeneficiarySearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, projectId: ${Mapper.asString(self.projectId)}, beneficiaryId: ${Mapper.asString(self.beneficiaryId)}, beneficiaryClientReferenceId: ${Mapper.asString(self.beneficiaryClientReferenceId)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, dateOfRegistrationTime: ${Mapper.asString(self.dateOfRegistrationTime)})';
  @override int hash(ProjectBeneficiarySearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.projectId) ^ Mapper.hash(self.beneficiaryId) ^ Mapper.hash(self.beneficiaryClientReferenceId) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.dateOfRegistrationTime);
  @override bool equals(ProjectBeneficiarySearchModel self, ProjectBeneficiarySearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.projectId, other.projectId) && Mapper.isEqual(self.beneficiaryId, other.beneficiaryId) && Mapper.isEqual(self.beneficiaryClientReferenceId, other.beneficiaryClientReferenceId) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.dateOfRegistrationTime, other.dateOfRegistrationTime);

  @override Function get typeFactory => (f) => f<ProjectBeneficiarySearchModel>();
}

extension ProjectBeneficiarySearchModelMapperExtension  on ProjectBeneficiarySearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectBeneficiarySearchModelCopyWith<ProjectBeneficiarySearchModel> get copyWith => ProjectBeneficiarySearchModelCopyWith(this, $identity);
}

abstract class ProjectBeneficiarySearchModelCopyWith<$R> {
  factory ProjectBeneficiarySearchModelCopyWith(ProjectBeneficiarySearchModel value, Then<ProjectBeneficiarySearchModel, $R> then) = _ProjectBeneficiarySearchModelCopyWithImpl<$R>;
  $R call({String? id, String? projectId, String? beneficiaryId, String? beneficiaryClientReferenceId, List<String>? clientReferenceId, String? tenantId, bool? isDeleted, int? dateOfRegistration, String? boundaryCode});
  $R apply(ProjectBeneficiarySearchModel Function(ProjectBeneficiarySearchModel) transform);
}

class _ProjectBeneficiarySearchModelCopyWithImpl<$R> extends BaseCopyWith<ProjectBeneficiarySearchModel, $R> implements ProjectBeneficiarySearchModelCopyWith<$R> {
  _ProjectBeneficiarySearchModelCopyWithImpl(ProjectBeneficiarySearchModel value, Then<ProjectBeneficiarySearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? projectId = $none, Object? beneficiaryId = $none, Object? beneficiaryClientReferenceId = $none, Object? clientReferenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? dateOfRegistration = $none, Object? boundaryCode = $none}) => $then(ProjectBeneficiarySearchModel(id: or(id, $value.id), projectId: or(projectId, $value.projectId), beneficiaryId: or(beneficiaryId, $value.beneficiaryId), beneficiaryClientReferenceId: or(beneficiaryClientReferenceId, $value.beneficiaryClientReferenceId), clientReferenceId: or(clientReferenceId, $value.clientReferenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), dateOfRegistration: or(dateOfRegistration, $value.dateOfRegistration), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ProjectBeneficiaryModelMapper extends BaseMapper<ProjectBeneficiaryModel> {
  ProjectBeneficiaryModelMapper._();

  @override Function get decoder => decode;
  ProjectBeneficiaryModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectBeneficiaryModel fromMap(Map<String, dynamic> map) => ProjectBeneficiaryModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), projectId: Mapper.i.$getOpt(map, 'projectId'), beneficiaryId: Mapper.i.$getOpt(map, 'beneficiaryId'), beneficiaryClientReferenceId: Mapper.i.$getOpt(map, 'beneficiaryClientReferenceId'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), dateOfRegistration: Mapper.i.$get(map, 'dateOfRegistration'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ProjectBeneficiaryModel v) => encode(v);
  dynamic encode(ProjectBeneficiaryModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectBeneficiaryModel p) => {if (Mapper.i.$enc(p.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(p.additionalFields, 'additionalFields'), if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.projectId, 'projectId') != null) 'projectId': Mapper.i.$enc(p.projectId, 'projectId'), if (Mapper.i.$enc(p.beneficiaryId, 'beneficiaryId') != null) 'beneficiaryId': Mapper.i.$enc(p.beneficiaryId, 'beneficiaryId'), if (Mapper.i.$enc(p.beneficiaryClientReferenceId, 'beneficiaryClientReferenceId') != null) 'beneficiaryClientReferenceId': Mapper.i.$enc(p.beneficiaryClientReferenceId, 'beneficiaryClientReferenceId'), 'clientReferenceId': Mapper.i.$enc(p.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(p.rowVersion, 'rowVersion'), 'dateOfRegistration': Mapper.i.$enc(p.dateOfRegistration, 'dateOfRegistration'), if (Mapper.i.$enc(p.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(p.auditDetails, 'auditDetails')};

  @override String stringify(ProjectBeneficiaryModel self) => 'ProjectBeneficiaryModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, projectId: ${Mapper.asString(self.projectId)}, beneficiaryId: ${Mapper.asString(self.beneficiaryId)}, beneficiaryClientReferenceId: ${Mapper.asString(self.beneficiaryClientReferenceId)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, dateOfRegistrationTime: ${Mapper.asString(self.dateOfRegistrationTime)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ProjectBeneficiaryModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.projectId) ^ Mapper.hash(self.beneficiaryId) ^ Mapper.hash(self.beneficiaryClientReferenceId) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.dateOfRegistrationTime) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ProjectBeneficiaryModel self, ProjectBeneficiaryModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.projectId, other.projectId) && Mapper.isEqual(self.beneficiaryId, other.beneficiaryId) && Mapper.isEqual(self.beneficiaryClientReferenceId, other.beneficiaryClientReferenceId) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.dateOfRegistrationTime, other.dateOfRegistrationTime) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ProjectBeneficiaryModel>();
}

extension ProjectBeneficiaryModelMapperExtension  on ProjectBeneficiaryModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectBeneficiaryModelCopyWith<ProjectBeneficiaryModel> get copyWith => ProjectBeneficiaryModelCopyWith(this, $identity);
}

abstract class ProjectBeneficiaryModelCopyWith<$R> {
  factory ProjectBeneficiaryModelCopyWith(ProjectBeneficiaryModel value, Then<ProjectBeneficiaryModel, $R> then) = _ProjectBeneficiaryModelCopyWithImpl<$R>;
  ProjectBeneficiaryAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ProjectBeneficiaryAdditionalFields? additionalFields, String? id, String? projectId, String? beneficiaryId, String? beneficiaryClientReferenceId, String? clientReferenceId, String? tenantId, bool? isDeleted, int? rowVersion, int? dateOfRegistration, AuditDetails? auditDetails});
  $R apply(ProjectBeneficiaryModel Function(ProjectBeneficiaryModel) transform);
}

class _ProjectBeneficiaryModelCopyWithImpl<$R> extends BaseCopyWith<ProjectBeneficiaryModel, $R> implements ProjectBeneficiaryModelCopyWith<$R> {
  _ProjectBeneficiaryModelCopyWithImpl(ProjectBeneficiaryModel value, Then<ProjectBeneficiaryModel, $R> then) : super(value, then);

  @override ProjectBeneficiaryAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ProjectBeneficiaryAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? projectId = $none, Object? beneficiaryId = $none, Object? beneficiaryClientReferenceId = $none, String? clientReferenceId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, int? dateOfRegistration, Object? auditDetails = $none}) => $then(ProjectBeneficiaryModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), projectId: or(projectId, $value.projectId), beneficiaryId: or(beneficiaryId, $value.beneficiaryId), beneficiaryClientReferenceId: or(beneficiaryClientReferenceId, $value.beneficiaryClientReferenceId), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), dateOfRegistration: dateOfRegistration ?? $value.dateOfRegistration, auditDetails: or(auditDetails, $value.auditDetails)));
}

class ProjectBeneficiaryAdditionalFieldsMapper extends BaseMapper<ProjectBeneficiaryAdditionalFields> {
  ProjectBeneficiaryAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ProjectBeneficiaryAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectBeneficiaryAdditionalFields fromMap(Map<String, dynamic> map) => ProjectBeneficiaryAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'ProjectBeneficiary', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ProjectBeneficiaryAdditionalFields v) => encode(v);
  dynamic encode(ProjectBeneficiaryAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ProjectBeneficiaryAdditionalFields p) => {'schema': Mapper.i.$enc(p.schema, 'schema'), 'version': Mapper.i.$enc(p.version, 'version'), 'fields': Mapper.i.$enc(p.fields, 'fields')};

  @override String stringify(ProjectBeneficiaryAdditionalFields self) => 'ProjectBeneficiaryAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ProjectBeneficiaryAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ProjectBeneficiaryAdditionalFields self, ProjectBeneficiaryAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ProjectBeneficiaryAdditionalFields>();
}

extension ProjectBeneficiaryAdditionalFieldsMapperExtension  on ProjectBeneficiaryAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectBeneficiaryAdditionalFieldsCopyWith<ProjectBeneficiaryAdditionalFields> get copyWith => ProjectBeneficiaryAdditionalFieldsCopyWith(this, $identity);
}

abstract class ProjectBeneficiaryAdditionalFieldsCopyWith<$R> {
  factory ProjectBeneficiaryAdditionalFieldsCopyWith(ProjectBeneficiaryAdditionalFields value, Then<ProjectBeneficiaryAdditionalFields, $R> then) = _ProjectBeneficiaryAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ProjectBeneficiaryAdditionalFields Function(ProjectBeneficiaryAdditionalFields) transform);
}

class _ProjectBeneficiaryAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ProjectBeneficiaryAdditionalFields, $R> implements ProjectBeneficiaryAdditionalFieldsCopyWith<$R> {
  _ProjectBeneficiaryAdditionalFieldsCopyWithImpl(ProjectBeneficiaryAdditionalFields value, Then<ProjectBeneficiaryAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ProjectBeneficiaryAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ProjectFacilitySearchModelMapper extends BaseMapper<ProjectFacilitySearchModel> {
  ProjectFacilitySearchModelMapper._();

  @override Function get decoder => decode;
  ProjectFacilitySearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectFacilitySearchModel fromMap(Map<String, dynamic> map) => ProjectFacilitySearchModel(id: Mapper.i.$getOpt(map, 'id'), facilityId: Mapper.i.$getOpt(map, 'facilityId'), projectId: Mapper.i.$getOpt(map, 'projectId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ProjectFacilitySearchModel v) => encode(v);
  dynamic encode(ProjectFacilitySearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectFacilitySearchModel p) => {if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.facilityId, 'facilityId') != null) 'facilityId': Mapper.i.$enc(p.facilityId, 'facilityId'), if (Mapper.i.$enc(p.projectId, 'projectId') != null) 'projectId': Mapper.i.$enc(p.projectId, 'projectId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(p.boundaryCode, 'boundaryCode')};

  @override String stringify(ProjectFacilitySearchModel self) => 'ProjectFacilitySearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, facilityId: ${Mapper.asString(self.facilityId)}, projectId: ${Mapper.asString(self.projectId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(ProjectFacilitySearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.facilityId) ^ Mapper.hash(self.projectId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(ProjectFacilitySearchModel self, ProjectFacilitySearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.facilityId, other.facilityId) && Mapper.isEqual(self.projectId, other.projectId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<ProjectFacilitySearchModel>();
}

extension ProjectFacilitySearchModelMapperExtension  on ProjectFacilitySearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectFacilitySearchModelCopyWith<ProjectFacilitySearchModel> get copyWith => ProjectFacilitySearchModelCopyWith(this, $identity);
}

abstract class ProjectFacilitySearchModelCopyWith<$R> {
  factory ProjectFacilitySearchModelCopyWith(ProjectFacilitySearchModel value, Then<ProjectFacilitySearchModel, $R> then) = _ProjectFacilitySearchModelCopyWithImpl<$R>;
  $R call({String? id, List<String>? facilityId, List<String>? projectId, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(ProjectFacilitySearchModel Function(ProjectFacilitySearchModel) transform);
}

class _ProjectFacilitySearchModelCopyWithImpl<$R> extends BaseCopyWith<ProjectFacilitySearchModel, $R> implements ProjectFacilitySearchModelCopyWith<$R> {
  _ProjectFacilitySearchModelCopyWithImpl(ProjectFacilitySearchModel value, Then<ProjectFacilitySearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? facilityId = $none, Object? projectId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(ProjectFacilitySearchModel(id: or(id, $value.id), facilityId: or(facilityId, $value.facilityId), projectId: or(projectId, $value.projectId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ProjectFacilityModelMapper extends BaseMapper<ProjectFacilityModel> {
  ProjectFacilityModelMapper._();

  @override Function get decoder => decode;
  ProjectFacilityModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectFacilityModel fromMap(Map<String, dynamic> map) => ProjectFacilityModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$get(map, 'id'), facilityId: Mapper.i.$get(map, 'facilityId'), projectId: Mapper.i.$get(map, 'projectId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ProjectFacilityModel v) => encode(v);
  dynamic encode(ProjectFacilityModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectFacilityModel p) => {if (Mapper.i.$enc(p.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(p.additionalFields, 'additionalFields'), 'id': Mapper.i.$enc(p.id, 'id'), 'facilityId': Mapper.i.$enc(p.facilityId, 'facilityId'), 'projectId': Mapper.i.$enc(p.projectId, 'projectId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(p.rowVersion, 'rowVersion'), if (Mapper.i.$enc(p.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(p.auditDetails, 'auditDetails')};

  @override String stringify(ProjectFacilityModel self) => 'ProjectFacilityModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, facilityId: ${Mapper.asString(self.facilityId)}, projectId: ${Mapper.asString(self.projectId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ProjectFacilityModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.facilityId) ^ Mapper.hash(self.projectId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ProjectFacilityModel self, ProjectFacilityModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.facilityId, other.facilityId) && Mapper.isEqual(self.projectId, other.projectId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ProjectFacilityModel>();
}

extension ProjectFacilityModelMapperExtension  on ProjectFacilityModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectFacilityModelCopyWith<ProjectFacilityModel> get copyWith => ProjectFacilityModelCopyWith(this, $identity);
}

abstract class ProjectFacilityModelCopyWith<$R> {
  factory ProjectFacilityModelCopyWith(ProjectFacilityModel value, Then<ProjectFacilityModel, $R> then) = _ProjectFacilityModelCopyWithImpl<$R>;
  ProjectFacilityAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ProjectFacilityAdditionalFields? additionalFields, String? id, String? facilityId, String? projectId, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(ProjectFacilityModel Function(ProjectFacilityModel) transform);
}

class _ProjectFacilityModelCopyWithImpl<$R> extends BaseCopyWith<ProjectFacilityModel, $R> implements ProjectFacilityModelCopyWith<$R> {
  _ProjectFacilityModelCopyWithImpl(ProjectFacilityModel value, Then<ProjectFacilityModel, $R> then) : super(value, then);

  @override ProjectFacilityAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ProjectFacilityAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, String? id, String? facilityId, String? projectId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(ProjectFacilityModel(additionalFields: or(additionalFields, $value.additionalFields), id: id ?? $value.id, facilityId: facilityId ?? $value.facilityId, projectId: projectId ?? $value.projectId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class ProjectFacilityAdditionalFieldsMapper extends BaseMapper<ProjectFacilityAdditionalFields> {
  ProjectFacilityAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ProjectFacilityAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectFacilityAdditionalFields fromMap(Map<String, dynamic> map) => ProjectFacilityAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'ProjectFacility', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ProjectFacilityAdditionalFields v) => encode(v);
  dynamic encode(ProjectFacilityAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ProjectFacilityAdditionalFields p) => {'schema': Mapper.i.$enc(p.schema, 'schema'), 'version': Mapper.i.$enc(p.version, 'version'), 'fields': Mapper.i.$enc(p.fields, 'fields')};

  @override String stringify(ProjectFacilityAdditionalFields self) => 'ProjectFacilityAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ProjectFacilityAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ProjectFacilityAdditionalFields self, ProjectFacilityAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ProjectFacilityAdditionalFields>();
}

extension ProjectFacilityAdditionalFieldsMapperExtension  on ProjectFacilityAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectFacilityAdditionalFieldsCopyWith<ProjectFacilityAdditionalFields> get copyWith => ProjectFacilityAdditionalFieldsCopyWith(this, $identity);
}

abstract class ProjectFacilityAdditionalFieldsCopyWith<$R> {
  factory ProjectFacilityAdditionalFieldsCopyWith(ProjectFacilityAdditionalFields value, Then<ProjectFacilityAdditionalFields, $R> then) = _ProjectFacilityAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ProjectFacilityAdditionalFields Function(ProjectFacilityAdditionalFields) transform);
}

class _ProjectFacilityAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ProjectFacilityAdditionalFields, $R> implements ProjectFacilityAdditionalFieldsCopyWith<$R> {
  _ProjectFacilityAdditionalFieldsCopyWithImpl(ProjectFacilityAdditionalFields value, Then<ProjectFacilityAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ProjectFacilityAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ProjectProductVariantSearchModelMapper extends BaseMapper<ProjectProductVariantSearchModel> {
  ProjectProductVariantSearchModelMapper._();

  @override Function get decoder => decode;
  ProjectProductVariantSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectProductVariantSearchModel fromMap(Map<String, dynamic> map) => ProjectProductVariantSearchModel(productVariantId: Mapper.i.$getOpt(map, 'productVariantId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ProjectProductVariantSearchModel v) => encode(v);
  dynamic encode(ProjectProductVariantSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectProductVariantSearchModel p) => {if (Mapper.i.$enc(p.productVariantId, 'productVariantId') != null) 'productVariantId': Mapper.i.$enc(p.productVariantId, 'productVariantId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(p.boundaryCode, 'boundaryCode')};

  @override String stringify(ProjectProductVariantSearchModel self) => 'ProjectProductVariantSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, productVariantId: ${Mapper.asString(self.productVariantId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(ProjectProductVariantSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.productVariantId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(ProjectProductVariantSearchModel self, ProjectProductVariantSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.productVariantId, other.productVariantId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<ProjectProductVariantSearchModel>();
}

extension ProjectProductVariantSearchModelMapperExtension  on ProjectProductVariantSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectProductVariantSearchModelCopyWith<ProjectProductVariantSearchModel> get copyWith => ProjectProductVariantSearchModelCopyWith(this, $identity);
}

abstract class ProjectProductVariantSearchModelCopyWith<$R> {
  factory ProjectProductVariantSearchModelCopyWith(ProjectProductVariantSearchModel value, Then<ProjectProductVariantSearchModel, $R> then) = _ProjectProductVariantSearchModelCopyWithImpl<$R>;
  $R call({String? productVariantId, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(ProjectProductVariantSearchModel Function(ProjectProductVariantSearchModel) transform);
}

class _ProjectProductVariantSearchModelCopyWithImpl<$R> extends BaseCopyWith<ProjectProductVariantSearchModel, $R> implements ProjectProductVariantSearchModelCopyWith<$R> {
  _ProjectProductVariantSearchModelCopyWithImpl(ProjectProductVariantSearchModel value, Then<ProjectProductVariantSearchModel, $R> then) : super(value, then);

  @override $R call({Object? productVariantId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(ProjectProductVariantSearchModel(productVariantId: or(productVariantId, $value.productVariantId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ProjectProductVariantModelMapper extends BaseMapper<ProjectProductVariantModel> {
  ProjectProductVariantModelMapper._();

  @override Function get decoder => decode;
  ProjectProductVariantModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectProductVariantModel fromMap(Map<String, dynamic> map) => ProjectProductVariantModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), productVariantId: Mapper.i.$get(map, 'productVariantId'), type: Mapper.i.$getOpt(map, 'type'), isBaseUnitVariant: Mapper.i.$getOpt(map, 'isBaseUnitVariant'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ProjectProductVariantModel v) => encode(v);
  dynamic encode(ProjectProductVariantModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectProductVariantModel p) => {if (Mapper.i.$enc(p.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(p.additionalFields, 'additionalFields'), 'productVariantId': Mapper.i.$enc(p.productVariantId, 'productVariantId'), if (Mapper.i.$enc(p.type, 'type') != null) 'type': Mapper.i.$enc(p.type, 'type'), if (Mapper.i.$enc(p.isBaseUnitVariant, 'isBaseUnitVariant') != null) 'isBaseUnitVariant': Mapper.i.$enc(p.isBaseUnitVariant, 'isBaseUnitVariant'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(p.rowVersion, 'rowVersion'), if (Mapper.i.$enc(p.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(p.auditDetails, 'auditDetails')};

  @override String stringify(ProjectProductVariantModel self) => 'ProjectProductVariantModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, productVariantId: ${Mapper.asString(self.productVariantId)}, type: ${Mapper.asString(self.type)}, isBaseUnitVariant: ${Mapper.asString(self.isBaseUnitVariant)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ProjectProductVariantModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.productVariantId) ^ Mapper.hash(self.type) ^ Mapper.hash(self.isBaseUnitVariant) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ProjectProductVariantModel self, ProjectProductVariantModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.productVariantId, other.productVariantId) && Mapper.isEqual(self.type, other.type) && Mapper.isEqual(self.isBaseUnitVariant, other.isBaseUnitVariant) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ProjectProductVariantModel>();
}

extension ProjectProductVariantModelMapperExtension  on ProjectProductVariantModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectProductVariantModelCopyWith<ProjectProductVariantModel> get copyWith => ProjectProductVariantModelCopyWith(this, $identity);
}

abstract class ProjectProductVariantModelCopyWith<$R> {
  factory ProjectProductVariantModelCopyWith(ProjectProductVariantModel value, Then<ProjectProductVariantModel, $R> then) = _ProjectProductVariantModelCopyWithImpl<$R>;
  ProjectProductVariantAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ProjectProductVariantAdditionalFields? additionalFields, String? productVariantId, String? type, bool? isBaseUnitVariant, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(ProjectProductVariantModel Function(ProjectProductVariantModel) transform);
}

class _ProjectProductVariantModelCopyWithImpl<$R> extends BaseCopyWith<ProjectProductVariantModel, $R> implements ProjectProductVariantModelCopyWith<$R> {
  _ProjectProductVariantModelCopyWithImpl(ProjectProductVariantModel value, Then<ProjectProductVariantModel, $R> then) : super(value, then);

  @override ProjectProductVariantAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ProjectProductVariantAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, String? productVariantId, Object? type = $none, Object? isBaseUnitVariant = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(ProjectProductVariantModel(additionalFields: or(additionalFields, $value.additionalFields), productVariantId: productVariantId ?? $value.productVariantId, type: or(type, $value.type), isBaseUnitVariant: or(isBaseUnitVariant, $value.isBaseUnitVariant), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class ProjectProductVariantAdditionalFieldsMapper extends BaseMapper<ProjectProductVariantAdditionalFields> {
  ProjectProductVariantAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ProjectProductVariantAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectProductVariantAdditionalFields fromMap(Map<String, dynamic> map) => ProjectProductVariantAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'ProjectProductVariant', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ProjectProductVariantAdditionalFields v) => encode(v);
  dynamic encode(ProjectProductVariantAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ProjectProductVariantAdditionalFields p) => {'schema': Mapper.i.$enc(p.schema, 'schema'), 'version': Mapper.i.$enc(p.version, 'version'), 'fields': Mapper.i.$enc(p.fields, 'fields')};

  @override String stringify(ProjectProductVariantAdditionalFields self) => 'ProjectProductVariantAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ProjectProductVariantAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ProjectProductVariantAdditionalFields self, ProjectProductVariantAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ProjectProductVariantAdditionalFields>();
}

extension ProjectProductVariantAdditionalFieldsMapperExtension  on ProjectProductVariantAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectProductVariantAdditionalFieldsCopyWith<ProjectProductVariantAdditionalFields> get copyWith => ProjectProductVariantAdditionalFieldsCopyWith(this, $identity);
}

abstract class ProjectProductVariantAdditionalFieldsCopyWith<$R> {
  factory ProjectProductVariantAdditionalFieldsCopyWith(ProjectProductVariantAdditionalFields value, Then<ProjectProductVariantAdditionalFields, $R> then) = _ProjectProductVariantAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ProjectProductVariantAdditionalFields Function(ProjectProductVariantAdditionalFields) transform);
}

class _ProjectProductVariantAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ProjectProductVariantAdditionalFields, $R> implements ProjectProductVariantAdditionalFieldsCopyWith<$R> {
  _ProjectProductVariantAdditionalFieldsCopyWithImpl(ProjectProductVariantAdditionalFields value, Then<ProjectProductVariantAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ProjectProductVariantAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ProjectResourceSearchModelMapper extends BaseMapper<ProjectResourceSearchModel> {
  ProjectResourceSearchModelMapper._();

  @override Function get decoder => decode;
  ProjectResourceSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectResourceSearchModel fromMap(Map<String, dynamic> map) => ProjectResourceSearchModel(id: Mapper.i.$getOpt(map, 'id'), projectId: Mapper.i.$getOpt(map, 'projectId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ProjectResourceSearchModel v) => encode(v);
  dynamic encode(ProjectResourceSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectResourceSearchModel p) => {if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.projectId, 'projectId') != null) 'projectId': Mapper.i.$enc(p.projectId, 'projectId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(p.boundaryCode, 'boundaryCode')};

  @override String stringify(ProjectResourceSearchModel self) => 'ProjectResourceSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, projectId: ${Mapper.asString(self.projectId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(ProjectResourceSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.projectId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(ProjectResourceSearchModel self, ProjectResourceSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.projectId, other.projectId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<ProjectResourceSearchModel>();
}

extension ProjectResourceSearchModelMapperExtension  on ProjectResourceSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectResourceSearchModelCopyWith<ProjectResourceSearchModel> get copyWith => ProjectResourceSearchModelCopyWith(this, $identity);
}

abstract class ProjectResourceSearchModelCopyWith<$R> {
  factory ProjectResourceSearchModelCopyWith(ProjectResourceSearchModel value, Then<ProjectResourceSearchModel, $R> then) = _ProjectResourceSearchModelCopyWithImpl<$R>;
  $R call({List<String>? id, String? projectId, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(ProjectResourceSearchModel Function(ProjectResourceSearchModel) transform);
}

class _ProjectResourceSearchModelCopyWithImpl<$R> extends BaseCopyWith<ProjectResourceSearchModel, $R> implements ProjectResourceSearchModelCopyWith<$R> {
  _ProjectResourceSearchModelCopyWithImpl(ProjectResourceSearchModel value, Then<ProjectResourceSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? projectId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(ProjectResourceSearchModel(id: or(id, $value.id), projectId: or(projectId, $value.projectId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ProjectResourceModelMapper extends BaseMapper<ProjectResourceModel> {
  ProjectResourceModelMapper._();

  @override Function get decoder => decode;
  ProjectResourceModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectResourceModel fromMap(Map<String, dynamic> map) => ProjectResourceModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), projectId: Mapper.i.$getOpt(map, 'projectId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), resource: Mapper.i.$get(map, 'resource'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ProjectResourceModel v) => encode(v);
  dynamic encode(ProjectResourceModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectResourceModel p) => {if (Mapper.i.$enc(p.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(p.additionalFields, 'additionalFields'), if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.projectId, 'projectId') != null) 'projectId': Mapper.i.$enc(p.projectId, 'projectId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(p.rowVersion, 'rowVersion'), 'resource': Mapper.i.$enc(p.resource, 'resource'), if (Mapper.i.$enc(p.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(p.auditDetails, 'auditDetails')};

  @override String stringify(ProjectResourceModel self) => 'ProjectResourceModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, projectId: ${Mapper.asString(self.projectId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, resource: ${Mapper.asString(self.resource)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ProjectResourceModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.projectId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.resource) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ProjectResourceModel self, ProjectResourceModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.projectId, other.projectId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.resource, other.resource) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ProjectResourceModel>();
}

extension ProjectResourceModelMapperExtension  on ProjectResourceModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectResourceModelCopyWith<ProjectResourceModel> get copyWith => ProjectResourceModelCopyWith(this, $identity);
}

abstract class ProjectResourceModelCopyWith<$R> {
  factory ProjectResourceModelCopyWith(ProjectResourceModel value, Then<ProjectResourceModel, $R> then) = _ProjectResourceModelCopyWithImpl<$R>;
  ProjectResourceAdditionalFieldsCopyWith<$R>? get additionalFields;
  ProjectProductVariantModelCopyWith<$R> get resource;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ProjectResourceAdditionalFields? additionalFields, String? id, String? projectId, String? tenantId, bool? isDeleted, int? rowVersion, ProjectProductVariantModel? resource, AuditDetails? auditDetails});
  $R apply(ProjectResourceModel Function(ProjectResourceModel) transform);
}

class _ProjectResourceModelCopyWithImpl<$R> extends BaseCopyWith<ProjectResourceModel, $R> implements ProjectResourceModelCopyWith<$R> {
  _ProjectResourceModelCopyWithImpl(ProjectResourceModel value, Then<ProjectResourceModel, $R> then) : super(value, then);

  @override ProjectResourceAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ProjectResourceAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override ProjectProductVariantModelCopyWith<$R> get resource => ProjectProductVariantModelCopyWith($value.resource, (v) => call(resource: v));
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? projectId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, ProjectProductVariantModel? resource, Object? auditDetails = $none}) => $then(ProjectResourceModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), projectId: or(projectId, $value.projectId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), resource: resource ?? $value.resource, auditDetails: or(auditDetails, $value.auditDetails)));
}

class ProjectResourceAdditionalFieldsMapper extends BaseMapper<ProjectResourceAdditionalFields> {
  ProjectResourceAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ProjectResourceAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectResourceAdditionalFields fromMap(Map<String, dynamic> map) => ProjectResourceAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'ProjectResource', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ProjectResourceAdditionalFields v) => encode(v);
  dynamic encode(ProjectResourceAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ProjectResourceAdditionalFields p) => {'schema': Mapper.i.$enc(p.schema, 'schema'), 'version': Mapper.i.$enc(p.version, 'version'), 'fields': Mapper.i.$enc(p.fields, 'fields')};

  @override String stringify(ProjectResourceAdditionalFields self) => 'ProjectResourceAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ProjectResourceAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ProjectResourceAdditionalFields self, ProjectResourceAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ProjectResourceAdditionalFields>();
}

extension ProjectResourceAdditionalFieldsMapperExtension  on ProjectResourceAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectResourceAdditionalFieldsCopyWith<ProjectResourceAdditionalFields> get copyWith => ProjectResourceAdditionalFieldsCopyWith(this, $identity);
}

abstract class ProjectResourceAdditionalFieldsCopyWith<$R> {
  factory ProjectResourceAdditionalFieldsCopyWith(ProjectResourceAdditionalFields value, Then<ProjectResourceAdditionalFields, $R> then) = _ProjectResourceAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ProjectResourceAdditionalFields Function(ProjectResourceAdditionalFields) transform);
}

class _ProjectResourceAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ProjectResourceAdditionalFields, $R> implements ProjectResourceAdditionalFieldsCopyWith<$R> {
  _ProjectResourceAdditionalFieldsCopyWithImpl(ProjectResourceAdditionalFields value, Then<ProjectResourceAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ProjectResourceAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ProjectStaffSearchModelMapper extends BaseMapper<ProjectStaffSearchModel> {
  ProjectStaffSearchModelMapper._();

  @override Function get decoder => decode;
  ProjectStaffSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectStaffSearchModel fromMap(Map<String, dynamic> map) => ProjectStaffSearchModel(id: Mapper.i.$getOpt(map, 'id'), staffId: Mapper.i.$getOpt(map, 'staffId'), userId: Mapper.i.$getOpt(map, 'userId'), projectId: Mapper.i.$getOpt(map, 'projectId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), startDate: Mapper.i.$getOpt(map, 'startDate'), endDate: Mapper.i.$getOpt(map, 'endDate'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ProjectStaffSearchModel v) => encode(v);
  dynamic encode(ProjectStaffSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectStaffSearchModel p) => {if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.staffId, 'staffId') != null) 'staffId': Mapper.i.$enc(p.staffId, 'staffId'), if (Mapper.i.$enc(p.userId, 'userId') != null) 'userId': Mapper.i.$enc(p.userId, 'userId'), if (Mapper.i.$enc(p.projectId, 'projectId') != null) 'projectId': Mapper.i.$enc(p.projectId, 'projectId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.startDate, 'startDate') != null) 'startDate': Mapper.i.$enc(p.startDate, 'startDate'), if (Mapper.i.$enc(p.endDate, 'endDate') != null) 'endDate': Mapper.i.$enc(p.endDate, 'endDate'), if (Mapper.i.$enc(p.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(p.boundaryCode, 'boundaryCode')};

  @override String stringify(ProjectStaffSearchModel self) => 'ProjectStaffSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, staffId: ${Mapper.asString(self.staffId)}, userId: ${Mapper.asString(self.userId)}, projectId: ${Mapper.asString(self.projectId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, startDateTime: ${Mapper.asString(self.startDateTime)}, endDateTime: ${Mapper.asString(self.endDateTime)})';
  @override int hash(ProjectStaffSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.staffId) ^ Mapper.hash(self.userId) ^ Mapper.hash(self.projectId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.startDateTime) ^ Mapper.hash(self.endDateTime);
  @override bool equals(ProjectStaffSearchModel self, ProjectStaffSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.staffId, other.staffId) && Mapper.isEqual(self.userId, other.userId) && Mapper.isEqual(self.projectId, other.projectId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.startDateTime, other.startDateTime) && Mapper.isEqual(self.endDateTime, other.endDateTime);

  @override Function get typeFactory => (f) => f<ProjectStaffSearchModel>();
}

extension ProjectStaffSearchModelMapperExtension  on ProjectStaffSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectStaffSearchModelCopyWith<ProjectStaffSearchModel> get copyWith => ProjectStaffSearchModelCopyWith(this, $identity);
}

abstract class ProjectStaffSearchModelCopyWith<$R> {
  factory ProjectStaffSearchModelCopyWith(ProjectStaffSearchModel value, Then<ProjectStaffSearchModel, $R> then) = _ProjectStaffSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? staffId, String? userId, String? projectId, String? tenantId, bool? isDeleted, int? startDate, int? endDate, String? boundaryCode});
  $R apply(ProjectStaffSearchModel Function(ProjectStaffSearchModel) transform);
}

class _ProjectStaffSearchModelCopyWithImpl<$R> extends BaseCopyWith<ProjectStaffSearchModel, $R> implements ProjectStaffSearchModelCopyWith<$R> {
  _ProjectStaffSearchModelCopyWithImpl(ProjectStaffSearchModel value, Then<ProjectStaffSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? staffId = $none, Object? userId = $none, Object? projectId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? startDate = $none, Object? endDate = $none, Object? boundaryCode = $none}) => $then(ProjectStaffSearchModel(id: or(id, $value.id), staffId: or(staffId, $value.staffId), userId: or(userId, $value.userId), projectId: or(projectId, $value.projectId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), startDate: or(startDate, $value.startDate), endDate: or(endDate, $value.endDate), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ProjectStaffModelMapper extends BaseMapper<ProjectStaffModel> {
  ProjectStaffModelMapper._();

  @override Function get decoder => decode;
  ProjectStaffModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectStaffModel fromMap(Map<String, dynamic> map) => ProjectStaffModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$get(map, 'id'), staffId: Mapper.i.$getOpt(map, 'staffId'), userId: Mapper.i.$getOpt(map, 'userId'), projectId: Mapper.i.$getOpt(map, 'projectId'), channel: Mapper.i.$getOpt(map, 'channel'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), startDate: Mapper.i.$getOpt(map, 'startDate'), endDate: Mapper.i.$getOpt(map, 'endDate'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ProjectStaffModel v) => encode(v);
  dynamic encode(ProjectStaffModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectStaffModel p) => {if (Mapper.i.$enc(p.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(p.additionalFields, 'additionalFields'), 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.staffId, 'staffId') != null) 'staffId': Mapper.i.$enc(p.staffId, 'staffId'), if (Mapper.i.$enc(p.userId, 'userId') != null) 'userId': Mapper.i.$enc(p.userId, 'userId'), if (Mapper.i.$enc(p.projectId, 'projectId') != null) 'projectId': Mapper.i.$enc(p.projectId, 'projectId'), if (Mapper.i.$enc(p.channel, 'channel') != null) 'channel': Mapper.i.$enc(p.channel, 'channel'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(p.rowVersion, 'rowVersion'), if (Mapper.i.$enc(p.startDate, 'startDate') != null) 'startDate': Mapper.i.$enc(p.startDate, 'startDate'), if (Mapper.i.$enc(p.endDate, 'endDate') != null) 'endDate': Mapper.i.$enc(p.endDate, 'endDate'), if (Mapper.i.$enc(p.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(p.auditDetails, 'auditDetails')};

  @override String stringify(ProjectStaffModel self) => 'ProjectStaffModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, staffId: ${Mapper.asString(self.staffId)}, userId: ${Mapper.asString(self.userId)}, projectId: ${Mapper.asString(self.projectId)}, channel: ${Mapper.asString(self.channel)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, startDateTime: ${Mapper.asString(self.startDateTime)}, endDateTime: ${Mapper.asString(self.endDateTime)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ProjectStaffModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.staffId) ^ Mapper.hash(self.userId) ^ Mapper.hash(self.projectId) ^ Mapper.hash(self.channel) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.startDateTime) ^ Mapper.hash(self.endDateTime) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ProjectStaffModel self, ProjectStaffModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.staffId, other.staffId) && Mapper.isEqual(self.userId, other.userId) && Mapper.isEqual(self.projectId, other.projectId) && Mapper.isEqual(self.channel, other.channel) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.startDateTime, other.startDateTime) && Mapper.isEqual(self.endDateTime, other.endDateTime) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ProjectStaffModel>();
}

extension ProjectStaffModelMapperExtension  on ProjectStaffModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectStaffModelCopyWith<ProjectStaffModel> get copyWith => ProjectStaffModelCopyWith(this, $identity);
}

abstract class ProjectStaffModelCopyWith<$R> {
  factory ProjectStaffModelCopyWith(ProjectStaffModel value, Then<ProjectStaffModel, $R> then) = _ProjectStaffModelCopyWithImpl<$R>;
  ProjectStaffAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ProjectStaffAdditionalFields? additionalFields, String? id, String? staffId, String? userId, String? projectId, String? channel, String? tenantId, bool? isDeleted, int? rowVersion, int? startDate, int? endDate, AuditDetails? auditDetails});
  $R apply(ProjectStaffModel Function(ProjectStaffModel) transform);
}

class _ProjectStaffModelCopyWithImpl<$R> extends BaseCopyWith<ProjectStaffModel, $R> implements ProjectStaffModelCopyWith<$R> {
  _ProjectStaffModelCopyWithImpl(ProjectStaffModel value, Then<ProjectStaffModel, $R> then) : super(value, then);

  @override ProjectStaffAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ProjectStaffAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, String? id, Object? staffId = $none, Object? userId = $none, Object? projectId = $none, Object? channel = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? startDate = $none, Object? endDate = $none, Object? auditDetails = $none}) => $then(ProjectStaffModel(additionalFields: or(additionalFields, $value.additionalFields), id: id ?? $value.id, staffId: or(staffId, $value.staffId), userId: or(userId, $value.userId), projectId: or(projectId, $value.projectId), channel: or(channel, $value.channel), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), startDate: or(startDate, $value.startDate), endDate: or(endDate, $value.endDate), auditDetails: or(auditDetails, $value.auditDetails)));
}

class ProjectStaffAdditionalFieldsMapper extends BaseMapper<ProjectStaffAdditionalFields> {
  ProjectStaffAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ProjectStaffAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectStaffAdditionalFields fromMap(Map<String, dynamic> map) => ProjectStaffAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'ProjectStaff', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ProjectStaffAdditionalFields v) => encode(v);
  dynamic encode(ProjectStaffAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ProjectStaffAdditionalFields p) => {'schema': Mapper.i.$enc(p.schema, 'schema'), 'version': Mapper.i.$enc(p.version, 'version'), 'fields': Mapper.i.$enc(p.fields, 'fields')};

  @override String stringify(ProjectStaffAdditionalFields self) => 'ProjectStaffAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ProjectStaffAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ProjectStaffAdditionalFields self, ProjectStaffAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ProjectStaffAdditionalFields>();
}

extension ProjectStaffAdditionalFieldsMapperExtension  on ProjectStaffAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectStaffAdditionalFieldsCopyWith<ProjectStaffAdditionalFields> get copyWith => ProjectStaffAdditionalFieldsCopyWith(this, $identity);
}

abstract class ProjectStaffAdditionalFieldsCopyWith<$R> {
  factory ProjectStaffAdditionalFieldsCopyWith(ProjectStaffAdditionalFields value, Then<ProjectStaffAdditionalFields, $R> then) = _ProjectStaffAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ProjectStaffAdditionalFields Function(ProjectStaffAdditionalFields) transform);
}

class _ProjectStaffAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ProjectStaffAdditionalFields, $R> implements ProjectStaffAdditionalFieldsCopyWith<$R> {
  _ProjectStaffAdditionalFieldsCopyWithImpl(ProjectStaffAdditionalFields value, Then<ProjectStaffAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ProjectStaffAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ProjectTypeSearchModelMapper extends BaseMapper<ProjectTypeSearchModel> {
  ProjectTypeSearchModelMapper._();

  @override Function get decoder => decode;
  ProjectTypeSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectTypeSearchModel fromMap(Map<String, dynamic> map) => ProjectTypeSearchModel(clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ProjectTypeSearchModel v) => encode(v);
  dynamic encode(ProjectTypeSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectTypeSearchModel p) => {if (Mapper.i.$enc(p.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(p.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(p.boundaryCode, 'boundaryCode')};

  @override String stringify(ProjectTypeSearchModel self) => 'ProjectTypeSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(ProjectTypeSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(ProjectTypeSearchModel self, ProjectTypeSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<ProjectTypeSearchModel>();
}

extension ProjectTypeSearchModelMapperExtension  on ProjectTypeSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectTypeSearchModelCopyWith<ProjectTypeSearchModel> get copyWith => ProjectTypeSearchModelCopyWith(this, $identity);
}

abstract class ProjectTypeSearchModelCopyWith<$R> {
  factory ProjectTypeSearchModelCopyWith(ProjectTypeSearchModel value, Then<ProjectTypeSearchModel, $R> then) = _ProjectTypeSearchModelCopyWithImpl<$R>;
  $R call({List<String>? clientReferenceId, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(ProjectTypeSearchModel Function(ProjectTypeSearchModel) transform);
}

class _ProjectTypeSearchModelCopyWithImpl<$R> extends BaseCopyWith<ProjectTypeSearchModel, $R> implements ProjectTypeSearchModelCopyWith<$R> {
  _ProjectTypeSearchModelCopyWithImpl(ProjectTypeSearchModel value, Then<ProjectTypeSearchModel, $R> then) : super(value, then);

  @override $R call({Object? clientReferenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(ProjectTypeSearchModel(clientReferenceId: or(clientReferenceId, $value.clientReferenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ProjectTypeModelMapper extends BaseMapper<ProjectTypeModel> {
  ProjectTypeModelMapper._();

  @override Function get decoder => decode;
  ProjectTypeModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectTypeModel fromMap(Map<String, dynamic> map) => ProjectTypeModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), name: Mapper.i.$getOpt(map, 'name'), code: Mapper.i.$getOpt(map, 'code'), group: Mapper.i.$getOpt(map, 'group'), beneficiaryType: Mapper.i.$getOpt(map, 'beneficiaryType'), eligibilityCriteria: Mapper.i.$getOpt(map, 'eligibilityCriteria'), taskProcedure: Mapper.i.$getOpt(map, 'taskProcedure'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), resources: Mapper.i.$getOpt(map, 'resources'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ProjectTypeModel v) => encode(v);
  dynamic encode(ProjectTypeModel v) => toMap(v);
  Map<String, dynamic> toMap(ProjectTypeModel p) => {if (Mapper.i.$enc(p.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(p.additionalFields, 'additionalFields'), if (Mapper.i.$enc(p.id, 'id') != null) 'id': Mapper.i.$enc(p.id, 'id'), if (Mapper.i.$enc(p.name, 'name') != null) 'name': Mapper.i.$enc(p.name, 'name'), if (Mapper.i.$enc(p.code, 'code') != null) 'code': Mapper.i.$enc(p.code, 'code'), if (Mapper.i.$enc(p.group, 'group') != null) 'group': Mapper.i.$enc(p.group, 'group'), if (Mapper.i.$enc(p.beneficiaryType, 'beneficiaryType') != null) 'beneficiaryType': Mapper.i.$enc(p.beneficiaryType, 'beneficiaryType'), if (Mapper.i.$enc(p.eligibilityCriteria, 'eligibilityCriteria') != null) 'eligibilityCriteria': Mapper.i.$enc(p.eligibilityCriteria, 'eligibilityCriteria'), if (Mapper.i.$enc(p.taskProcedure, 'taskProcedure') != null) 'taskProcedure': Mapper.i.$enc(p.taskProcedure, 'taskProcedure'), 'clientReferenceId': Mapper.i.$enc(p.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(p.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(p.tenantId, 'tenantId'), if (Mapper.i.$enc(p.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(p.isDeleted, 'isDeleted'), if (Mapper.i.$enc(p.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(p.rowVersion, 'rowVersion'), if (Mapper.i.$enc(p.resources, 'resources') != null) 'resources': Mapper.i.$enc(p.resources, 'resources'), if (Mapper.i.$enc(p.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(p.auditDetails, 'auditDetails')};

  @override String stringify(ProjectTypeModel self) => 'ProjectTypeModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, name: ${Mapper.asString(self.name)}, code: ${Mapper.asString(self.code)}, group: ${Mapper.asString(self.group)}, beneficiaryType: ${Mapper.asString(self.beneficiaryType)}, eligibilityCriteria: ${Mapper.asString(self.eligibilityCriteria)}, taskProcedure: ${Mapper.asString(self.taskProcedure)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, resources: ${Mapper.asString(self.resources)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ProjectTypeModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.name) ^ Mapper.hash(self.code) ^ Mapper.hash(self.group) ^ Mapper.hash(self.beneficiaryType) ^ Mapper.hash(self.eligibilityCriteria) ^ Mapper.hash(self.taskProcedure) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.resources) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ProjectTypeModel self, ProjectTypeModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.code, other.code) && Mapper.isEqual(self.group, other.group) && Mapper.isEqual(self.beneficiaryType, other.beneficiaryType) && Mapper.isEqual(self.eligibilityCriteria, other.eligibilityCriteria) && Mapper.isEqual(self.taskProcedure, other.taskProcedure) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.resources, other.resources) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ProjectTypeModel>();
}

extension ProjectTypeModelMapperExtension  on ProjectTypeModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectTypeModelCopyWith<ProjectTypeModel> get copyWith => ProjectTypeModelCopyWith(this, $identity);
}

abstract class ProjectTypeModelCopyWith<$R> {
  factory ProjectTypeModelCopyWith(ProjectTypeModel value, Then<ProjectTypeModel, $R> then) = _ProjectTypeModelCopyWithImpl<$R>;
  ProjectTypeAdditionalFieldsCopyWith<$R>? get additionalFields;
  ListCopyWith<$R, ProjectProductVariantModel, ProjectProductVariantModelCopyWith<$R>>? get resources;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ProjectTypeAdditionalFields? additionalFields, String? id, String? name, String? code, String? group, String? beneficiaryType, List<String>? eligibilityCriteria, List<String>? taskProcedure, String? clientReferenceId, String? tenantId, bool? isDeleted, int? rowVersion, List<ProjectProductVariantModel>? resources, AuditDetails? auditDetails});
  $R apply(ProjectTypeModel Function(ProjectTypeModel) transform);
}

class _ProjectTypeModelCopyWithImpl<$R> extends BaseCopyWith<ProjectTypeModel, $R> implements ProjectTypeModelCopyWith<$R> {
  _ProjectTypeModelCopyWithImpl(ProjectTypeModel value, Then<ProjectTypeModel, $R> then) : super(value, then);

  @override ProjectTypeAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ProjectTypeAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override ListCopyWith<$R, ProjectProductVariantModel, ProjectProductVariantModelCopyWith<$R>>? get resources => $value.resources != null ? ListCopyWith($value.resources!, (v, t) => ProjectProductVariantModelCopyWith(v, t), (v) => call(resources: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? name = $none, Object? code = $none, Object? group = $none, Object? beneficiaryType = $none, Object? eligibilityCriteria = $none, Object? taskProcedure = $none, String? clientReferenceId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? resources = $none, Object? auditDetails = $none}) => $then(ProjectTypeModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), name: or(name, $value.name), code: or(code, $value.code), group: or(group, $value.group), beneficiaryType: or(beneficiaryType, $value.beneficiaryType), eligibilityCriteria: or(eligibilityCriteria, $value.eligibilityCriteria), taskProcedure: or(taskProcedure, $value.taskProcedure), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), resources: or(resources, $value.resources), auditDetails: or(auditDetails, $value.auditDetails)));
}

class ProjectTypeAdditionalFieldsMapper extends BaseMapper<ProjectTypeAdditionalFields> {
  ProjectTypeAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ProjectTypeAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ProjectTypeAdditionalFields fromMap(Map<String, dynamic> map) => ProjectTypeAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'ProjectType', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ProjectTypeAdditionalFields v) => encode(v);
  dynamic encode(ProjectTypeAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ProjectTypeAdditionalFields p) => {'schema': Mapper.i.$enc(p.schema, 'schema'), 'version': Mapper.i.$enc(p.version, 'version'), 'fields': Mapper.i.$enc(p.fields, 'fields')};

  @override String stringify(ProjectTypeAdditionalFields self) => 'ProjectTypeAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ProjectTypeAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ProjectTypeAdditionalFields self, ProjectTypeAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ProjectTypeAdditionalFields>();
}

extension ProjectTypeAdditionalFieldsMapperExtension  on ProjectTypeAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ProjectTypeAdditionalFieldsCopyWith<ProjectTypeAdditionalFields> get copyWith => ProjectTypeAdditionalFieldsCopyWith(this, $identity);
}

abstract class ProjectTypeAdditionalFieldsCopyWith<$R> {
  factory ProjectTypeAdditionalFieldsCopyWith(ProjectTypeAdditionalFields value, Then<ProjectTypeAdditionalFields, $R> then) = _ProjectTypeAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ProjectTypeAdditionalFields Function(ProjectTypeAdditionalFields) transform);
}

class _ProjectTypeAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ProjectTypeAdditionalFields, $R> implements ProjectTypeAdditionalFieldsCopyWith<$R> {
  _ProjectTypeAdditionalFieldsCopyWithImpl(ProjectTypeAdditionalFields value, Then<ProjectTypeAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ProjectTypeAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ServiceSearchModelMapper extends BaseMapper<ServiceSearchModel> {
  ServiceSearchModelMapper._();

  @override Function get decoder => decode;
  ServiceSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ServiceSearchModel fromMap(Map<String, dynamic> map) => ServiceSearchModel(id: Mapper.i.$getOpt(map, 'id'), clientId: Mapper.i.$getOpt(map, 'clientId'), serviceDefId: Mapper.i.$getOpt(map, 'serviceDefId'), accountId: Mapper.i.$getOpt(map, 'accountId'), createdAt: Mapper.i.$getOpt(map, 'createdAt'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ServiceSearchModel v) => encode(v);
  dynamic encode(ServiceSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ServiceSearchModel s) => {if (Mapper.i.$enc(s.id, 'id') != null) 'id': Mapper.i.$enc(s.id, 'id'), if (Mapper.i.$enc(s.clientId, 'clientId') != null) 'clientId': Mapper.i.$enc(s.clientId, 'clientId'), if (Mapper.i.$enc(s.serviceDefId, 'serviceDefId') != null) 'serviceDefId': Mapper.i.$enc(s.serviceDefId, 'serviceDefId'), if (Mapper.i.$enc(s.accountId, 'accountId') != null) 'accountId': Mapper.i.$enc(s.accountId, 'accountId'), if (Mapper.i.$enc(s.createdAt, 'createdAt') != null) 'createdAt': Mapper.i.$enc(s.createdAt, 'createdAt'), if (Mapper.i.$enc(s.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(s.tenantId, 'tenantId'), if (Mapper.i.$enc(s.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(s.isDeleted, 'isDeleted'), if (Mapper.i.$enc(s.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(s.boundaryCode, 'boundaryCode')};

  @override String stringify(ServiceSearchModel self) => 'ServiceSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, clientId: ${Mapper.asString(self.clientId)}, serviceDefId: ${Mapper.asString(self.serviceDefId)}, accountId: ${Mapper.asString(self.accountId)}, createdAt: ${Mapper.asString(self.createdAt)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(ServiceSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.clientId) ^ Mapper.hash(self.serviceDefId) ^ Mapper.hash(self.accountId) ^ Mapper.hash(self.createdAt) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(ServiceSearchModel self, ServiceSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.clientId, other.clientId) && Mapper.isEqual(self.serviceDefId, other.serviceDefId) && Mapper.isEqual(self.accountId, other.accountId) && Mapper.isEqual(self.createdAt, other.createdAt) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<ServiceSearchModel>();
}

extension ServiceSearchModelMapperExtension  on ServiceSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ServiceSearchModelCopyWith<ServiceSearchModel> get copyWith => ServiceSearchModelCopyWith(this, $identity);
}

abstract class ServiceSearchModelCopyWith<$R> {
  factory ServiceSearchModelCopyWith(ServiceSearchModel value, Then<ServiceSearchModel, $R> then) = _ServiceSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? clientId, String? serviceDefId, String? accountId, String? createdAt, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(ServiceSearchModel Function(ServiceSearchModel) transform);
}

class _ServiceSearchModelCopyWithImpl<$R> extends BaseCopyWith<ServiceSearchModel, $R> implements ServiceSearchModelCopyWith<$R> {
  _ServiceSearchModelCopyWithImpl(ServiceSearchModel value, Then<ServiceSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? clientId = $none, Object? serviceDefId = $none, Object? accountId = $none, Object? createdAt = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(ServiceSearchModel(id: or(id, $value.id), clientId: or(clientId, $value.clientId), serviceDefId: or(serviceDefId, $value.serviceDefId), accountId: or(accountId, $value.accountId), createdAt: or(createdAt, $value.createdAt), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ServiceModelMapper extends BaseMapper<ServiceModel> {
  ServiceModelMapper._();

  @override Function get decoder => decode;
  ServiceModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ServiceModel fromMap(Map<String, dynamic> map) => ServiceModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), clientId: Mapper.i.$get(map, 'clientId'), serviceDefId: Mapper.i.$getOpt(map, 'serviceDefId'), isActive: Mapper.i.$getOpt(map, 'isActive'), accountId: Mapper.i.$getOpt(map, 'accountId'), additionalDetails: Mapper.i.$getOpt(map, 'additionalDetails'), createdAt: Mapper.i.$getOpt(map, 'createdAt'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), attributes: Mapper.i.$getOpt(map, 'attributes'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ServiceModel v) => encode(v);
  dynamic encode(ServiceModel v) => toMap(v);
  Map<String, dynamic> toMap(ServiceModel s) => {if (Mapper.i.$enc(s.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(s.additionalFields, 'additionalFields'), if (Mapper.i.$enc(s.id, 'id') != null) 'id': Mapper.i.$enc(s.id, 'id'), 'clientId': Mapper.i.$enc(s.clientId, 'clientId'), if (Mapper.i.$enc(s.serviceDefId, 'serviceDefId') != null) 'serviceDefId': Mapper.i.$enc(s.serviceDefId, 'serviceDefId'), if (Mapper.i.$enc(s.isActive, 'isActive') != null) 'isActive': Mapper.i.$enc(s.isActive, 'isActive'), if (Mapper.i.$enc(s.accountId, 'accountId') != null) 'accountId': Mapper.i.$enc(s.accountId, 'accountId'), if (Mapper.i.$enc(s.additionalDetails, 'additionalDetails') != null) 'additionalDetails': Mapper.i.$enc(s.additionalDetails, 'additionalDetails'), if (Mapper.i.$enc(s.createdAt, 'createdAt') != null) 'createdAt': Mapper.i.$enc(s.createdAt, 'createdAt'), if (Mapper.i.$enc(s.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(s.tenantId, 'tenantId'), if (Mapper.i.$enc(s.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(s.isDeleted, 'isDeleted'), if (Mapper.i.$enc(s.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(s.rowVersion, 'rowVersion'), if (Mapper.i.$enc(s.attributes, 'attributes') != null) 'attributes': Mapper.i.$enc(s.attributes, 'attributes'), if (Mapper.i.$enc(s.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(s.auditDetails, 'auditDetails')};

  @override String stringify(ServiceModel self) => 'ServiceModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, clientId: ${Mapper.asString(self.clientId)}, serviceDefId: ${Mapper.asString(self.serviceDefId)}, isActive: ${Mapper.asString(self.isActive)}, accountId: ${Mapper.asString(self.accountId)}, additionalDetails: ${Mapper.asString(self.additionalDetails)}, createdAt: ${Mapper.asString(self.createdAt)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, attributes: ${Mapper.asString(self.attributes)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ServiceModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.clientId) ^ Mapper.hash(self.serviceDefId) ^ Mapper.hash(self.isActive) ^ Mapper.hash(self.accountId) ^ Mapper.hash(self.additionalDetails) ^ Mapper.hash(self.createdAt) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.attributes) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ServiceModel self, ServiceModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.clientId, other.clientId) && Mapper.isEqual(self.serviceDefId, other.serviceDefId) && Mapper.isEqual(self.isActive, other.isActive) && Mapper.isEqual(self.accountId, other.accountId) && Mapper.isEqual(self.additionalDetails, other.additionalDetails) && Mapper.isEqual(self.createdAt, other.createdAt) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.attributes, other.attributes) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ServiceModel>();
}

extension ServiceModelMapperExtension  on ServiceModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ServiceModelCopyWith<ServiceModel> get copyWith => ServiceModelCopyWith(this, $identity);
}

abstract class ServiceModelCopyWith<$R> {
  factory ServiceModelCopyWith(ServiceModel value, Then<ServiceModel, $R> then) = _ServiceModelCopyWithImpl<$R>;
  ServiceAdditionalFieldsCopyWith<$R>? get additionalFields;
  ListCopyWith<$R, ServiceAttributesModel, ServiceAttributesModelCopyWith<$R>>? get attributes;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ServiceAdditionalFields? additionalFields, String? id, String? clientId, String? serviceDefId, bool? isActive, String? accountId, String? additionalDetails, String? createdAt, String? tenantId, bool? isDeleted, int? rowVersion, List<ServiceAttributesModel>? attributes, AuditDetails? auditDetails});
  $R apply(ServiceModel Function(ServiceModel) transform);
}

class _ServiceModelCopyWithImpl<$R> extends BaseCopyWith<ServiceModel, $R> implements ServiceModelCopyWith<$R> {
  _ServiceModelCopyWithImpl(ServiceModel value, Then<ServiceModel, $R> then) : super(value, then);

  @override ServiceAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ServiceAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override ListCopyWith<$R, ServiceAttributesModel, ServiceAttributesModelCopyWith<$R>>? get attributes => $value.attributes != null ? ListCopyWith($value.attributes!, (v, t) => ServiceAttributesModelCopyWith(v, t), (v) => call(attributes: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, String? clientId, Object? serviceDefId = $none, Object? isActive = $none, Object? accountId = $none, Object? additionalDetails = $none, Object? createdAt = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? attributes = $none, Object? auditDetails = $none}) => $then(ServiceModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), clientId: clientId ?? $value.clientId, serviceDefId: or(serviceDefId, $value.serviceDefId), isActive: or(isActive, $value.isActive), accountId: or(accountId, $value.accountId), additionalDetails: or(additionalDetails, $value.additionalDetails), createdAt: or(createdAt, $value.createdAt), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), attributes: or(attributes, $value.attributes), auditDetails: or(auditDetails, $value.auditDetails)));
}

class ServiceAdditionalFieldsMapper extends BaseMapper<ServiceAdditionalFields> {
  ServiceAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ServiceAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ServiceAdditionalFields fromMap(Map<String, dynamic> map) => ServiceAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Service', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ServiceAdditionalFields v) => encode(v);
  dynamic encode(ServiceAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ServiceAdditionalFields s) => {'schema': Mapper.i.$enc(s.schema, 'schema'), 'version': Mapper.i.$enc(s.version, 'version'), 'fields': Mapper.i.$enc(s.fields, 'fields')};

  @override String stringify(ServiceAdditionalFields self) => 'ServiceAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ServiceAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ServiceAdditionalFields self, ServiceAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ServiceAdditionalFields>();
}

extension ServiceAdditionalFieldsMapperExtension  on ServiceAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ServiceAdditionalFieldsCopyWith<ServiceAdditionalFields> get copyWith => ServiceAdditionalFieldsCopyWith(this, $identity);
}

abstract class ServiceAdditionalFieldsCopyWith<$R> {
  factory ServiceAdditionalFieldsCopyWith(ServiceAdditionalFields value, Then<ServiceAdditionalFields, $R> then) = _ServiceAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ServiceAdditionalFields Function(ServiceAdditionalFields) transform);
}

class _ServiceAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ServiceAdditionalFields, $R> implements ServiceAdditionalFieldsCopyWith<$R> {
  _ServiceAdditionalFieldsCopyWithImpl(ServiceAdditionalFields value, Then<ServiceAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ServiceAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ServiceAttributesSearchModelMapper extends BaseMapper<ServiceAttributesSearchModel> {
  ServiceAttributesSearchModelMapper._();

  @override Function get decoder => decode;
  ServiceAttributesSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ServiceAttributesSearchModel fromMap(Map<String, dynamic> map) => ServiceAttributesSearchModel(clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ServiceAttributesSearchModel v) => encode(v);
  dynamic encode(ServiceAttributesSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ServiceAttributesSearchModel s) => {if (Mapper.i.$enc(s.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(s.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(s.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(s.tenantId, 'tenantId'), if (Mapper.i.$enc(s.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(s.isDeleted, 'isDeleted'), if (Mapper.i.$enc(s.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(s.boundaryCode, 'boundaryCode')};

  @override String stringify(ServiceAttributesSearchModel self) => 'ServiceAttributesSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(ServiceAttributesSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(ServiceAttributesSearchModel self, ServiceAttributesSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<ServiceAttributesSearchModel>();
}

extension ServiceAttributesSearchModelMapperExtension  on ServiceAttributesSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ServiceAttributesSearchModelCopyWith<ServiceAttributesSearchModel> get copyWith => ServiceAttributesSearchModelCopyWith(this, $identity);
}

abstract class ServiceAttributesSearchModelCopyWith<$R> {
  factory ServiceAttributesSearchModelCopyWith(ServiceAttributesSearchModel value, Then<ServiceAttributesSearchModel, $R> then) = _ServiceAttributesSearchModelCopyWithImpl<$R>;
  $R call({List<String>? clientReferenceId, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(ServiceAttributesSearchModel Function(ServiceAttributesSearchModel) transform);
}

class _ServiceAttributesSearchModelCopyWithImpl<$R> extends BaseCopyWith<ServiceAttributesSearchModel, $R> implements ServiceAttributesSearchModelCopyWith<$R> {
  _ServiceAttributesSearchModelCopyWithImpl(ServiceAttributesSearchModel value, Then<ServiceAttributesSearchModel, $R> then) : super(value, then);

  @override $R call({Object? clientReferenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(ServiceAttributesSearchModel(clientReferenceId: or(clientReferenceId, $value.clientReferenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ServiceAttributesModelMapper extends BaseMapper<ServiceAttributesModel> {
  ServiceAttributesModelMapper._();

  @override Function get decoder => decode;
  ServiceAttributesModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ServiceAttributesModel fromMap(Map<String, dynamic> map) => ServiceAttributesModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), attributeCode: Mapper.i.$getOpt(map, 'attributeCode'), value: Mapper.i.$getOpt(map, 'value'), dataType: Mapper.i.$getOpt(map, 'dataType'), referenceId: Mapper.i.$getOpt(map, 'referenceId'), additionalDetails: Mapper.i.$getOpt(map, 'additionalDetails'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ServiceAttributesModel v) => encode(v);
  dynamic encode(ServiceAttributesModel v) => toMap(v);
  Map<String, dynamic> toMap(ServiceAttributesModel s) => {if (Mapper.i.$enc(s.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(s.additionalFields, 'additionalFields'), if (Mapper.i.$enc(s.attributeCode, 'attributeCode') != null) 'attributeCode': Mapper.i.$enc(s.attributeCode, 'attributeCode'), 'value': Mapper.i.$enc(s.value, 'value'), if (Mapper.i.$enc(s.dataType, 'dataType') != null) 'dataType': Mapper.i.$enc(s.dataType, 'dataType'), if (Mapper.i.$enc(s.referenceId, 'referenceId') != null) 'referenceId': Mapper.i.$enc(s.referenceId, 'referenceId'), 'additionalDetails': Mapper.i.$enc(s.additionalDetails, 'additionalDetails'), 'clientReferenceId': Mapper.i.$enc(s.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(s.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(s.tenantId, 'tenantId'), if (Mapper.i.$enc(s.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(s.isDeleted, 'isDeleted'), if (Mapper.i.$enc(s.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(s.rowVersion, 'rowVersion'), if (Mapper.i.$enc(s.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(s.auditDetails, 'auditDetails')};

  @override String stringify(ServiceAttributesModel self) => 'ServiceAttributesModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, attributeCode: ${Mapper.asString(self.attributeCode)}, value: ${Mapper.asString(self.value)}, dataType: ${Mapper.asString(self.dataType)}, referenceId: ${Mapper.asString(self.referenceId)}, additionalDetails: ${Mapper.asString(self.additionalDetails)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ServiceAttributesModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.attributeCode) ^ Mapper.hash(self.value) ^ Mapper.hash(self.dataType) ^ Mapper.hash(self.referenceId) ^ Mapper.hash(self.additionalDetails) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ServiceAttributesModel self, ServiceAttributesModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.attributeCode, other.attributeCode) && Mapper.isEqual(self.value, other.value) && Mapper.isEqual(self.dataType, other.dataType) && Mapper.isEqual(self.referenceId, other.referenceId) && Mapper.isEqual(self.additionalDetails, other.additionalDetails) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ServiceAttributesModel>();
}

extension ServiceAttributesModelMapperExtension  on ServiceAttributesModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ServiceAttributesModelCopyWith<ServiceAttributesModel> get copyWith => ServiceAttributesModelCopyWith(this, $identity);
}

abstract class ServiceAttributesModelCopyWith<$R> {
  factory ServiceAttributesModelCopyWith(ServiceAttributesModel value, Then<ServiceAttributesModel, $R> then) = _ServiceAttributesModelCopyWithImpl<$R>;
  ServiceAttributesAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ServiceAttributesAdditionalFields? additionalFields, String? attributeCode, dynamic value, String? dataType, String? referenceId, dynamic additionalDetails, String? clientReferenceId, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(ServiceAttributesModel Function(ServiceAttributesModel) transform);
}

class _ServiceAttributesModelCopyWithImpl<$R> extends BaseCopyWith<ServiceAttributesModel, $R> implements ServiceAttributesModelCopyWith<$R> {
  _ServiceAttributesModelCopyWithImpl(ServiceAttributesModel value, Then<ServiceAttributesModel, $R> then) : super(value, then);

  @override ServiceAttributesAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ServiceAttributesAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? attributeCode = $none, Object? value = $none, Object? dataType = $none, Object? referenceId = $none, Object? additionalDetails = $none, String? clientReferenceId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(ServiceAttributesModel(additionalFields: or(additionalFields, $value.additionalFields), attributeCode: or(attributeCode, $value.attributeCode), value: or(value, $value.value), dataType: or(dataType, $value.dataType), referenceId: or(referenceId, $value.referenceId), additionalDetails: or(additionalDetails, $value.additionalDetails), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class ServiceAttributesAdditionalFieldsMapper extends BaseMapper<ServiceAttributesAdditionalFields> {
  ServiceAttributesAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ServiceAttributesAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ServiceAttributesAdditionalFields fromMap(Map<String, dynamic> map) => ServiceAttributesAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'ServiceAttributes', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ServiceAttributesAdditionalFields v) => encode(v);
  dynamic encode(ServiceAttributesAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ServiceAttributesAdditionalFields s) => {'schema': Mapper.i.$enc(s.schema, 'schema'), 'version': Mapper.i.$enc(s.version, 'version'), 'fields': Mapper.i.$enc(s.fields, 'fields')};

  @override String stringify(ServiceAttributesAdditionalFields self) => 'ServiceAttributesAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ServiceAttributesAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ServiceAttributesAdditionalFields self, ServiceAttributesAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ServiceAttributesAdditionalFields>();
}

extension ServiceAttributesAdditionalFieldsMapperExtension  on ServiceAttributesAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ServiceAttributesAdditionalFieldsCopyWith<ServiceAttributesAdditionalFields> get copyWith => ServiceAttributesAdditionalFieldsCopyWith(this, $identity);
}

abstract class ServiceAttributesAdditionalFieldsCopyWith<$R> {
  factory ServiceAttributesAdditionalFieldsCopyWith(ServiceAttributesAdditionalFields value, Then<ServiceAttributesAdditionalFields, $R> then) = _ServiceAttributesAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ServiceAttributesAdditionalFields Function(ServiceAttributesAdditionalFields) transform);
}

class _ServiceAttributesAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ServiceAttributesAdditionalFields, $R> implements ServiceAttributesAdditionalFieldsCopyWith<$R> {
  _ServiceAttributesAdditionalFieldsCopyWithImpl(ServiceAttributesAdditionalFields value, Then<ServiceAttributesAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ServiceAttributesAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class ServiceDefinitionSearchModelMapper extends BaseMapper<ServiceDefinitionSearchModel> {
  ServiceDefinitionSearchModelMapper._();

  @override Function get decoder => decode;
  ServiceDefinitionSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ServiceDefinitionSearchModel fromMap(Map<String, dynamic> map) => ServiceDefinitionSearchModel(id: Mapper.i.$getOpt(map, 'id'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), code: Mapper.i.$getOpt(map, 'code'), isActive: Mapper.i.$getOpt(map, 'isActive'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (ServiceDefinitionSearchModel v) => encode(v);
  dynamic encode(ServiceDefinitionSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(ServiceDefinitionSearchModel s) => {if (Mapper.i.$enc(s.id, 'id') != null) 'id': Mapper.i.$enc(s.id, 'id'), if (Mapper.i.$enc(s.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(s.tenantId, 'tenantId'), if (Mapper.i.$enc(s.code, 'code') != null) 'code': Mapper.i.$enc(s.code, 'code'), if (Mapper.i.$enc(s.isActive, 'isActive') != null) 'isActive': Mapper.i.$enc(s.isActive, 'isActive'), if (Mapper.i.$enc(s.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(s.isDeleted, 'isDeleted'), if (Mapper.i.$enc(s.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(s.boundaryCode, 'boundaryCode')};

  @override String stringify(ServiceDefinitionSearchModel self) => 'ServiceDefinitionSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, tenantId: ${Mapper.asString(self.tenantId)}, code: ${Mapper.asString(self.code)}, isActive: ${Mapper.asString(self.isActive)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(ServiceDefinitionSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.code) ^ Mapper.hash(self.isActive) ^ Mapper.hash(self.isDeleted);
  @override bool equals(ServiceDefinitionSearchModel self, ServiceDefinitionSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.code, other.code) && Mapper.isEqual(self.isActive, other.isActive) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<ServiceDefinitionSearchModel>();
}

extension ServiceDefinitionSearchModelMapperExtension  on ServiceDefinitionSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ServiceDefinitionSearchModelCopyWith<ServiceDefinitionSearchModel> get copyWith => ServiceDefinitionSearchModelCopyWith(this, $identity);
}

abstract class ServiceDefinitionSearchModelCopyWith<$R> {
  factory ServiceDefinitionSearchModelCopyWith(ServiceDefinitionSearchModel value, Then<ServiceDefinitionSearchModel, $R> then) = _ServiceDefinitionSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? tenantId, List<String>? code, bool? isActive, bool? isDeleted, String? boundaryCode});
  $R apply(ServiceDefinitionSearchModel Function(ServiceDefinitionSearchModel) transform);
}

class _ServiceDefinitionSearchModelCopyWithImpl<$R> extends BaseCopyWith<ServiceDefinitionSearchModel, $R> implements ServiceDefinitionSearchModelCopyWith<$R> {
  _ServiceDefinitionSearchModelCopyWithImpl(ServiceDefinitionSearchModel value, Then<ServiceDefinitionSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? tenantId = $none, Object? code = $none, Object? isActive = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(ServiceDefinitionSearchModel(id: or(id, $value.id), tenantId: or(tenantId, $value.tenantId), code: or(code, $value.code), isActive: or(isActive, $value.isActive), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class ServiceDefinitionModelMapper extends BaseMapper<ServiceDefinitionModel> {
  ServiceDefinitionModelMapper._();

  @override Function get decoder => decode;
  ServiceDefinitionModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ServiceDefinitionModel fromMap(Map<String, dynamic> map) => ServiceDefinitionModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), code: Mapper.i.$getOpt(map, 'code'), isActive: Mapper.i.$getOpt(map, 'isActive'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), attributes: Mapper.i.$getOpt(map, 'attributes'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (ServiceDefinitionModel v) => encode(v);
  dynamic encode(ServiceDefinitionModel v) => toMap(v);
  Map<String, dynamic> toMap(ServiceDefinitionModel s) => {if (Mapper.i.$enc(s.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(s.additionalFields, 'additionalFields'), if (Mapper.i.$enc(s.id, 'id') != null) 'id': Mapper.i.$enc(s.id, 'id'), if (Mapper.i.$enc(s.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(s.tenantId, 'tenantId'), if (Mapper.i.$enc(s.code, 'code') != null) 'code': Mapper.i.$enc(s.code, 'code'), if (Mapper.i.$enc(s.isActive, 'isActive') != null) 'isActive': Mapper.i.$enc(s.isActive, 'isActive'), if (Mapper.i.$enc(s.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(s.isDeleted, 'isDeleted'), if (Mapper.i.$enc(s.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(s.rowVersion, 'rowVersion'), if (Mapper.i.$enc(s.attributes, 'attributes') != null) 'attributes': Mapper.i.$enc(s.attributes, 'attributes'), if (Mapper.i.$enc(s.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(s.auditDetails, 'auditDetails')};

  @override String stringify(ServiceDefinitionModel self) => 'ServiceDefinitionModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, tenantId: ${Mapper.asString(self.tenantId)}, code: ${Mapper.asString(self.code)}, isActive: ${Mapper.asString(self.isActive)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, attributes: ${Mapper.asString(self.attributes)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(ServiceDefinitionModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.code) ^ Mapper.hash(self.isActive) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.attributes) ^ Mapper.hash(self.additionalFields);
  @override bool equals(ServiceDefinitionModel self, ServiceDefinitionModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.code, other.code) && Mapper.isEqual(self.isActive, other.isActive) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.attributes, other.attributes) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<ServiceDefinitionModel>();
}

extension ServiceDefinitionModelMapperExtension  on ServiceDefinitionModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ServiceDefinitionModelCopyWith<ServiceDefinitionModel> get copyWith => ServiceDefinitionModelCopyWith(this, $identity);
}

abstract class ServiceDefinitionModelCopyWith<$R> {
  factory ServiceDefinitionModelCopyWith(ServiceDefinitionModel value, Then<ServiceDefinitionModel, $R> then) = _ServiceDefinitionModelCopyWithImpl<$R>;
  ServiceDefinitionAdditionalFieldsCopyWith<$R>? get additionalFields;
  ListCopyWith<$R, AttributesModel, AttributesModelCopyWith<$R>>? get attributes;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({ServiceDefinitionAdditionalFields? additionalFields, String? id, String? tenantId, String? code, bool? isActive, bool? isDeleted, int? rowVersion, List<AttributesModel>? attributes, AuditDetails? auditDetails});
  $R apply(ServiceDefinitionModel Function(ServiceDefinitionModel) transform);
}

class _ServiceDefinitionModelCopyWithImpl<$R> extends BaseCopyWith<ServiceDefinitionModel, $R> implements ServiceDefinitionModelCopyWith<$R> {
  _ServiceDefinitionModelCopyWithImpl(ServiceDefinitionModel value, Then<ServiceDefinitionModel, $R> then) : super(value, then);

  @override ServiceDefinitionAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? ServiceDefinitionAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override ListCopyWith<$R, AttributesModel, AttributesModelCopyWith<$R>>? get attributes => $value.attributes != null ? ListCopyWith($value.attributes!, (v, t) => AttributesModelCopyWith(v, t), (v) => call(attributes: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? tenantId = $none, Object? code = $none, Object? isActive = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? attributes = $none, Object? auditDetails = $none}) => $then(ServiceDefinitionModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), tenantId: or(tenantId, $value.tenantId), code: or(code, $value.code), isActive: or(isActive, $value.isActive), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), attributes: or(attributes, $value.attributes), auditDetails: or(auditDetails, $value.auditDetails)));
}

class ServiceDefinitionAdditionalFieldsMapper extends BaseMapper<ServiceDefinitionAdditionalFields> {
  ServiceDefinitionAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  ServiceDefinitionAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  ServiceDefinitionAdditionalFields fromMap(Map<String, dynamic> map) => ServiceDefinitionAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'ServiceDefinition', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (ServiceDefinitionAdditionalFields v) => encode(v);
  dynamic encode(ServiceDefinitionAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(ServiceDefinitionAdditionalFields s) => {'schema': Mapper.i.$enc(s.schema, 'schema'), 'version': Mapper.i.$enc(s.version, 'version'), 'fields': Mapper.i.$enc(s.fields, 'fields')};

  @override String stringify(ServiceDefinitionAdditionalFields self) => 'ServiceDefinitionAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(ServiceDefinitionAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(ServiceDefinitionAdditionalFields self, ServiceDefinitionAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<ServiceDefinitionAdditionalFields>();
}

extension ServiceDefinitionAdditionalFieldsMapperExtension  on ServiceDefinitionAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ServiceDefinitionAdditionalFieldsCopyWith<ServiceDefinitionAdditionalFields> get copyWith => ServiceDefinitionAdditionalFieldsCopyWith(this, $identity);
}

abstract class ServiceDefinitionAdditionalFieldsCopyWith<$R> {
  factory ServiceDefinitionAdditionalFieldsCopyWith(ServiceDefinitionAdditionalFields value, Then<ServiceDefinitionAdditionalFields, $R> then) = _ServiceDefinitionAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(ServiceDefinitionAdditionalFields Function(ServiceDefinitionAdditionalFields) transform);
}

class _ServiceDefinitionAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<ServiceDefinitionAdditionalFields, $R> implements ServiceDefinitionAdditionalFieldsCopyWith<$R> {
  _ServiceDefinitionAdditionalFieldsCopyWithImpl(ServiceDefinitionAdditionalFields value, Then<ServiceDefinitionAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(ServiceDefinitionAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class StockSearchModelMapper extends BaseMapper<StockSearchModel> {
  StockSearchModelMapper._();

  @override Function get decoder => decode;
  StockSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  StockSearchModel fromMap(Map<String, dynamic> map) => StockSearchModel(id: Mapper.i.$getOpt(map, 'id'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), facilityId: Mapper.i.$getOpt(map, 'facilityId'), productVariantId: Mapper.i.$getOpt(map, 'productVariantId'), referenceId: Mapper.i.$getOpt(map, 'referenceId'), referenceIdType: Mapper.i.$getOpt(map, 'referenceIdType'), transactingPartyId: Mapper.i.$getOpt(map, 'transactingPartyId'), transactingPartyType: Mapper.i.$getOpt(map, 'transactingPartyType'), clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), transactionType: Mapper.i.$getOpt(map, 'transactionType'), transactionReason: Mapper.i.$getOpt(map, 'transactionReason'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (StockSearchModel v) => encode(v);
  dynamic encode(StockSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(StockSearchModel s) => {if (Mapper.i.$enc(s.id, 'id') != null) 'id': Mapper.i.$enc(s.id, 'id'), if (Mapper.i.$enc(s.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(s.tenantId, 'tenantId'), if (Mapper.i.$enc(s.facilityId, 'facilityId') != null) 'facilityId': Mapper.i.$enc(s.facilityId, 'facilityId'), if (Mapper.i.$enc(s.productVariantId, 'productVariantId') != null) 'productVariantId': Mapper.i.$enc(s.productVariantId, 'productVariantId'), if (Mapper.i.$enc(s.referenceId, 'referenceId') != null) 'referenceId': Mapper.i.$enc(s.referenceId, 'referenceId'), if (Mapper.i.$enc(s.referenceIdType, 'referenceIdType') != null) 'referenceIdType': Mapper.i.$enc(s.referenceIdType, 'referenceIdType'), if (Mapper.i.$enc(s.transactingPartyId, 'transactingPartyId') != null) 'transactingPartyId': Mapper.i.$enc(s.transactingPartyId, 'transactingPartyId'), if (Mapper.i.$enc(s.transactingPartyType, 'transactingPartyType') != null) 'transactingPartyType': Mapper.i.$enc(s.transactingPartyType, 'transactingPartyType'), if (Mapper.i.$enc(s.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(s.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(s.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(s.isDeleted, 'isDeleted'), if (Mapper.i.$enc(s.transactionType, 'transactionType') != null) 'transactionType': Mapper.i.$enc(s.transactionType, 'transactionType'), if (Mapper.i.$enc(s.transactionReason, 'transactionReason') != null) 'transactionReason': Mapper.i.$enc(s.transactionReason, 'transactionReason'), if (Mapper.i.$enc(s.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(s.boundaryCode, 'boundaryCode')};

  @override String stringify(StockSearchModel self) => 'StockSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, tenantId: ${Mapper.asString(self.tenantId)}, facilityId: ${Mapper.asString(self.facilityId)}, productVariantId: ${Mapper.asString(self.productVariantId)}, referenceId: ${Mapper.asString(self.referenceId)}, referenceIdType: ${Mapper.asString(self.referenceIdType)}, transactingPartyId: ${Mapper.asString(self.transactingPartyId)}, transactingPartyType: ${Mapper.asString(self.transactingPartyType)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, transactionType: ${Mapper.asString(self.transactionType)}, transactionReason: ${Mapper.asString(self.transactionReason)})';
  @override int hash(StockSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.facilityId) ^ Mapper.hash(self.productVariantId) ^ Mapper.hash(self.referenceId) ^ Mapper.hash(self.referenceIdType) ^ Mapper.hash(self.transactingPartyId) ^ Mapper.hash(self.transactingPartyType) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.transactionType) ^ Mapper.hash(self.transactionReason);
  @override bool equals(StockSearchModel self, StockSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.facilityId, other.facilityId) && Mapper.isEqual(self.productVariantId, other.productVariantId) && Mapper.isEqual(self.referenceId, other.referenceId) && Mapper.isEqual(self.referenceIdType, other.referenceIdType) && Mapper.isEqual(self.transactingPartyId, other.transactingPartyId) && Mapper.isEqual(self.transactingPartyType, other.transactingPartyType) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.transactionType, other.transactionType) && Mapper.isEqual(self.transactionReason, other.transactionReason);

  @override Function get typeFactory => (f) => f<StockSearchModel>();
}

extension StockSearchModelMapperExtension  on StockSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  StockSearchModelCopyWith<StockSearchModel> get copyWith => StockSearchModelCopyWith(this, $identity);
}

abstract class StockSearchModelCopyWith<$R> {
  factory StockSearchModelCopyWith(StockSearchModel value, Then<StockSearchModel, $R> then) = _StockSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? tenantId, String? facilityId, String? productVariantId, String? referenceId, String? referenceIdType, String? transactingPartyId, String? transactingPartyType, List<String>? clientReferenceId, bool? isDeleted, TransactionType? transactionType, TransactionReason? transactionReason, String? boundaryCode});
  $R apply(StockSearchModel Function(StockSearchModel) transform);
}

class _StockSearchModelCopyWithImpl<$R> extends BaseCopyWith<StockSearchModel, $R> implements StockSearchModelCopyWith<$R> {
  _StockSearchModelCopyWithImpl(StockSearchModel value, Then<StockSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? tenantId = $none, Object? facilityId = $none, Object? productVariantId = $none, Object? referenceId = $none, Object? referenceIdType = $none, Object? transactingPartyId = $none, Object? transactingPartyType = $none, Object? clientReferenceId = $none, Object? isDeleted = $none, Object? transactionType = $none, Object? transactionReason = $none, Object? boundaryCode = $none}) => $then(StockSearchModel(id: or(id, $value.id), tenantId: or(tenantId, $value.tenantId), facilityId: or(facilityId, $value.facilityId), productVariantId: or(productVariantId, $value.productVariantId), referenceId: or(referenceId, $value.referenceId), referenceIdType: or(referenceIdType, $value.referenceIdType), transactingPartyId: or(transactingPartyId, $value.transactingPartyId), transactingPartyType: or(transactingPartyType, $value.transactingPartyType), clientReferenceId: or(clientReferenceId, $value.clientReferenceId), isDeleted: or(isDeleted, $value.isDeleted), transactionType: or(transactionType, $value.transactionType), transactionReason: or(transactionReason, $value.transactionReason), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class StockModelMapper extends BaseMapper<StockModel> {
  StockModelMapper._();

  @override Function get decoder => decode;
  StockModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  StockModel fromMap(Map<String, dynamic> map) => StockModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), facilityId: Mapper.i.$getOpt(map, 'facilityId'), productVariantId: Mapper.i.$getOpt(map, 'productVariantId'), referenceId: Mapper.i.$getOpt(map, 'referenceId'), referenceIdType: Mapper.i.$getOpt(map, 'referenceIdType'), transactingPartyId: Mapper.i.$getOpt(map, 'transactingPartyId'), transactingPartyType: Mapper.i.$getOpt(map, 'transactingPartyType'), quantity: Mapper.i.$getOpt(map, 'quantity'), waybillNumber: Mapper.i.$getOpt(map, 'waybillNumber'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), transactionType: Mapper.i.$getOpt(map, 'transactionType'), transactionReason: Mapper.i.$getOpt(map, 'transactionReason'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (StockModel v) => encode(v);
  dynamic encode(StockModel v) => toMap(v);
  Map<String, dynamic> toMap(StockModel s) => {if (Mapper.i.$enc(s.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(s.additionalFields, 'additionalFields'), if (Mapper.i.$enc(s.id, 'id') != null) 'id': Mapper.i.$enc(s.id, 'id'), if (Mapper.i.$enc(s.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(s.tenantId, 'tenantId'), if (Mapper.i.$enc(s.facilityId, 'facilityId') != null) 'facilityId': Mapper.i.$enc(s.facilityId, 'facilityId'), if (Mapper.i.$enc(s.productVariantId, 'productVariantId') != null) 'productVariantId': Mapper.i.$enc(s.productVariantId, 'productVariantId'), if (Mapper.i.$enc(s.referenceId, 'referenceId') != null) 'referenceId': Mapper.i.$enc(s.referenceId, 'referenceId'), if (Mapper.i.$enc(s.referenceIdType, 'referenceIdType') != null) 'referenceIdType': Mapper.i.$enc(s.referenceIdType, 'referenceIdType'), if (Mapper.i.$enc(s.transactingPartyId, 'transactingPartyId') != null) 'transactingPartyId': Mapper.i.$enc(s.transactingPartyId, 'transactingPartyId'), if (Mapper.i.$enc(s.transactingPartyType, 'transactingPartyType') != null) 'transactingPartyType': Mapper.i.$enc(s.transactingPartyType, 'transactingPartyType'), if (Mapper.i.$enc(s.quantity, 'quantity') != null) 'quantity': Mapper.i.$enc(s.quantity, 'quantity'), if (Mapper.i.$enc(s.waybillNumber, 'waybillNumber') != null) 'waybillNumber': Mapper.i.$enc(s.waybillNumber, 'waybillNumber'), 'clientReferenceId': Mapper.i.$enc(s.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(s.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(s.isDeleted, 'isDeleted'), if (Mapper.i.$enc(s.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(s.rowVersion, 'rowVersion'), if (Mapper.i.$enc(s.transactionType, 'transactionType') != null) 'transactionType': Mapper.i.$enc(s.transactionType, 'transactionType'), if (Mapper.i.$enc(s.transactionReason, 'transactionReason') != null) 'transactionReason': Mapper.i.$enc(s.transactionReason, 'transactionReason'), if (Mapper.i.$enc(s.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(s.auditDetails, 'auditDetails')};

  @override String stringify(StockModel self) => 'StockModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, tenantId: ${Mapper.asString(self.tenantId)}, facilityId: ${Mapper.asString(self.facilityId)}, productVariantId: ${Mapper.asString(self.productVariantId)}, referenceId: ${Mapper.asString(self.referenceId)}, referenceIdType: ${Mapper.asString(self.referenceIdType)}, transactingPartyId: ${Mapper.asString(self.transactingPartyId)}, transactingPartyType: ${Mapper.asString(self.transactingPartyType)}, quantity: ${Mapper.asString(self.quantity)}, waybillNumber: ${Mapper.asString(self.waybillNumber)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, transactionType: ${Mapper.asString(self.transactionType)}, transactionReason: ${Mapper.asString(self.transactionReason)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(StockModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.facilityId) ^ Mapper.hash(self.productVariantId) ^ Mapper.hash(self.referenceId) ^ Mapper.hash(self.referenceIdType) ^ Mapper.hash(self.transactingPartyId) ^ Mapper.hash(self.transactingPartyType) ^ Mapper.hash(self.quantity) ^ Mapper.hash(self.waybillNumber) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.transactionType) ^ Mapper.hash(self.transactionReason) ^ Mapper.hash(self.additionalFields);
  @override bool equals(StockModel self, StockModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.facilityId, other.facilityId) && Mapper.isEqual(self.productVariantId, other.productVariantId) && Mapper.isEqual(self.referenceId, other.referenceId) && Mapper.isEqual(self.referenceIdType, other.referenceIdType) && Mapper.isEqual(self.transactingPartyId, other.transactingPartyId) && Mapper.isEqual(self.transactingPartyType, other.transactingPartyType) && Mapper.isEqual(self.quantity, other.quantity) && Mapper.isEqual(self.waybillNumber, other.waybillNumber) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.transactionType, other.transactionType) && Mapper.isEqual(self.transactionReason, other.transactionReason) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<StockModel>();
}

extension StockModelMapperExtension  on StockModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  StockModelCopyWith<StockModel> get copyWith => StockModelCopyWith(this, $identity);
}

abstract class StockModelCopyWith<$R> {
  factory StockModelCopyWith(StockModel value, Then<StockModel, $R> then) = _StockModelCopyWithImpl<$R>;
  StockAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({StockAdditionalFields? additionalFields, String? id, String? tenantId, String? facilityId, String? productVariantId, String? referenceId, String? referenceIdType, String? transactingPartyId, String? transactingPartyType, String? quantity, String? waybillNumber, String? clientReferenceId, bool? isDeleted, int? rowVersion, TransactionType? transactionType, TransactionReason? transactionReason, AuditDetails? auditDetails});
  $R apply(StockModel Function(StockModel) transform);
}

class _StockModelCopyWithImpl<$R> extends BaseCopyWith<StockModel, $R> implements StockModelCopyWith<$R> {
  _StockModelCopyWithImpl(StockModel value, Then<StockModel, $R> then) : super(value, then);

  @override StockAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? StockAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? tenantId = $none, Object? facilityId = $none, Object? productVariantId = $none, Object? referenceId = $none, Object? referenceIdType = $none, Object? transactingPartyId = $none, Object? transactingPartyType = $none, Object? quantity = $none, Object? waybillNumber = $none, String? clientReferenceId, Object? isDeleted = $none, Object? rowVersion = $none, Object? transactionType = $none, Object? transactionReason = $none, Object? auditDetails = $none}) => $then(StockModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), tenantId: or(tenantId, $value.tenantId), facilityId: or(facilityId, $value.facilityId), productVariantId: or(productVariantId, $value.productVariantId), referenceId: or(referenceId, $value.referenceId), referenceIdType: or(referenceIdType, $value.referenceIdType), transactingPartyId: or(transactingPartyId, $value.transactingPartyId), transactingPartyType: or(transactingPartyType, $value.transactingPartyType), quantity: or(quantity, $value.quantity), waybillNumber: or(waybillNumber, $value.waybillNumber), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), transactionType: or(transactionType, $value.transactionType), transactionReason: or(transactionReason, $value.transactionReason), auditDetails: or(auditDetails, $value.auditDetails)));
}

class StockAdditionalFieldsMapper extends BaseMapper<StockAdditionalFields> {
  StockAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  StockAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  StockAdditionalFields fromMap(Map<String, dynamic> map) => StockAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Stock', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (StockAdditionalFields v) => encode(v);
  dynamic encode(StockAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(StockAdditionalFields s) => {'schema': Mapper.i.$enc(s.schema, 'schema'), 'version': Mapper.i.$enc(s.version, 'version'), 'fields': Mapper.i.$enc(s.fields, 'fields')};

  @override String stringify(StockAdditionalFields self) => 'StockAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(StockAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(StockAdditionalFields self, StockAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<StockAdditionalFields>();
}

extension StockAdditionalFieldsMapperExtension  on StockAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  StockAdditionalFieldsCopyWith<StockAdditionalFields> get copyWith => StockAdditionalFieldsCopyWith(this, $identity);
}

abstract class StockAdditionalFieldsCopyWith<$R> {
  factory StockAdditionalFieldsCopyWith(StockAdditionalFields value, Then<StockAdditionalFields, $R> then) = _StockAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(StockAdditionalFields Function(StockAdditionalFields) transform);
}

class _StockAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<StockAdditionalFields, $R> implements StockAdditionalFieldsCopyWith<$R> {
  _StockAdditionalFieldsCopyWithImpl(StockAdditionalFields value, Then<StockAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(StockAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class StockReconciliationSearchModelMapper extends BaseMapper<StockReconciliationSearchModel> {
  StockReconciliationSearchModelMapper._();

  @override Function get decoder => decode;
  StockReconciliationSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  StockReconciliationSearchModel fromMap(Map<String, dynamic> map) => StockReconciliationSearchModel(id: Mapper.i.$getOpt(map, 'id'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), facilityId: Mapper.i.$getOpt(map, 'facilityId'), productVariantId: Mapper.i.$getOpt(map, 'productVariantId'), clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), dateOfReconciliation: Mapper.i.$getOpt(map, 'dateOfReconciliation'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (StockReconciliationSearchModel v) => encode(v);
  dynamic encode(StockReconciliationSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(StockReconciliationSearchModel s) => {if (Mapper.i.$enc(s.id, 'id') != null) 'id': Mapper.i.$enc(s.id, 'id'), if (Mapper.i.$enc(s.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(s.tenantId, 'tenantId'), if (Mapper.i.$enc(s.facilityId, 'facilityId') != null) 'facilityId': Mapper.i.$enc(s.facilityId, 'facilityId'), if (Mapper.i.$enc(s.productVariantId, 'productVariantId') != null) 'productVariantId': Mapper.i.$enc(s.productVariantId, 'productVariantId'), if (Mapper.i.$enc(s.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(s.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(s.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(s.isDeleted, 'isDeleted'), if (Mapper.i.$enc(s.dateOfReconciliation, 'dateOfReconciliation') != null) 'dateOfReconciliation': Mapper.i.$enc(s.dateOfReconciliation, 'dateOfReconciliation'), if (Mapper.i.$enc(s.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(s.boundaryCode, 'boundaryCode')};

  @override String stringify(StockReconciliationSearchModel self) => 'StockReconciliationSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, tenantId: ${Mapper.asString(self.tenantId)}, facilityId: ${Mapper.asString(self.facilityId)}, productVariantId: ${Mapper.asString(self.productVariantId)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, dateOfReconciliationTime: ${Mapper.asString(self.dateOfReconciliationTime)})';
  @override int hash(StockReconciliationSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.facilityId) ^ Mapper.hash(self.productVariantId) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.dateOfReconciliationTime);
  @override bool equals(StockReconciliationSearchModel self, StockReconciliationSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.facilityId, other.facilityId) && Mapper.isEqual(self.productVariantId, other.productVariantId) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.dateOfReconciliationTime, other.dateOfReconciliationTime);

  @override Function get typeFactory => (f) => f<StockReconciliationSearchModel>();
}

extension StockReconciliationSearchModelMapperExtension  on StockReconciliationSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  StockReconciliationSearchModelCopyWith<StockReconciliationSearchModel> get copyWith => StockReconciliationSearchModelCopyWith(this, $identity);
}

abstract class StockReconciliationSearchModelCopyWith<$R> {
  factory StockReconciliationSearchModelCopyWith(StockReconciliationSearchModel value, Then<StockReconciliationSearchModel, $R> then) = _StockReconciliationSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? tenantId, String? facilityId, String? productVariantId, List<String>? clientReferenceId, bool? isDeleted, int? dateOfReconciliation, String? boundaryCode});
  $R apply(StockReconciliationSearchModel Function(StockReconciliationSearchModel) transform);
}

class _StockReconciliationSearchModelCopyWithImpl<$R> extends BaseCopyWith<StockReconciliationSearchModel, $R> implements StockReconciliationSearchModelCopyWith<$R> {
  _StockReconciliationSearchModelCopyWithImpl(StockReconciliationSearchModel value, Then<StockReconciliationSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? tenantId = $none, Object? facilityId = $none, Object? productVariantId = $none, Object? clientReferenceId = $none, Object? isDeleted = $none, Object? dateOfReconciliation = $none, Object? boundaryCode = $none}) => $then(StockReconciliationSearchModel(id: or(id, $value.id), tenantId: or(tenantId, $value.tenantId), facilityId: or(facilityId, $value.facilityId), productVariantId: or(productVariantId, $value.productVariantId), clientReferenceId: or(clientReferenceId, $value.clientReferenceId), isDeleted: or(isDeleted, $value.isDeleted), dateOfReconciliation: or(dateOfReconciliation, $value.dateOfReconciliation), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class StockReconciliationModelMapper extends BaseMapper<StockReconciliationModel> {
  StockReconciliationModelMapper._();

  @override Function get decoder => decode;
  StockReconciliationModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  StockReconciliationModel fromMap(Map<String, dynamic> map) => StockReconciliationModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), facilityId: Mapper.i.$getOpt(map, 'facilityId'), productVariantId: Mapper.i.$getOpt(map, 'productVariantId'), referenceId: Mapper.i.$getOpt(map, 'referenceId'), referenceIdType: Mapper.i.$getOpt(map, 'referenceIdType'), physicalCount: Mapper.i.$getOpt(map, 'physicalCount'), calculatedCount: Mapper.i.$getOpt(map, 'calculatedCount'), commentsOnReconciliation: Mapper.i.$getOpt(map, 'commentsOnReconciliation'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), dateOfReconciliation: Mapper.i.$get(map, 'dateOfReconciliation'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (StockReconciliationModel v) => encode(v);
  dynamic encode(StockReconciliationModel v) => toMap(v);
  Map<String, dynamic> toMap(StockReconciliationModel s) => {if (Mapper.i.$enc(s.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(s.additionalFields, 'additionalFields'), if (Mapper.i.$enc(s.id, 'id') != null) 'id': Mapper.i.$enc(s.id, 'id'), if (Mapper.i.$enc(s.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(s.tenantId, 'tenantId'), if (Mapper.i.$enc(s.facilityId, 'facilityId') != null) 'facilityId': Mapper.i.$enc(s.facilityId, 'facilityId'), if (Mapper.i.$enc(s.productVariantId, 'productVariantId') != null) 'productVariantId': Mapper.i.$enc(s.productVariantId, 'productVariantId'), if (Mapper.i.$enc(s.referenceId, 'referenceId') != null) 'referenceId': Mapper.i.$enc(s.referenceId, 'referenceId'), if (Mapper.i.$enc(s.referenceIdType, 'referenceIdType') != null) 'referenceIdType': Mapper.i.$enc(s.referenceIdType, 'referenceIdType'), if (Mapper.i.$enc(s.physicalCount, 'physicalCount') != null) 'physicalCount': Mapper.i.$enc(s.physicalCount, 'physicalCount'), if (Mapper.i.$enc(s.calculatedCount, 'calculatedCount') != null) 'calculatedCount': Mapper.i.$enc(s.calculatedCount, 'calculatedCount'), if (Mapper.i.$enc(s.commentsOnReconciliation, 'commentsOnReconciliation') != null) 'commentsOnReconciliation': Mapper.i.$enc(s.commentsOnReconciliation, 'commentsOnReconciliation'), 'clientReferenceId': Mapper.i.$enc(s.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(s.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(s.isDeleted, 'isDeleted'), if (Mapper.i.$enc(s.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(s.rowVersion, 'rowVersion'), 'dateOfReconciliation': Mapper.i.$enc(s.dateOfReconciliation, 'dateOfReconciliation'), if (Mapper.i.$enc(s.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(s.auditDetails, 'auditDetails')};

  @override String stringify(StockReconciliationModel self) => 'StockReconciliationModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, tenantId: ${Mapper.asString(self.tenantId)}, facilityId: ${Mapper.asString(self.facilityId)}, productVariantId: ${Mapper.asString(self.productVariantId)}, referenceId: ${Mapper.asString(self.referenceId)}, referenceIdType: ${Mapper.asString(self.referenceIdType)}, physicalCount: ${Mapper.asString(self.physicalCount)}, calculatedCount: ${Mapper.asString(self.calculatedCount)}, commentsOnReconciliation: ${Mapper.asString(self.commentsOnReconciliation)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, dateOfReconciliationTime: ${Mapper.asString(self.dateOfReconciliationTime)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(StockReconciliationModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.facilityId) ^ Mapper.hash(self.productVariantId) ^ Mapper.hash(self.referenceId) ^ Mapper.hash(self.referenceIdType) ^ Mapper.hash(self.physicalCount) ^ Mapper.hash(self.calculatedCount) ^ Mapper.hash(self.commentsOnReconciliation) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.dateOfReconciliationTime) ^ Mapper.hash(self.additionalFields);
  @override bool equals(StockReconciliationModel self, StockReconciliationModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.facilityId, other.facilityId) && Mapper.isEqual(self.productVariantId, other.productVariantId) && Mapper.isEqual(self.referenceId, other.referenceId) && Mapper.isEqual(self.referenceIdType, other.referenceIdType) && Mapper.isEqual(self.physicalCount, other.physicalCount) && Mapper.isEqual(self.calculatedCount, other.calculatedCount) && Mapper.isEqual(self.commentsOnReconciliation, other.commentsOnReconciliation) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.dateOfReconciliationTime, other.dateOfReconciliationTime) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<StockReconciliationModel>();
}

extension StockReconciliationModelMapperExtension  on StockReconciliationModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  StockReconciliationModelCopyWith<StockReconciliationModel> get copyWith => StockReconciliationModelCopyWith(this, $identity);
}

abstract class StockReconciliationModelCopyWith<$R> {
  factory StockReconciliationModelCopyWith(StockReconciliationModel value, Then<StockReconciliationModel, $R> then) = _StockReconciliationModelCopyWithImpl<$R>;
  StockReconciliationAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({StockReconciliationAdditionalFields? additionalFields, String? id, String? tenantId, String? facilityId, String? productVariantId, String? referenceId, String? referenceIdType, int? physicalCount, int? calculatedCount, String? commentsOnReconciliation, String? clientReferenceId, bool? isDeleted, int? rowVersion, int? dateOfReconciliation, AuditDetails? auditDetails});
  $R apply(StockReconciliationModel Function(StockReconciliationModel) transform);
}

class _StockReconciliationModelCopyWithImpl<$R> extends BaseCopyWith<StockReconciliationModel, $R> implements StockReconciliationModelCopyWith<$R> {
  _StockReconciliationModelCopyWithImpl(StockReconciliationModel value, Then<StockReconciliationModel, $R> then) : super(value, then);

  @override StockReconciliationAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? StockReconciliationAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? tenantId = $none, Object? facilityId = $none, Object? productVariantId = $none, Object? referenceId = $none, Object? referenceIdType = $none, Object? physicalCount = $none, Object? calculatedCount = $none, Object? commentsOnReconciliation = $none, String? clientReferenceId, Object? isDeleted = $none, Object? rowVersion = $none, int? dateOfReconciliation, Object? auditDetails = $none}) => $then(StockReconciliationModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), tenantId: or(tenantId, $value.tenantId), facilityId: or(facilityId, $value.facilityId), productVariantId: or(productVariantId, $value.productVariantId), referenceId: or(referenceId, $value.referenceId), referenceIdType: or(referenceIdType, $value.referenceIdType), physicalCount: or(physicalCount, $value.physicalCount), calculatedCount: or(calculatedCount, $value.calculatedCount), commentsOnReconciliation: or(commentsOnReconciliation, $value.commentsOnReconciliation), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), dateOfReconciliation: dateOfReconciliation ?? $value.dateOfReconciliation, auditDetails: or(auditDetails, $value.auditDetails)));
}

class StockReconciliationAdditionalFieldsMapper extends BaseMapper<StockReconciliationAdditionalFields> {
  StockReconciliationAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  StockReconciliationAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  StockReconciliationAdditionalFields fromMap(Map<String, dynamic> map) => StockReconciliationAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'StockReconciliation', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (StockReconciliationAdditionalFields v) => encode(v);
  dynamic encode(StockReconciliationAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(StockReconciliationAdditionalFields s) => {'schema': Mapper.i.$enc(s.schema, 'schema'), 'version': Mapper.i.$enc(s.version, 'version'), 'fields': Mapper.i.$enc(s.fields, 'fields')};

  @override String stringify(StockReconciliationAdditionalFields self) => 'StockReconciliationAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(StockReconciliationAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(StockReconciliationAdditionalFields self, StockReconciliationAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<StockReconciliationAdditionalFields>();
}

extension StockReconciliationAdditionalFieldsMapperExtension  on StockReconciliationAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  StockReconciliationAdditionalFieldsCopyWith<StockReconciliationAdditionalFields> get copyWith => StockReconciliationAdditionalFieldsCopyWith(this, $identity);
}

abstract class StockReconciliationAdditionalFieldsCopyWith<$R> {
  factory StockReconciliationAdditionalFieldsCopyWith(StockReconciliationAdditionalFields value, Then<StockReconciliationAdditionalFields, $R> then) = _StockReconciliationAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(StockReconciliationAdditionalFields Function(StockReconciliationAdditionalFields) transform);
}

class _StockReconciliationAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<StockReconciliationAdditionalFields, $R> implements StockReconciliationAdditionalFieldsCopyWith<$R> {
  _StockReconciliationAdditionalFieldsCopyWithImpl(StockReconciliationAdditionalFields value, Then<StockReconciliationAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(StockReconciliationAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class TargetSearchModelMapper extends BaseMapper<TargetSearchModel> {
  TargetSearchModelMapper._();

  @override Function get decoder => decode;
  TargetSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  TargetSearchModel fromMap(Map<String, dynamic> map) => TargetSearchModel(tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (TargetSearchModel v) => encode(v);
  dynamic encode(TargetSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(TargetSearchModel t) => {if (Mapper.i.$enc(t.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(t.tenantId, 'tenantId'), if (Mapper.i.$enc(t.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(t.isDeleted, 'isDeleted'), if (Mapper.i.$enc(t.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(t.boundaryCode, 'boundaryCode')};

  @override String stringify(TargetSearchModel self) => 'TargetSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(TargetSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(TargetSearchModel self, TargetSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<TargetSearchModel>();
}

extension TargetSearchModelMapperExtension  on TargetSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  TargetSearchModelCopyWith<TargetSearchModel> get copyWith => TargetSearchModelCopyWith(this, $identity);
}

abstract class TargetSearchModelCopyWith<$R> {
  factory TargetSearchModelCopyWith(TargetSearchModel value, Then<TargetSearchModel, $R> then) = _TargetSearchModelCopyWithImpl<$R>;
  $R call({String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(TargetSearchModel Function(TargetSearchModel) transform);
}

class _TargetSearchModelCopyWithImpl<$R> extends BaseCopyWith<TargetSearchModel, $R> implements TargetSearchModelCopyWith<$R> {
  _TargetSearchModelCopyWithImpl(TargetSearchModel value, Then<TargetSearchModel, $R> then) : super(value, then);

  @override $R call({Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(TargetSearchModel(tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class TargetModelMapper extends BaseMapper<TargetModel> {
  TargetModelMapper._();

  @override Function get decoder => decode;
  TargetModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  TargetModel fromMap(Map<String, dynamic> map) => TargetModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$get(map, 'id'), beneficiaryType: Mapper.i.$getOpt(map, 'beneficiaryType'), baseline: Mapper.i.$getOpt(map, 'baseline'), target: Mapper.i.$getOpt(map, 'target'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (TargetModel v) => encode(v);
  dynamic encode(TargetModel v) => toMap(v);
  Map<String, dynamic> toMap(TargetModel t) => {if (Mapper.i.$enc(t.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(t.additionalFields, 'additionalFields'), 'id': Mapper.i.$enc(t.id, 'id'), if (Mapper.i.$enc(t.beneficiaryType, 'beneficiaryType') != null) 'beneficiaryType': Mapper.i.$enc(t.beneficiaryType, 'beneficiaryType'), if (Mapper.i.$enc(t.baseline, 'baseline') != null) 'baseline': Mapper.i.$enc(t.baseline, 'baseline'), if (Mapper.i.$enc(t.target, 'target') != null) 'target': Mapper.i.$enc(t.target, 'target'), if (Mapper.i.$enc(t.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(t.tenantId, 'tenantId'), if (Mapper.i.$enc(t.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(t.isDeleted, 'isDeleted'), if (Mapper.i.$enc(t.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(t.rowVersion, 'rowVersion'), if (Mapper.i.$enc(t.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(t.auditDetails, 'auditDetails')};

  @override String stringify(TargetModel self) => 'TargetModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, beneficiaryType: ${Mapper.asString(self.beneficiaryType)}, baseline: ${Mapper.asString(self.baseline)}, target: ${Mapper.asString(self.target)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(TargetModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.beneficiaryType) ^ Mapper.hash(self.baseline) ^ Mapper.hash(self.target) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(TargetModel self, TargetModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.beneficiaryType, other.beneficiaryType) && Mapper.isEqual(self.baseline, other.baseline) && Mapper.isEqual(self.target, other.target) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<TargetModel>();
}

extension TargetModelMapperExtension  on TargetModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  TargetModelCopyWith<TargetModel> get copyWith => TargetModelCopyWith(this, $identity);
}

abstract class TargetModelCopyWith<$R> {
  factory TargetModelCopyWith(TargetModel value, Then<TargetModel, $R> then) = _TargetModelCopyWithImpl<$R>;
  TargetAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({TargetAdditionalFields? additionalFields, String? id, String? beneficiaryType, String? baseline, String? target, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(TargetModel Function(TargetModel) transform);
}

class _TargetModelCopyWithImpl<$R> extends BaseCopyWith<TargetModel, $R> implements TargetModelCopyWith<$R> {
  _TargetModelCopyWithImpl(TargetModel value, Then<TargetModel, $R> then) : super(value, then);

  @override TargetAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? TargetAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, String? id, Object? beneficiaryType = $none, Object? baseline = $none, Object? target = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(TargetModel(additionalFields: or(additionalFields, $value.additionalFields), id: id ?? $value.id, beneficiaryType: or(beneficiaryType, $value.beneficiaryType), baseline: or(baseline, $value.baseline), target: or(target, $value.target), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class TargetAdditionalFieldsMapper extends BaseMapper<TargetAdditionalFields> {
  TargetAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  TargetAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  TargetAdditionalFields fromMap(Map<String, dynamic> map) => TargetAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Target', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (TargetAdditionalFields v) => encode(v);
  dynamic encode(TargetAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(TargetAdditionalFields t) => {'schema': Mapper.i.$enc(t.schema, 'schema'), 'version': Mapper.i.$enc(t.version, 'version'), 'fields': Mapper.i.$enc(t.fields, 'fields')};

  @override String stringify(TargetAdditionalFields self) => 'TargetAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(TargetAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(TargetAdditionalFields self, TargetAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<TargetAdditionalFields>();
}

extension TargetAdditionalFieldsMapperExtension  on TargetAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  TargetAdditionalFieldsCopyWith<TargetAdditionalFields> get copyWith => TargetAdditionalFieldsCopyWith(this, $identity);
}

abstract class TargetAdditionalFieldsCopyWith<$R> {
  factory TargetAdditionalFieldsCopyWith(TargetAdditionalFields value, Then<TargetAdditionalFields, $R> then) = _TargetAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(TargetAdditionalFields Function(TargetAdditionalFields) transform);
}

class _TargetAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<TargetAdditionalFields, $R> implements TargetAdditionalFieldsCopyWith<$R> {
  _TargetAdditionalFieldsCopyWithImpl(TargetAdditionalFields value, Then<TargetAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(TargetAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class TaskSearchModelMapper extends BaseMapper<TaskSearchModel> {
  TaskSearchModelMapper._();

  @override Function get decoder => decode;
  TaskSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  TaskSearchModel fromMap(Map<String, dynamic> map) => TaskSearchModel(id: Mapper.i.$getOpt(map, 'id'), projectId: Mapper.i.$getOpt(map, 'projectId'), projectBeneficiaryId: Mapper.i.$getOpt(map, 'projectBeneficiaryId'), projectBeneficiaryClientReferenceId: Mapper.i.$getOpt(map, 'projectBeneficiaryClientReferenceId'), createdBy: Mapper.i.$getOpt(map, 'createdBy'), status: Mapper.i.$getOpt(map, 'status'), clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), plannedStartDate: Mapper.i.$getOpt(map, 'plannedStartDate'), plannedEndDate: Mapper.i.$getOpt(map, 'plannedEndDate'), actualStartDate: Mapper.i.$getOpt(map, 'actualStartDate'), actualEndDate: Mapper.i.$getOpt(map, 'actualEndDate'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (TaskSearchModel v) => encode(v);
  dynamic encode(TaskSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(TaskSearchModel t) => {if (Mapper.i.$enc(t.id, 'id') != null) 'id': Mapper.i.$enc(t.id, 'id'), if (Mapper.i.$enc(t.projectId, 'projectId') != null) 'projectId': Mapper.i.$enc(t.projectId, 'projectId'), if (Mapper.i.$enc(t.projectBeneficiaryId, 'projectBeneficiaryId') != null) 'projectBeneficiaryId': Mapper.i.$enc(t.projectBeneficiaryId, 'projectBeneficiaryId'), if (Mapper.i.$enc(t.projectBeneficiaryClientReferenceId, 'projectBeneficiaryClientReferenceId') != null) 'projectBeneficiaryClientReferenceId': Mapper.i.$enc(t.projectBeneficiaryClientReferenceId, 'projectBeneficiaryClientReferenceId'), if (Mapper.i.$enc(t.createdBy, 'createdBy') != null) 'createdBy': Mapper.i.$enc(t.createdBy, 'createdBy'), if (Mapper.i.$enc(t.status, 'status') != null) 'status': Mapper.i.$enc(t.status, 'status'), if (Mapper.i.$enc(t.clientReferenceId, 'clientReferenceId') != null) 'clientReferenceId': Mapper.i.$enc(t.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(t.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(t.tenantId, 'tenantId'), if (Mapper.i.$enc(t.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(t.isDeleted, 'isDeleted'), if (Mapper.i.$enc(t.plannedStartDate, 'plannedStartDate') != null) 'plannedStartDate': Mapper.i.$enc(t.plannedStartDate, 'plannedStartDate'), if (Mapper.i.$enc(t.plannedEndDate, 'plannedEndDate') != null) 'plannedEndDate': Mapper.i.$enc(t.plannedEndDate, 'plannedEndDate'), if (Mapper.i.$enc(t.actualStartDate, 'actualStartDate') != null) 'actualStartDate': Mapper.i.$enc(t.actualStartDate, 'actualStartDate'), if (Mapper.i.$enc(t.actualEndDate, 'actualEndDate') != null) 'actualEndDate': Mapper.i.$enc(t.actualEndDate, 'actualEndDate'), if (Mapper.i.$enc(t.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(t.boundaryCode, 'boundaryCode')};

  @override String stringify(TaskSearchModel self) => 'TaskSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, projectId: ${Mapper.asString(self.projectId)}, projectBeneficiaryId: ${Mapper.asString(self.projectBeneficiaryId)}, projectBeneficiaryClientReferenceId: ${Mapper.asString(self.projectBeneficiaryClientReferenceId)}, createdBy: ${Mapper.asString(self.createdBy)}, status: ${Mapper.asString(self.status)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, plannedStartDateTime: ${Mapper.asString(self.plannedStartDateTime)}, plannedEndDateTime: ${Mapper.asString(self.plannedEndDateTime)}, actualStartDateTime: ${Mapper.asString(self.actualStartDateTime)}, actualEndDateTime: ${Mapper.asString(self.actualEndDateTime)})';
  @override int hash(TaskSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.projectId) ^ Mapper.hash(self.projectBeneficiaryId) ^ Mapper.hash(self.projectBeneficiaryClientReferenceId) ^ Mapper.hash(self.createdBy) ^ Mapper.hash(self.status) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.plannedStartDateTime) ^ Mapper.hash(self.plannedEndDateTime) ^ Mapper.hash(self.actualStartDateTime) ^ Mapper.hash(self.actualEndDateTime);
  @override bool equals(TaskSearchModel self, TaskSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.projectId, other.projectId) && Mapper.isEqual(self.projectBeneficiaryId, other.projectBeneficiaryId) && Mapper.isEqual(self.projectBeneficiaryClientReferenceId, other.projectBeneficiaryClientReferenceId) && Mapper.isEqual(self.createdBy, other.createdBy) && Mapper.isEqual(self.status, other.status) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.plannedStartDateTime, other.plannedStartDateTime) && Mapper.isEqual(self.plannedEndDateTime, other.plannedEndDateTime) && Mapper.isEqual(self.actualStartDateTime, other.actualStartDateTime) && Mapper.isEqual(self.actualEndDateTime, other.actualEndDateTime);

  @override Function get typeFactory => (f) => f<TaskSearchModel>();
}

extension TaskSearchModelMapperExtension  on TaskSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  TaskSearchModelCopyWith<TaskSearchModel> get copyWith => TaskSearchModelCopyWith(this, $identity);
}

abstract class TaskSearchModelCopyWith<$R> {
  factory TaskSearchModelCopyWith(TaskSearchModel value, Then<TaskSearchModel, $R> then) = _TaskSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? projectId, String? projectBeneficiaryId, String? projectBeneficiaryClientReferenceId, String? createdBy, String? status, List<String>? clientReferenceId, String? tenantId, bool? isDeleted, int? plannedStartDate, int? plannedEndDate, int? actualStartDate, int? actualEndDate, String? boundaryCode});
  $R apply(TaskSearchModel Function(TaskSearchModel) transform);
}

class _TaskSearchModelCopyWithImpl<$R> extends BaseCopyWith<TaskSearchModel, $R> implements TaskSearchModelCopyWith<$R> {
  _TaskSearchModelCopyWithImpl(TaskSearchModel value, Then<TaskSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? projectId = $none, Object? projectBeneficiaryId = $none, Object? projectBeneficiaryClientReferenceId = $none, Object? createdBy = $none, Object? status = $none, Object? clientReferenceId = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? plannedStartDate = $none, Object? plannedEndDate = $none, Object? actualStartDate = $none, Object? actualEndDate = $none, Object? boundaryCode = $none}) => $then(TaskSearchModel(id: or(id, $value.id), projectId: or(projectId, $value.projectId), projectBeneficiaryId: or(projectBeneficiaryId, $value.projectBeneficiaryId), projectBeneficiaryClientReferenceId: or(projectBeneficiaryClientReferenceId, $value.projectBeneficiaryClientReferenceId), createdBy: or(createdBy, $value.createdBy), status: or(status, $value.status), clientReferenceId: or(clientReferenceId, $value.clientReferenceId), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), plannedStartDate: or(plannedStartDate, $value.plannedStartDate), plannedEndDate: or(plannedEndDate, $value.plannedEndDate), actualStartDate: or(actualStartDate, $value.actualStartDate), actualEndDate: or(actualEndDate, $value.actualEndDate), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class TaskModelMapper extends BaseMapper<TaskModel> {
  TaskModelMapper._();

  @override Function get decoder => decode;
  TaskModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  TaskModel fromMap(Map<String, dynamic> map) => TaskModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), id: Mapper.i.$getOpt(map, 'id'), projectId: Mapper.i.$getOpt(map, 'projectId'), projectBeneficiaryId: Mapper.i.$getOpt(map, 'projectBeneficiaryId'), projectBeneficiaryClientReferenceId: Mapper.i.$getOpt(map, 'projectBeneficiaryClientReferenceId'), createdBy: Mapper.i.$getOpt(map, 'createdBy'), status: Mapper.i.$getOpt(map, 'status'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), resources: Mapper.i.$getOpt(map, 'resources'), address: Mapper.i.$getOpt(map, 'address'), plannedStartDate: Mapper.i.$getOpt(map, 'plannedStartDate'), plannedEndDate: Mapper.i.$getOpt(map, 'plannedEndDate'), actualStartDate: Mapper.i.$getOpt(map, 'actualStartDate'), actualEndDate: Mapper.i.$getOpt(map, 'actualEndDate'), createdDate: Mapper.i.$getOpt(map, 'createdDate'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (TaskModel v) => encode(v);
  dynamic encode(TaskModel v) => toMap(v);
  Map<String, dynamic> toMap(TaskModel t) => {if (Mapper.i.$enc(t.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(t.additionalFields, 'additionalFields'), if (Mapper.i.$enc(t.id, 'id') != null) 'id': Mapper.i.$enc(t.id, 'id'), if (Mapper.i.$enc(t.projectId, 'projectId') != null) 'projectId': Mapper.i.$enc(t.projectId, 'projectId'), if (Mapper.i.$enc(t.projectBeneficiaryId, 'projectBeneficiaryId') != null) 'projectBeneficiaryId': Mapper.i.$enc(t.projectBeneficiaryId, 'projectBeneficiaryId'), if (Mapper.i.$enc(t.projectBeneficiaryClientReferenceId, 'projectBeneficiaryClientReferenceId') != null) 'projectBeneficiaryClientReferenceId': Mapper.i.$enc(t.projectBeneficiaryClientReferenceId, 'projectBeneficiaryClientReferenceId'), if (Mapper.i.$enc(t.createdBy, 'createdBy') != null) 'createdBy': Mapper.i.$enc(t.createdBy, 'createdBy'), if (Mapper.i.$enc(t.status, 'status') != null) 'status': Mapper.i.$enc(t.status, 'status'), 'clientReferenceId': Mapper.i.$enc(t.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(t.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(t.tenantId, 'tenantId'), if (Mapper.i.$enc(t.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(t.isDeleted, 'isDeleted'), if (Mapper.i.$enc(t.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(t.rowVersion, 'rowVersion'), if (Mapper.i.$enc(t.resources, 'resources') != null) 'resources': Mapper.i.$enc(t.resources, 'resources'), if (Mapper.i.$enc(t.address, 'address') != null) 'address': Mapper.i.$enc(t.address, 'address'), if (Mapper.i.$enc(t.plannedStartDate, 'plannedStartDate') != null) 'plannedStartDate': Mapper.i.$enc(t.plannedStartDate, 'plannedStartDate'), if (Mapper.i.$enc(t.plannedEndDate, 'plannedEndDate') != null) 'plannedEndDate': Mapper.i.$enc(t.plannedEndDate, 'plannedEndDate'), if (Mapper.i.$enc(t.actualStartDate, 'actualStartDate') != null) 'actualStartDate': Mapper.i.$enc(t.actualStartDate, 'actualStartDate'), if (Mapper.i.$enc(t.actualEndDate, 'actualEndDate') != null) 'actualEndDate': Mapper.i.$enc(t.actualEndDate, 'actualEndDate'), if (Mapper.i.$enc(t.createdDate, 'createdDate') != null) 'createdDate': Mapper.i.$enc(t.createdDate, 'createdDate'), if (Mapper.i.$enc(t.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(t.auditDetails, 'auditDetails')};

  @override String stringify(TaskModel self) => 'TaskModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, id: ${Mapper.asString(self.id)}, projectId: ${Mapper.asString(self.projectId)}, projectBeneficiaryId: ${Mapper.asString(self.projectBeneficiaryId)}, projectBeneficiaryClientReferenceId: ${Mapper.asString(self.projectBeneficiaryClientReferenceId)}, createdBy: ${Mapper.asString(self.createdBy)}, status: ${Mapper.asString(self.status)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, resources: ${Mapper.asString(self.resources)}, address: ${Mapper.asString(self.address)}, plannedStartDateTime: ${Mapper.asString(self.plannedStartDateTime)}, plannedEndDateTime: ${Mapper.asString(self.plannedEndDateTime)}, actualStartDateTime: ${Mapper.asString(self.actualStartDateTime)}, actualEndDateTime: ${Mapper.asString(self.actualEndDateTime)}, createdDateTime: ${Mapper.asString(self.createdDateTime)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(TaskModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.id) ^ Mapper.hash(self.projectId) ^ Mapper.hash(self.projectBeneficiaryId) ^ Mapper.hash(self.projectBeneficiaryClientReferenceId) ^ Mapper.hash(self.createdBy) ^ Mapper.hash(self.status) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.resources) ^ Mapper.hash(self.address) ^ Mapper.hash(self.plannedStartDateTime) ^ Mapper.hash(self.plannedEndDateTime) ^ Mapper.hash(self.actualStartDateTime) ^ Mapper.hash(self.actualEndDateTime) ^ Mapper.hash(self.createdDateTime) ^ Mapper.hash(self.additionalFields);
  @override bool equals(TaskModel self, TaskModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.projectId, other.projectId) && Mapper.isEqual(self.projectBeneficiaryId, other.projectBeneficiaryId) && Mapper.isEqual(self.projectBeneficiaryClientReferenceId, other.projectBeneficiaryClientReferenceId) && Mapper.isEqual(self.createdBy, other.createdBy) && Mapper.isEqual(self.status, other.status) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.resources, other.resources) && Mapper.isEqual(self.address, other.address) && Mapper.isEqual(self.plannedStartDateTime, other.plannedStartDateTime) && Mapper.isEqual(self.plannedEndDateTime, other.plannedEndDateTime) && Mapper.isEqual(self.actualStartDateTime, other.actualStartDateTime) && Mapper.isEqual(self.actualEndDateTime, other.actualEndDateTime) && Mapper.isEqual(self.createdDateTime, other.createdDateTime) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<TaskModel>();
}

extension TaskModelMapperExtension  on TaskModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  TaskModelCopyWith<TaskModel> get copyWith => TaskModelCopyWith(this, $identity);
}

abstract class TaskModelCopyWith<$R> {
  factory TaskModelCopyWith(TaskModel value, Then<TaskModel, $R> then) = _TaskModelCopyWithImpl<$R>;
  TaskAdditionalFieldsCopyWith<$R>? get additionalFields;
  ListCopyWith<$R, TaskResourceModel, TaskResourceModelCopyWith<$R>>? get resources;
  AddressModelCopyWith<$R>? get address;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({TaskAdditionalFields? additionalFields, String? id, String? projectId, String? projectBeneficiaryId, String? projectBeneficiaryClientReferenceId, String? createdBy, String? status, String? clientReferenceId, String? tenantId, bool? isDeleted, int? rowVersion, List<TaskResourceModel>? resources, AddressModel? address, int? plannedStartDate, int? plannedEndDate, int? actualStartDate, int? actualEndDate, int? createdDate, AuditDetails? auditDetails});
  $R apply(TaskModel Function(TaskModel) transform);
}

class _TaskModelCopyWithImpl<$R> extends BaseCopyWith<TaskModel, $R> implements TaskModelCopyWith<$R> {
  _TaskModelCopyWithImpl(TaskModel value, Then<TaskModel, $R> then) : super(value, then);

  @override TaskAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? TaskAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override ListCopyWith<$R, TaskResourceModel, TaskResourceModelCopyWith<$R>>? get resources => $value.resources != null ? ListCopyWith($value.resources!, (v, t) => TaskResourceModelCopyWith(v, t), (v) => call(resources: v)) : null;
  @override AddressModelCopyWith<$R>? get address => $value.address != null ? AddressModelCopyWith($value.address!, (v) => call(address: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, Object? id = $none, Object? projectId = $none, Object? projectBeneficiaryId = $none, Object? projectBeneficiaryClientReferenceId = $none, Object? createdBy = $none, Object? status = $none, String? clientReferenceId, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? resources = $none, Object? address = $none, Object? plannedStartDate = $none, Object? plannedEndDate = $none, Object? actualStartDate = $none, Object? actualEndDate = $none, Object? createdDate = $none, Object? auditDetails = $none}) => $then(TaskModel(additionalFields: or(additionalFields, $value.additionalFields), id: or(id, $value.id), projectId: or(projectId, $value.projectId), projectBeneficiaryId: or(projectBeneficiaryId, $value.projectBeneficiaryId), projectBeneficiaryClientReferenceId: or(projectBeneficiaryClientReferenceId, $value.projectBeneficiaryClientReferenceId), createdBy: or(createdBy, $value.createdBy), status: or(status, $value.status), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), resources: or(resources, $value.resources), address: or(address, $value.address), plannedStartDate: or(plannedStartDate, $value.plannedStartDate), plannedEndDate: or(plannedEndDate, $value.plannedEndDate), actualStartDate: or(actualStartDate, $value.actualStartDate), actualEndDate: or(actualEndDate, $value.actualEndDate), createdDate: or(createdDate, $value.createdDate), auditDetails: or(auditDetails, $value.auditDetails)));
}

class TaskAdditionalFieldsMapper extends BaseMapper<TaskAdditionalFields> {
  TaskAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  TaskAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  TaskAdditionalFields fromMap(Map<String, dynamic> map) => TaskAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Task', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (TaskAdditionalFields v) => encode(v);
  dynamic encode(TaskAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(TaskAdditionalFields t) => {'schema': Mapper.i.$enc(t.schema, 'schema'), 'version': Mapper.i.$enc(t.version, 'version'), 'fields': Mapper.i.$enc(t.fields, 'fields')};

  @override String stringify(TaskAdditionalFields self) => 'TaskAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(TaskAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(TaskAdditionalFields self, TaskAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<TaskAdditionalFields>();
}

extension TaskAdditionalFieldsMapperExtension  on TaskAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  TaskAdditionalFieldsCopyWith<TaskAdditionalFields> get copyWith => TaskAdditionalFieldsCopyWith(this, $identity);
}

abstract class TaskAdditionalFieldsCopyWith<$R> {
  factory TaskAdditionalFieldsCopyWith(TaskAdditionalFields value, Then<TaskAdditionalFields, $R> then) = _TaskAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(TaskAdditionalFields Function(TaskAdditionalFields) transform);
}

class _TaskAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<TaskAdditionalFields, $R> implements TaskAdditionalFieldsCopyWith<$R> {
  _TaskAdditionalFieldsCopyWithImpl(TaskAdditionalFields value, Then<TaskAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(TaskAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class TaskResourceSearchModelMapper extends BaseMapper<TaskResourceSearchModel> {
  TaskResourceSearchModelMapper._();

  @override Function get decoder => decode;
  TaskResourceSearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  TaskResourceSearchModel fromMap(Map<String, dynamic> map) => TaskResourceSearchModel(id: Mapper.i.$getOpt(map, 'id'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (TaskResourceSearchModel v) => encode(v);
  dynamic encode(TaskResourceSearchModel v) => toMap(v);
  Map<String, dynamic> toMap(TaskResourceSearchModel t) => {if (Mapper.i.$enc(t.id, 'id') != null) 'id': Mapper.i.$enc(t.id, 'id'), if (Mapper.i.$enc(t.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(t.tenantId, 'tenantId'), if (Mapper.i.$enc(t.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(t.isDeleted, 'isDeleted'), if (Mapper.i.$enc(t.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(t.boundaryCode, 'boundaryCode')};

  @override String stringify(TaskResourceSearchModel self) => 'TaskResourceSearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, id: ${Mapper.asString(self.id)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(TaskResourceSearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.id) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(TaskResourceSearchModel self, TaskResourceSearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<TaskResourceSearchModel>();
}

extension TaskResourceSearchModelMapperExtension  on TaskResourceSearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  TaskResourceSearchModelCopyWith<TaskResourceSearchModel> get copyWith => TaskResourceSearchModelCopyWith(this, $identity);
}

abstract class TaskResourceSearchModelCopyWith<$R> {
  factory TaskResourceSearchModelCopyWith(TaskResourceSearchModel value, Then<TaskResourceSearchModel, $R> then) = _TaskResourceSearchModelCopyWithImpl<$R>;
  $R call({String? id, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(TaskResourceSearchModel Function(TaskResourceSearchModel) transform);
}

class _TaskResourceSearchModelCopyWithImpl<$R> extends BaseCopyWith<TaskResourceSearchModel, $R> implements TaskResourceSearchModelCopyWith<$R> {
  _TaskResourceSearchModelCopyWithImpl(TaskResourceSearchModel value, Then<TaskResourceSearchModel, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(TaskResourceSearchModel(id: or(id, $value.id), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class TaskResourceModelMapper extends BaseMapper<TaskResourceModel> {
  TaskResourceModelMapper._();

  @override Function get decoder => decode;
  TaskResourceModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  TaskResourceModel fromMap(Map<String, dynamic> map) => TaskResourceModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), clientReferenceId: Mapper.i.$get(map, 'clientReferenceId'), taskId: Mapper.i.$getOpt(map, 'taskId'), id: Mapper.i.$getOpt(map, 'id'), productVariantId: Mapper.i.$getOpt(map, 'productVariantId'), quantity: Mapper.i.$getOpt(map, 'quantity'), isDelivered: Mapper.i.$getOpt(map, 'isDelivered'), deliveryComment: Mapper.i.$getOpt(map, 'deliveryComment'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (TaskResourceModel v) => encode(v);
  dynamic encode(TaskResourceModel v) => toMap(v);
  Map<String, dynamic> toMap(TaskResourceModel t) => {if (Mapper.i.$enc(t.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(t.additionalFields, 'additionalFields'), 'clientReferenceId': Mapper.i.$enc(t.clientReferenceId, 'clientReferenceId'), if (Mapper.i.$enc(t.taskId, 'taskId') != null) 'taskId': Mapper.i.$enc(t.taskId, 'taskId'), if (Mapper.i.$enc(t.id, 'id') != null) 'id': Mapper.i.$enc(t.id, 'id'), if (Mapper.i.$enc(t.productVariantId, 'productVariantId') != null) 'productVariantId': Mapper.i.$enc(t.productVariantId, 'productVariantId'), if (Mapper.i.$enc(t.quantity, 'quantity') != null) 'quantity': Mapper.i.$enc(t.quantity, 'quantity'), if (Mapper.i.$enc(t.isDelivered, 'isDelivered') != null) 'isDelivered': Mapper.i.$enc(t.isDelivered, 'isDelivered'), if (Mapper.i.$enc(t.deliveryComment, 'deliveryComment') != null) 'deliveryComment': Mapper.i.$enc(t.deliveryComment, 'deliveryComment'), if (Mapper.i.$enc(t.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(t.tenantId, 'tenantId'), if (Mapper.i.$enc(t.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(t.isDeleted, 'isDeleted'), if (Mapper.i.$enc(t.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(t.rowVersion, 'rowVersion'), if (Mapper.i.$enc(t.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(t.auditDetails, 'auditDetails')};

  @override String stringify(TaskResourceModel self) => 'TaskResourceModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, taskId: ${Mapper.asString(self.taskId)}, id: ${Mapper.asString(self.id)}, productVariantId: ${Mapper.asString(self.productVariantId)}, quantity: ${Mapper.asString(self.quantity)}, isDelivered: ${Mapper.asString(self.isDelivered)}, deliveryComment: ${Mapper.asString(self.deliveryComment)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(TaskResourceModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.taskId) ^ Mapper.hash(self.id) ^ Mapper.hash(self.productVariantId) ^ Mapper.hash(self.quantity) ^ Mapper.hash(self.isDelivered) ^ Mapper.hash(self.deliveryComment) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(TaskResourceModel self, TaskResourceModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.taskId, other.taskId) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.productVariantId, other.productVariantId) && Mapper.isEqual(self.quantity, other.quantity) && Mapper.isEqual(self.isDelivered, other.isDelivered) && Mapper.isEqual(self.deliveryComment, other.deliveryComment) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<TaskResourceModel>();
}

extension TaskResourceModelMapperExtension  on TaskResourceModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  TaskResourceModelCopyWith<TaskResourceModel> get copyWith => TaskResourceModelCopyWith(this, $identity);
}

abstract class TaskResourceModelCopyWith<$R> {
  factory TaskResourceModelCopyWith(TaskResourceModel value, Then<TaskResourceModel, $R> then) = _TaskResourceModelCopyWithImpl<$R>;
  TaskResourceAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({TaskResourceAdditionalFields? additionalFields, String? clientReferenceId, String? taskId, String? id, String? productVariantId, String? quantity, bool? isDelivered, String? deliveryComment, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(TaskResourceModel Function(TaskResourceModel) transform);
}

class _TaskResourceModelCopyWithImpl<$R> extends BaseCopyWith<TaskResourceModel, $R> implements TaskResourceModelCopyWith<$R> {
  _TaskResourceModelCopyWithImpl(TaskResourceModel value, Then<TaskResourceModel, $R> then) : super(value, then);

  @override TaskResourceAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? TaskResourceAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, String? clientReferenceId, Object? taskId = $none, Object? id = $none, Object? productVariantId = $none, Object? quantity = $none, Object? isDelivered = $none, Object? deliveryComment = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(TaskResourceModel(additionalFields: or(additionalFields, $value.additionalFields), clientReferenceId: clientReferenceId ?? $value.clientReferenceId, taskId: or(taskId, $value.taskId), id: or(id, $value.id), productVariantId: or(productVariantId, $value.productVariantId), quantity: or(quantity, $value.quantity), isDelivered: or(isDelivered, $value.isDelivered), deliveryComment: or(deliveryComment, $value.deliveryComment), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class TaskResourceAdditionalFieldsMapper extends BaseMapper<TaskResourceAdditionalFields> {
  TaskResourceAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  TaskResourceAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  TaskResourceAdditionalFields fromMap(Map<String, dynamic> map) => TaskResourceAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'TaskResource', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (TaskResourceAdditionalFields v) => encode(v);
  dynamic encode(TaskResourceAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(TaskResourceAdditionalFields t) => {'schema': Mapper.i.$enc(t.schema, 'schema'), 'version': Mapper.i.$enc(t.version, 'version'), 'fields': Mapper.i.$enc(t.fields, 'fields')};

  @override String stringify(TaskResourceAdditionalFields self) => 'TaskResourceAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(TaskResourceAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(TaskResourceAdditionalFields self, TaskResourceAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<TaskResourceAdditionalFields>();
}

extension TaskResourceAdditionalFieldsMapperExtension  on TaskResourceAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  TaskResourceAdditionalFieldsCopyWith<TaskResourceAdditionalFields> get copyWith => TaskResourceAdditionalFieldsCopyWith(this, $identity);
}

abstract class TaskResourceAdditionalFieldsCopyWith<$R> {
  factory TaskResourceAdditionalFieldsCopyWith(TaskResourceAdditionalFields value, Then<TaskResourceAdditionalFields, $R> then) = _TaskResourceAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(TaskResourceAdditionalFields Function(TaskResourceAdditionalFields) transform);
}

class _TaskResourceAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<TaskResourceAdditionalFields, $R> implements TaskResourceAdditionalFieldsCopyWith<$R> {
  _TaskResourceAdditionalFieldsCopyWithImpl(TaskResourceAdditionalFields value, Then<TaskResourceAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(TaskResourceAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class LocalitySearchModelMapper extends BaseMapper<LocalitySearchModel> {
  LocalitySearchModelMapper._();

  @override Function get decoder => decode;
  LocalitySearchModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  LocalitySearchModel fromMap(Map<String, dynamic> map) => LocalitySearchModel(code: Mapper.i.$getOpt(map, 'code'), name: Mapper.i.$getOpt(map, 'name'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), boundaryCode: Mapper.i.$getOpt(map, 'boundaryCode'));

  @override Function get encoder => (LocalitySearchModel v) => encode(v);
  dynamic encode(LocalitySearchModel v) => toMap(v);
  Map<String, dynamic> toMap(LocalitySearchModel l) => {if (Mapper.i.$enc(l.code, 'code') != null) 'code': Mapper.i.$enc(l.code, 'code'), if (Mapper.i.$enc(l.name, 'name') != null) 'name': Mapper.i.$enc(l.name, 'name'), if (Mapper.i.$enc(l.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(l.tenantId, 'tenantId'), if (Mapper.i.$enc(l.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(l.isDeleted, 'isDeleted'), if (Mapper.i.$enc(l.boundaryCode, 'boundaryCode') != null) 'boundaryCode': Mapper.i.$enc(l.boundaryCode, 'boundaryCode')};

  @override String stringify(LocalitySearchModel self) => 'LocalitySearchModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, additionalFields: ${Mapper.asString(self.additionalFields)}, code: ${Mapper.asString(self.code)}, name: ${Mapper.asString(self.name)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)})';
  @override int hash(LocalitySearchModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.additionalFields) ^ Mapper.hash(self.code) ^ Mapper.hash(self.name) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted);
  @override bool equals(LocalitySearchModel self, LocalitySearchModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.additionalFields, other.additionalFields) && Mapper.isEqual(self.code, other.code) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted);

  @override Function get typeFactory => (f) => f<LocalitySearchModel>();
}

extension LocalitySearchModelMapperExtension  on LocalitySearchModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  LocalitySearchModelCopyWith<LocalitySearchModel> get copyWith => LocalitySearchModelCopyWith(this, $identity);
}

abstract class LocalitySearchModelCopyWith<$R> {
  factory LocalitySearchModelCopyWith(LocalitySearchModel value, Then<LocalitySearchModel, $R> then) = _LocalitySearchModelCopyWithImpl<$R>;
  $R call({String? code, String? name, String? tenantId, bool? isDeleted, String? boundaryCode});
  $R apply(LocalitySearchModel Function(LocalitySearchModel) transform);
}

class _LocalitySearchModelCopyWithImpl<$R> extends BaseCopyWith<LocalitySearchModel, $R> implements LocalitySearchModelCopyWith<$R> {
  _LocalitySearchModelCopyWithImpl(LocalitySearchModel value, Then<LocalitySearchModel, $R> then) : super(value, then);

  @override $R call({Object? code = $none, Object? name = $none, Object? tenantId = $none, Object? isDeleted = $none, Object? boundaryCode = $none}) => $then(LocalitySearchModel(code: or(code, $value.code), name: or(name, $value.name), tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), boundaryCode: or(boundaryCode, $value.boundaryCode)));
}

class LocalityModelMapper extends BaseMapper<LocalityModel> {
  LocalityModelMapper._();

  @override Function get decoder => decode;
  LocalityModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  LocalityModel fromMap(Map<String, dynamic> map) => LocalityModel(additionalFields: Mapper.i.$getOpt(map, 'additionalFields'), code: Mapper.i.$get(map, 'code'), name: Mapper.i.$get(map, 'name'), tenantId: Mapper.i.$getOpt(map, 'tenantId'), isDeleted: Mapper.i.$getOpt(map, 'isDeleted'), rowVersion: Mapper.i.$getOpt(map, 'rowVersion'), auditDetails: Mapper.i.$getOpt(map, 'auditDetails'));

  @override Function get encoder => (LocalityModel v) => encode(v);
  dynamic encode(LocalityModel v) => toMap(v);
  Map<String, dynamic> toMap(LocalityModel l) => {if (Mapper.i.$enc(l.additionalFields, 'additionalFields') != null) 'additionalFields': Mapper.i.$enc(l.additionalFields, 'additionalFields'), 'code': Mapper.i.$enc(l.code, 'code'), 'name': Mapper.i.$enc(l.name, 'name'), if (Mapper.i.$enc(l.tenantId, 'tenantId') != null) 'tenantId': Mapper.i.$enc(l.tenantId, 'tenantId'), if (Mapper.i.$enc(l.isDeleted, 'isDeleted') != null) 'isDeleted': Mapper.i.$enc(l.isDeleted, 'isDeleted'), if (Mapper.i.$enc(l.rowVersion, 'rowVersion') != null) 'rowVersion': Mapper.i.$enc(l.rowVersion, 'rowVersion'), if (Mapper.i.$enc(l.auditDetails, 'auditDetails') != null) 'auditDetails': Mapper.i.$enc(l.auditDetails, 'auditDetails')};

  @override String stringify(LocalityModel self) => 'LocalityModel(boundaryCode: ${Mapper.asString(self.boundaryCode)}, auditDetails: ${Mapper.asString(self.auditDetails)}, code: ${Mapper.asString(self.code)}, name: ${Mapper.asString(self.name)}, tenantId: ${Mapper.asString(self.tenantId)}, isDeleted: ${Mapper.asString(self.isDeleted)}, rowVersion: ${Mapper.asString(self.rowVersion)}, additionalFields: ${Mapper.asString(self.additionalFields)})';
  @override int hash(LocalityModel self) => Mapper.hash(self.boundaryCode) ^ Mapper.hash(self.auditDetails) ^ Mapper.hash(self.code) ^ Mapper.hash(self.name) ^ Mapper.hash(self.tenantId) ^ Mapper.hash(self.isDeleted) ^ Mapper.hash(self.rowVersion) ^ Mapper.hash(self.additionalFields);
  @override bool equals(LocalityModel self, LocalityModel other) => Mapper.isEqual(self.boundaryCode, other.boundaryCode) && Mapper.isEqual(self.auditDetails, other.auditDetails) && Mapper.isEqual(self.code, other.code) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.tenantId, other.tenantId) && Mapper.isEqual(self.isDeleted, other.isDeleted) && Mapper.isEqual(self.rowVersion, other.rowVersion) && Mapper.isEqual(self.additionalFields, other.additionalFields);

  @override Function get typeFactory => (f) => f<LocalityModel>();
}

extension LocalityModelMapperExtension  on LocalityModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  LocalityModelCopyWith<LocalityModel> get copyWith => LocalityModelCopyWith(this, $identity);
}

abstract class LocalityModelCopyWith<$R> {
  factory LocalityModelCopyWith(LocalityModel value, Then<LocalityModel, $R> then) = _LocalityModelCopyWithImpl<$R>;
  LocalityAdditionalFieldsCopyWith<$R>? get additionalFields;
  AuditDetailsCopyWith<$R>? get auditDetails;
  $R call({LocalityAdditionalFields? additionalFields, String? code, String? name, String? tenantId, bool? isDeleted, int? rowVersion, AuditDetails? auditDetails});
  $R apply(LocalityModel Function(LocalityModel) transform);
}

class _LocalityModelCopyWithImpl<$R> extends BaseCopyWith<LocalityModel, $R> implements LocalityModelCopyWith<$R> {
  _LocalityModelCopyWithImpl(LocalityModel value, Then<LocalityModel, $R> then) : super(value, then);

  @override LocalityAdditionalFieldsCopyWith<$R>? get additionalFields => $value.additionalFields != null ? LocalityAdditionalFieldsCopyWith($value.additionalFields!, (v) => call(additionalFields: v)) : null;
  @override AuditDetailsCopyWith<$R>? get auditDetails => $value.auditDetails != null ? AuditDetailsCopyWith($value.auditDetails!, (v) => call(auditDetails: v)) : null;
  @override $R call({Object? additionalFields = $none, String? code, String? name, Object? tenantId = $none, Object? isDeleted = $none, Object? rowVersion = $none, Object? auditDetails = $none}) => $then(LocalityModel(additionalFields: or(additionalFields, $value.additionalFields), code: code ?? $value.code, name: name ?? $value.name, tenantId: or(tenantId, $value.tenantId), isDeleted: or(isDeleted, $value.isDeleted), rowVersion: or(rowVersion, $value.rowVersion), auditDetails: or(auditDetails, $value.auditDetails)));
}

class LocalityAdditionalFieldsMapper extends BaseMapper<LocalityAdditionalFields> {
  LocalityAdditionalFieldsMapper._();

  @override Function get decoder => decode;
  LocalityAdditionalFields decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  LocalityAdditionalFields fromMap(Map<String, dynamic> map) => LocalityAdditionalFields(schema: Mapper.i.$getOpt(map, 'schema') ?? 'Locality', version: Mapper.i.$get(map, 'version'), fields: Mapper.i.$getOpt(map, 'fields') ?? const []);

  @override Function get encoder => (LocalityAdditionalFields v) => encode(v);
  dynamic encode(LocalityAdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(LocalityAdditionalFields l) => {'schema': Mapper.i.$enc(l.schema, 'schema'), 'version': Mapper.i.$enc(l.version, 'version'), 'fields': Mapper.i.$enc(l.fields, 'fields')};

  @override String stringify(LocalityAdditionalFields self) => 'LocalityAdditionalFields(schema: ${Mapper.asString(self.schema)}, version: ${Mapper.asString(self.version)}, fields: ${Mapper.asString(self.fields)})';
  @override int hash(LocalityAdditionalFields self) => Mapper.hash(self.schema) ^ Mapper.hash(self.version) ^ Mapper.hash(self.fields);
  @override bool equals(LocalityAdditionalFields self, LocalityAdditionalFields other) => Mapper.isEqual(self.schema, other.schema) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.fields, other.fields);

  @override Function get typeFactory => (f) => f<LocalityAdditionalFields>();
}

extension LocalityAdditionalFieldsMapperExtension  on LocalityAdditionalFields {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  LocalityAdditionalFieldsCopyWith<LocalityAdditionalFields> get copyWith => LocalityAdditionalFieldsCopyWith(this, $identity);
}

abstract class LocalityAdditionalFieldsCopyWith<$R> {
  factory LocalityAdditionalFieldsCopyWith(LocalityAdditionalFields value, Then<LocalityAdditionalFields, $R> then) = _LocalityAdditionalFieldsCopyWithImpl<$R>;
  ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields;
  $R call({String? schema, int? version, List<AdditionalField>? fields});
  $R apply(LocalityAdditionalFields Function(LocalityAdditionalFields) transform);
}

class _LocalityAdditionalFieldsCopyWithImpl<$R> extends BaseCopyWith<LocalityAdditionalFields, $R> implements LocalityAdditionalFieldsCopyWith<$R> {
  _LocalityAdditionalFieldsCopyWithImpl(LocalityAdditionalFields value, Then<LocalityAdditionalFields, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalField, AdditionalFieldCopyWith<$R>> get fields => ListCopyWith($value.fields, (v, t) => AdditionalFieldCopyWith(v, t), (v) => call(fields: v));
  @override $R call({String? schema, int? version, List<AdditionalField>? fields}) => $then(LocalityAdditionalFields(schema: schema ?? $value.schema, version: version ?? $value.version, fields: fields ?? $value.fields));
}

class OpLogEntryMapper extends BaseMapper<OpLogEntry> {
  OpLogEntryMapper._();

  @override Function get decoder => decode;
  OpLogEntry<T> decode<T extends EntityModel>(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap<T>(map));
  OpLogEntry<T> fromMap<T extends EntityModel>(Map<String, dynamic> map) => OpLogEntry(Mapper.i.$get(map, 'entity'), Mapper.i.$get(map, 'operation'), id: Mapper.i.$getOpt(map, 'id'), createdAt: Mapper.i.$get(map, 'createdAt'), createdBy: Mapper.i.$get(map, 'createdBy'), type: Mapper.i.$get(map, 'type'), syncedUp: Mapper.i.$getOpt(map, 'syncedUp') ?? false, syncedDown: Mapper.i.$getOpt(map, 'syncedDown') ?? false, syncedUpOn: Mapper.i.$getOpt(map, 'syncedUpOn'), syncedDownOn: Mapper.i.$getOpt(map, 'syncedDownOn'), serverGeneratedId: Mapper.i.$getOpt(map, 'serverGeneratedId'), clientReferenceId: Mapper.i.$getOpt(map, 'clientReferenceId'), additionalIds: Mapper.i.$getOpt(map, 'additionalIds') ?? const []);

  @override Function get encoder => (OpLogEntry v) => encode(v);
  dynamic encode(OpLogEntry v) => toMap(v);
  Map<String, dynamic> toMap(OpLogEntry o) => {'entity': Mapper.i.$enc(o.entity, 'entity'), 'operation': Mapper.i.$enc(o.operation, 'operation'), 'id': Mapper.i.$enc(o.id, 'id'), 'createdAt': Mapper.i.$enc(o.createdAt, 'createdAt'), 'createdBy': Mapper.i.$enc(o.createdBy, 'createdBy'), 'type': Mapper.i.$enc(o.type, 'type'), 'syncedUp': Mapper.i.$enc(o.syncedUp, 'syncedUp'), 'syncedDown': Mapper.i.$enc(o.syncedDown, 'syncedDown'), 'syncedUpOn': Mapper.i.$enc(o.syncedUpOn, 'syncedUpOn'), 'syncedDownOn': Mapper.i.$enc(o.syncedDownOn, 'syncedDownOn'), 'serverGeneratedId': Mapper.i.$enc(o.serverGeneratedId, 'serverGeneratedId'), 'clientReferenceId': Mapper.i.$enc(o.clientReferenceId, 'clientReferenceId'), 'additionalIds': Mapper.i.$enc(o.additionalIds, 'additionalIds')};

  @override String stringify(OpLogEntry self) => 'OpLogEntry(id: ${Mapper.asString(self.id)}, entity: ${Mapper.asString(self.entity)}, type: ${Mapper.asString(self.type)}, operation: ${Mapper.asString(self.operation)}, syncedUp: ${Mapper.asString(self.syncedUp)}, syncedDown: ${Mapper.asString(self.syncedDown)}, createdBy: ${Mapper.asString(self.createdBy)}, createdAt: ${Mapper.asString(self.createdAt)}, syncedUpOn: ${Mapper.asString(self.syncedUpOn)}, syncedDownOn: ${Mapper.asString(self.syncedDownOn)}, serverGeneratedId: ${Mapper.asString(self.serverGeneratedId)}, clientReferenceId: ${Mapper.asString(self.clientReferenceId)}, additionalIds: ${Mapper.asString(self.additionalIds)})';
  @override int hash(OpLogEntry self) => Mapper.hash(self.id) ^ Mapper.hash(self.entity) ^ Mapper.hash(self.type) ^ Mapper.hash(self.operation) ^ Mapper.hash(self.syncedUp) ^ Mapper.hash(self.syncedDown) ^ Mapper.hash(self.createdBy) ^ Mapper.hash(self.createdAt) ^ Mapper.hash(self.syncedUpOn) ^ Mapper.hash(self.syncedDownOn) ^ Mapper.hash(self.serverGeneratedId) ^ Mapper.hash(self.clientReferenceId) ^ Mapper.hash(self.additionalIds);
  @override bool equals(OpLogEntry self, OpLogEntry other) => Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.entity, other.entity) && Mapper.isEqual(self.type, other.type) && Mapper.isEqual(self.operation, other.operation) && Mapper.isEqual(self.syncedUp, other.syncedUp) && Mapper.isEqual(self.syncedDown, other.syncedDown) && Mapper.isEqual(self.createdBy, other.createdBy) && Mapper.isEqual(self.createdAt, other.createdAt) && Mapper.isEqual(self.syncedUpOn, other.syncedUpOn) && Mapper.isEqual(self.syncedDownOn, other.syncedDownOn) && Mapper.isEqual(self.serverGeneratedId, other.serverGeneratedId) && Mapper.isEqual(self.clientReferenceId, other.clientReferenceId) && Mapper.isEqual(self.additionalIds, other.additionalIds);

  @override Function get typeFactory => <T extends EntityModel>(f) => f<OpLogEntry<T>>();
}

extension OpLogEntryMapperExtension <T extends EntityModel> on OpLogEntry<T> {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  OpLogEntryCopyWith<OpLogEntry<T>, T> get copyWith => OpLogEntryCopyWith(this, $identity);
}

abstract class OpLogEntryCopyWith<$R, T extends EntityModel> {
  factory OpLogEntryCopyWith(OpLogEntry<T> value, Then<OpLogEntry<T>, $R> then) = _OpLogEntryCopyWithImpl<$R, T>;
  ListCopyWith<$R, AdditionalId, AdditionalIdCopyWith<$R>> get additionalIds;
  $R call({T? entity, DataOperation? operation, int? id, DateTime? createdAt, String? createdBy, DataModelType? type, bool? syncedUp, bool? syncedDown, DateTime? syncedUpOn, DateTime? syncedDownOn, String? serverGeneratedId, String? clientReferenceId, List<AdditionalId>? additionalIds});
  $R apply(OpLogEntry<T> Function(OpLogEntry<T>) transform);
}

class _OpLogEntryCopyWithImpl<$R, T extends EntityModel> extends BaseCopyWith<OpLogEntry<T>, $R> implements OpLogEntryCopyWith<$R, T> {
  _OpLogEntryCopyWithImpl(OpLogEntry<T> value, Then<OpLogEntry<T>, $R> then) : super(value, then);

  @override ListCopyWith<$R, AdditionalId, AdditionalIdCopyWith<$R>> get additionalIds => ListCopyWith($value.additionalIds, (v, t) => AdditionalIdCopyWith(v, t), (v) => call(additionalIds: v));
  @override $R call({T? entity, DataOperation? operation, Object? id = $none, DateTime? createdAt, String? createdBy, DataModelType? type, bool? syncedUp, bool? syncedDown, Object? syncedUpOn = $none, Object? syncedDownOn = $none, Object? serverGeneratedId = $none, Object? clientReferenceId = $none, List<AdditionalId>? additionalIds}) => $then(OpLogEntry(entity ?? $value.entity, operation ?? $value.operation, id: or(id, $value.id), createdAt: createdAt ?? $value.createdAt, createdBy: createdBy ?? $value.createdBy, type: type ?? $value.type, syncedUp: syncedUp ?? $value.syncedUp, syncedDown: syncedDown ?? $value.syncedDown, syncedUpOn: or(syncedUpOn, $value.syncedUpOn), syncedDownOn: or(syncedDownOn, $value.syncedDownOn), serverGeneratedId: or(serverGeneratedId, $value.serverGeneratedId), clientReferenceId: or(clientReferenceId, $value.clientReferenceId), additionalIds: additionalIds ?? $value.additionalIds));
}

class AdditionalIdMapper extends BaseMapper<AdditionalId> {
  AdditionalIdMapper._();

  @override Function get decoder => decode;
  AdditionalId decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AdditionalId fromMap(Map<String, dynamic> map) => AdditionalId(idType: Mapper.i.$get(map, 'idType'), id: Mapper.i.$get(map, 'id'));

  @override Function get encoder => (AdditionalId v) => encode(v);
  dynamic encode(AdditionalId v) => toMap(v);
  Map<String, dynamic> toMap(AdditionalId a) => {'idType': Mapper.i.$enc(a.idType, 'idType'), 'id': Mapper.i.$enc(a.id, 'id')};

  @override String stringify(AdditionalId self) => 'AdditionalId(idType: ${Mapper.asString(self.idType)}, id: ${Mapper.asString(self.id)})';
  @override int hash(AdditionalId self) => Mapper.hash(self.idType) ^ Mapper.hash(self.id);
  @override bool equals(AdditionalId self, AdditionalId other) => Mapper.isEqual(self.idType, other.idType) && Mapper.isEqual(self.id, other.id);

  @override Function get typeFactory => (f) => f<AdditionalId>();
}

extension AdditionalIdMapperExtension  on AdditionalId {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  AdditionalIdCopyWith<AdditionalId> get copyWith => AdditionalIdCopyWith(this, $identity);
}

abstract class AdditionalIdCopyWith<$R> {
  factory AdditionalIdCopyWith(AdditionalId value, Then<AdditionalId, $R> then) = _AdditionalIdCopyWithImpl<$R>;
  $R call({String? idType, String? id});
  $R apply(AdditionalId Function(AdditionalId) transform);
}

class _AdditionalIdCopyWithImpl<$R> extends BaseCopyWith<AdditionalId, $R> implements AdditionalIdCopyWith<$R> {
  _AdditionalIdCopyWithImpl(AdditionalId value, Then<AdditionalId, $R> then) : super(value, then);

  @override $R call({String? idType, String? id}) => $then(AdditionalId(idType: idType ?? $value.idType, id: id ?? $value.id));
}


// === GENERATED ENUM MAPPERS AND EXTENSIONS ===

class AddressTypeMapper extends EnumMapper<AddressType> {
  AddressTypeMapper._();

  @override  AddressType decode(dynamic value) {
    switch (value) {
      case "PERMANENT": return AddressType.permanent;
      case "CORRESPONDENCE": return AddressType.correspondence;
      case "OTHER": return AddressType.other;
      default: throw MapperException.unknownEnumValue(value);
    }
  }

  @override  dynamic encode(AddressType self) {
    switch (self) {
      case AddressType.permanent: return "PERMANENT";
      case AddressType.correspondence: return "CORRESPONDENCE";
      case AddressType.other: return "OTHER";
    }
  }
}

extension AddressTypeMapperExtension on AddressType {
  dynamic toValue() => Mapper.toValue(this);
}

class BloodGroupMapper extends EnumMapper<BloodGroup> {
  BloodGroupMapper._();

  @override  BloodGroup decode(dynamic value) {
    switch (value) {
      case "A+": return BloodGroup.aPositive;
      case "B+": return BloodGroup.bPositive;
      case "O+": return BloodGroup.oPositive;
      case "AB+": return BloodGroup.abPositive;
      case "A-": return BloodGroup.aNegative;
      case "B-": return BloodGroup.bNegative;
      case "AB-": return BloodGroup.abNegative;
      case "O-": return BloodGroup.oNegative;
      default: throw MapperException.unknownEnumValue(value);
    }
  }

  @override  dynamic encode(BloodGroup self) {
    switch (self) {
      case BloodGroup.aPositive: return "A+";
      case BloodGroup.bPositive: return "B+";
      case BloodGroup.oPositive: return "O+";
      case BloodGroup.abPositive: return "AB+";
      case BloodGroup.aNegative: return "A-";
      case BloodGroup.bNegative: return "B-";
      case BloodGroup.abNegative: return "AB-";
      case BloodGroup.oNegative: return "O-";
    }
  }
}

extension BloodGroupMapperExtension on BloodGroup {
  dynamic toValue() => Mapper.toValue(this);
}

class GenderMapper extends EnumMapper<Gender> {
  GenderMapper._();

  @override  Gender decode(dynamic value) {
    switch (value) {
      case "MALE": return Gender.male;
      case "FEMALE": return Gender.female;
      case "OTHER": return Gender.other;
      default: throw MapperException.unknownEnumValue(value);
    }
  }

  @override  dynamic encode(Gender self) {
    switch (self) {
      case Gender.male: return "MALE";
      case Gender.female: return "FEMALE";
      case Gender.other: return "OTHER";
    }
  }
}

extension GenderMapperExtension on Gender {
  dynamic toValue() => Mapper.toValue(this);
}

class StatusMapper extends EnumMapper<Status> {
  StatusMapper._();

  @override  Status decode(dynamic value) {
    switch (value) {
      case "DELIVERED": return Status.delivered;
      case "NOT_DELIVERED": return Status.notDelivered;
      default: throw MapperException.unknownEnumValue(value);
    }
  }

  @override  dynamic encode(Status self) {
    switch (self) {
      case Status.delivered: return "DELIVERED";
      case Status.notDelivered: return "NOT_DELIVERED";
    }
  }
}

extension StatusMapperExtension on Status {
  dynamic toValue() => Mapper.toValue(this);
}

class TransactionReasonMapper extends EnumMapper<TransactionReason> {
  TransactionReasonMapper._();

  @override  TransactionReason decode(dynamic value) {
    switch (value) {
      case "RECEIVED": return TransactionReason.received;
      case "RETURNED": return TransactionReason.returned;
      case "LOST_IN_STORAGE": return TransactionReason.lostInStorage;
      case "LOST_IN_TRANSIT": return TransactionReason.lostInTransit;
      case "DAMAGED_IN_STORAGE": return TransactionReason.damagedInStorage;
      case "DAMAGED_IN_TRANSIT": return TransactionReason.damagedInTransit;
      default: throw MapperException.unknownEnumValue(value);
    }
  }

  @override  dynamic encode(TransactionReason self) {
    switch (self) {
      case TransactionReason.received: return "RECEIVED";
      case TransactionReason.returned: return "RETURNED";
      case TransactionReason.lostInStorage: return "LOST_IN_STORAGE";
      case TransactionReason.lostInTransit: return "LOST_IN_TRANSIT";
      case TransactionReason.damagedInStorage: return "DAMAGED_IN_STORAGE";
      case TransactionReason.damagedInTransit: return "DAMAGED_IN_TRANSIT";
    }
  }
}

extension TransactionReasonMapperExtension on TransactionReason {
  dynamic toValue() => Mapper.toValue(this);
}

class TransactionTypeMapper extends EnumMapper<TransactionType> {
  TransactionTypeMapper._();

  @override  TransactionType decode(dynamic value) {
    switch (value) {
      case "RECEIVED": return TransactionType.received;
      case "DISPATCHED": return TransactionType.dispatched;
      default: throw MapperException.unknownEnumValue(value);
    }
  }

  @override  dynamic encode(TransactionType self) {
    switch (self) {
      case TransactionType.received: return "RECEIVED";
      case TransactionType.dispatched: return "DISPATCHED";
    }
  }
}

extension TransactionTypeMapperExtension on TransactionType {
  dynamic toValue() => Mapper.toValue(this);
}

class DataOperationMapper extends EnumMapper<DataOperation> {
  DataOperationMapper._();

  @override  DataOperation decode(dynamic value) {
    switch (value) {
      case 'create': return DataOperation.create;
      case 'search': return DataOperation.search;
      case 'update': return DataOperation.update;
      case 'delete': return DataOperation.delete;
      case 'singleCreate': return DataOperation.singleCreate;
      default: throw MapperException.unknownEnumValue(value);
    }
  }

  @override  dynamic encode(DataOperation self) {
    switch (self) {
      case DataOperation.create: return 'create';
      case DataOperation.search: return 'search';
      case DataOperation.update: return 'update';
      case DataOperation.delete: return 'delete';
      case DataOperation.singleCreate: return 'singleCreate';
    }
  }
}

extension DataOperationMapperExtension on DataOperation {
  dynamic toValue() => Mapper.toValue(this);
  @Deprecated('Use \'toValue\' instead')
  String toStringValue() => Mapper.toValue(this) as String;
}

class ApiOperationMapper extends EnumMapper<ApiOperation> {
  ApiOperationMapper._();

  @override  ApiOperation decode(dynamic value) {
    switch (value) {
      case 'login': return ApiOperation.login;
      case 'create': return ApiOperation.create;
      case 'search': return ApiOperation.search;
      case 'update': return ApiOperation.update;
      case 'delete': return ApiOperation.delete;
      case 'bulk_create': return ApiOperation.bulkCreate;
      case 'bulk_update': return ApiOperation.bulkUpdate;
      case 'bulk_delete': return ApiOperation.bulkDelete;
      case 'single_create': return ApiOperation.singleCreate;
      default: throw MapperException.unknownEnumValue(value);
    }
  }

  @override  dynamic encode(ApiOperation self) {
    switch (self) {
      case ApiOperation.login: return 'login';
      case ApiOperation.create: return 'create';
      case ApiOperation.search: return 'search';
      case ApiOperation.update: return 'update';
      case ApiOperation.delete: return 'delete';
      case ApiOperation.bulkCreate: return 'bulk_create';
      case ApiOperation.bulkUpdate: return 'bulk_update';
      case ApiOperation.bulkDelete: return 'bulk_delete';
      case ApiOperation.singleCreate: return 'single_create';
    }
  }
}

extension ApiOperationMapperExtension on ApiOperation {
  dynamic toValue() => Mapper.toValue(this);
  @Deprecated('Use \'toValue\' instead')
  String toStringValue() => Mapper.toValue(this) as String;
}


// === GENERATED UTILITY CODE ===

class Mapper {
  Mapper._();

  static MapperContainer i = MapperContainer(_mappers);

  static T fromValue<T>(dynamic value) => i.fromValue<T>(value);
  static T fromMap<T>(Map<String, dynamic> map) => i.fromMap<T>(map);
  static T fromIterable<T>(Iterable<dynamic> iterable) => i.fromIterable<T>(iterable);
  static T fromJson<T>(String json) => i.fromJson<T>(json);

  static dynamic toValue(dynamic value) => i.toValue(value);
  static Map<String, dynamic> toMap(dynamic object) => i.toMap(object);
  static Iterable<dynamic> toIterable(dynamic object) => i.toIterable(object);
  static String toJson(dynamic object) => i.toJson(object);

  static bool isEqual(dynamic value, Object? other) => i.isEqual(value, other);
  static int hash(dynamic value) => i.hash(value);
  static String asString(dynamic value) => i.asString(value);

  static void use<T>(BaseMapper<T> mapper) => i.use<T>(mapper);
  static BaseMapper<T>? unuse<T>() => i.unuse<T>();
  static void useAll(List<BaseMapper> mappers) => i.useAll(mappers);

  static BaseMapper<T>? get<T>([Type? type]) => i.get<T>(type);
  static List<BaseMapper> getAll() => i.getAll();
}

mixin Mappable implements MappableMixin {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);

  @override
  String toString() {
    return _guard(() => Mapper.asString(this), super.toString);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            _guard(() => Mapper.isEqual(this, other), () => super == other));
  }

  @override
  int get hashCode {
    return _guard(() => Mapper.hash(this), () => super.hashCode);
  }

  T _guard<T>(T Function() fn, T Function() fallback) {
    try {
      return fn();
    } on MapperException catch (e) {
      if (e.isUnsupportedOrUnallowed()) {
        return fallback();
      } else {
        rethrow;
      }
    }
  }
}
