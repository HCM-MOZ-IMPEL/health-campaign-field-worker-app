// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MdmsRequestModel _$$_MdmsRequestModelFromJson(Map<String, dynamic> json) =>
    _$_MdmsRequestModel(
      mdmsCriteria: MdmsCriteriaModel.fromJson(
          json['MdmsCriteria'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MdmsRequestModelToJson(_$_MdmsRequestModel instance) =>
    <String, dynamic>{
      'MdmsCriteria': instance.mdmsCriteria,
    };

_$_MdmsCriteriaModel _$$_MdmsCriteriaModelFromJson(Map<String, dynamic> json) =>
    _$_MdmsCriteriaModel(
      tenantId: json['tenantId'] as String,
      moduleDetails: (json['moduleDetails'] as List<dynamic>)
          .map((e) => MdmsModuleDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MdmsCriteriaModelToJson(
        _$_MdmsCriteriaModel instance) =>
    <String, dynamic>{
      'tenantId': instance.tenantId,
      'moduleDetails': instance.moduleDetails,
    };

_$_MdmsModuleDetailModel _$$_MdmsModuleDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_MdmsModuleDetailModel(
      moduleName: json['moduleName'] as String,
      masterDetails: (json['masterDetails'] as List<dynamic>)
          .map((e) => MdmsMasterDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MdmsModuleDetailModelToJson(
        _$_MdmsModuleDetailModel instance) =>
    <String, dynamic>{
      'moduleName': instance.moduleName,
      'masterDetails': instance.masterDetails,
    };

_$_MdmsMasterDetailModel _$$_MdmsMasterDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_MdmsMasterDetailModel(
      json['name'] as String,
    );

Map<String, dynamic> _$$_MdmsMasterDetailModelToJson(
        _$_MdmsMasterDetailModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_AppConfigPrimaryWrapperModel _$$_AppConfigPrimaryWrapperModelFromJson(
        Map<String, dynamic> json) =>
    _$_AppConfigPrimaryWrapperModel(
      appConfig: json['HCM-FIELD-APP-CONFIG'] == null
          ? null
          : AppConfigSecondaryWrapperModel.fromJson(
              json['HCM-FIELD-APP-CONFIG'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppConfigPrimaryWrapperModelToJson(
        _$_AppConfigPrimaryWrapperModel instance) =>
    <String, dynamic>{
      'HCM-FIELD-APP-CONFIG': instance.appConfig,
    };

_$_AppConfigSecondaryWrapperModel _$$_AppConfigSecondaryWrapperModelFromJson(
        Map<String, dynamic> json) =>
    _$_AppConfigSecondaryWrapperModel(
      appConfiglist: (json['appConfig'] as List<dynamic>?)
          ?.map((e) => AppConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AppConfigSecondaryWrapperModelToJson(
        _$_AppConfigSecondaryWrapperModel instance) =>
    <String, dynamic>{
      'appConfig': instance.appConfiglist,
    };

_$_AppConfig _$$_AppConfigFromJson(Map<String, dynamic> json) => _$_AppConfig(
      networkDetection: json['NETWORK_DETECTION'] as String,
      persistenceMode: json['PERSISTENCE_MODE'] as String,
      syncMethod: json['SYNC_METHOD'] as String,
      syncTrigger: json['SYNC_TRIGGER'] as String,
      languages: (json['LANGUAGES'] as List<dynamic>)
          .map((e) => Languages.fromJson(e as Map<String, dynamic>))
          .toList(),
      tenantId: json['TENANT_ID'] as String?,
      genderOptions: (json['GENDER_OPTIONS_POPULATOR'] as List<dynamic>)
          .map((e) => GenderOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
      checklistTypes: (json['CHECKLIST_TYPES'] as List<dynamic>)
          .map((e) => CheckListTypes.fromJson(e as Map<String, dynamic>))
          .toList(),
      idTypeOptions: (json['ID_TYPE_OPTIONS_POPULATOR'] as List<dynamic>)
          .map((e) => IdTypeOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryCommentOptions: (json['DELIVERY_COMMENT_OPTIONS_POPULATOR']
              as List<dynamic>)
          .map(
              (e) => DeliveryCommentOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
      backendInterface: BackendInterface.fromJson(
          json['BACKEND_INTERFACE'] as Map<String, dynamic>),
      transportTypes: (json['TRANSPORT_TYPES'] as List<dynamic>)
          .map((e) => TransportTypes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AppConfigToJson(_$_AppConfig instance) =>
    <String, dynamic>{
      'NETWORK_DETECTION': instance.networkDetection,
      'PERSISTENCE_MODE': instance.persistenceMode,
      'SYNC_METHOD': instance.syncMethod,
      'SYNC_TRIGGER': instance.syncTrigger,
      'LANGUAGES': instance.languages,
      'TENANT_ID': instance.tenantId,
      'GENDER_OPTIONS_POPULATOR': instance.genderOptions,
      'CHECKLIST_TYPES': instance.checklistTypes,
      'ID_TYPE_OPTIONS_POPULATOR': instance.idTypeOptions,
      'DELIVERY_COMMENT_OPTIONS_POPULATOR': instance.deliveryCommentOptions,
      'BACKEND_INTERFACE': instance.backendInterface,
      'TRANSPORT_TYPES': instance.transportTypes,
    };

_$_IdTypeOptions _$$_IdTypeOptionsFromJson(Map<String, dynamic> json) =>
    _$_IdTypeOptions(
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$_IdTypeOptionsToJson(_$_IdTypeOptions instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

_$_DeliveryCommentOptions _$$_DeliveryCommentOptionsFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryCommentOptions(
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$_DeliveryCommentOptionsToJson(
        _$_DeliveryCommentOptions instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

_$_GenderOptions _$$_GenderOptionsFromJson(Map<String, dynamic> json) =>
    _$_GenderOptions(
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$_GenderOptionsToJson(_$_GenderOptions instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

_$_BackendInterface _$$_BackendInterfaceFromJson(Map<String, dynamic> json) =>
    _$_BackendInterface(
      interface: (json['interfaces'] as List<dynamic>)
          .map((e) => Interfaces.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BackendInterfaceToJson(_$_BackendInterface instance) =>
    <String, dynamic>{
      'interfaces': instance.interface,
    };

_$_InterfacesWrapper _$$_InterfacesWrapperFromJson(Map<String, dynamic> json) =>
    _$_InterfacesWrapper(
      interface: (json['interface'] as List<dynamic>)
          .map((e) => Interfaces.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InterfacesWrapperToJson(
        _$_InterfacesWrapper instance) =>
    <String, dynamic>{
      'interface': instance.interface,
    };

_$_Interfaces _$$_InterfacesFromJson(Map<String, dynamic> json) =>
    _$_Interfaces(
      type: json['type'] as String,
      name: json['name'] as String,
      config: Config.fromJson(json['config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InterfacesToJson(_$_Interfaces instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'config': instance.config,
    };

_$_Config _$$_ConfigFromJson(Map<String, dynamic> json) => _$_Config(
      localStoreTTL: json['localStoreTTL'] as int,
    );

Map<String, dynamic> _$$_ConfigToJson(_$_Config instance) => <String, dynamic>{
      'localStoreTTL': instance.localStoreTTL,
    };

_$_Languages _$$_LanguagesFromJson(Map<String, dynamic> json) => _$_Languages(
      label: json['label'] as String,
      value: json['value'] as String,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LanguagesToJson(_$_Languages instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
      'isSelected': instance.isSelected,
    };

_$_CheckListTypes _$$_CheckListTypesFromJson(Map<String, dynamic> json) =>
    _$_CheckListTypes(
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$_CheckListTypesToJson(_$_CheckListTypes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

_$_TransportTypes _$$_TransportTypesFromJson(Map<String, dynamic> json) =>
    _$_TransportTypes(
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$_TransportTypesToJson(_$_TransportTypes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };
