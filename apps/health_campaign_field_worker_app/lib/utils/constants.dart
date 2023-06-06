import 'package:collection/collection.dart';
import 'package:digit_components/widgets/molecules/digit_walkthrough.dart';
import 'package:digit_components/widgets/molecules/digit_walkthrough_wrapper.dart';
import 'package:flutter/material.dart';

import '../blocs/app_initialization/app_initialization.dart';
import 'package:overlay_builder/overlay_builder.dart';

class Constants {
  static const String localizationApiPath = 'localization/messages/v1/_search';
  static const String projectSearchApiPath = '/project/v1/_search';

  static String getEndPoint({
    required AppInitialized state,
    required String service,
    required String action,
    required String entityName,
  }) {
    final actionResult = state.serviceRegistryList
        .firstWhereOrNull((element) => element.service == service)
        ?.actions
        .firstWhereOrNull((element) => element.entityName == entityName)
        ?.path;

    return actionResult ?? '';
  }

  static List<GlobalKey<OverlayWidgetState>>
      searchBeneficiaryOverlayWidgetStateList = [
    GlobalKey<OverlayWidgetState>(
      debugLabel: 'search_beneficiary_household_count',
    ),
    GlobalKey<OverlayWidgetState>(
      debugLabel: 'search_beneficiary_bed_nets_count',
    ),
    GlobalKey<OverlayWidgetState>(
      debugLabel: 'search_beneficiary_search_input',
    ),
    GlobalKey<OverlayWidgetState>(
      debugLabel: 'search_beneficiary_register_button',
    ),
  ];
  static List<GlobalKey<DigitWalkthroughState>>
      searchBeneficiaryWalkthroughWidgetStateList = [
    GlobalKey<DigitWalkthroughState>(
      debugLabel: 'SEARCH_BENEFICIARY_HOUSEHOLD_COUNT',
    ),
    GlobalKey<DigitWalkthroughState>(
      debugLabel: 'SEARCH_BENEFICIARY_BED_NETS_COUNT',
    ),
    GlobalKey<DigitWalkthroughState>(
      debugLabel: 'SEARCH_BENEFICIARY_SEARCH_INPUT',
    ),
    GlobalKey<DigitWalkthroughState>(
      debugLabel: 'SEARCH_BENEFICIARY_REGISTER_BUTTON',
    ),
  ];

  static GlobalKey<OverlayWidgetState> searchBeneficiaryOverlaykey =
      GlobalKey(debugLabel: 'search_beneficiary');

  static GlobalKey<DigitWalkthroughWrapperState>
      searchBeneficiaryOverlayWrapperkey =
      GlobalKey(debugLabel: 'searchBeneficiary');
}

/// By using this key, we can push pages without context
final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class RequestInfoData {
  static const String apiId = 'hcm';
  static const String ver = '.01';
  static String ts = DateTime.now().millisecondsSinceEpoch.toString();
  static const did = "1";
  static const key = "";
  static String? authToken;
}

class Modules {
  static const String localizationModule = "LOCALIZATION_MODULE";
}

class EntityPlurals {
  static String getPluralForEntityName(String entity) {
    switch (entity) {
      case 'Beneficiary':
        return 'Beneficiaries';
      case 'ProjectBeneficiary':
        return 'ProjectBeneficiaries';
      case 'Address':
        return 'Addresses';
      case 'Facility':
        return 'Facilities';
      case 'ProjectFacility':
        return 'ProjectFacilities';
      case 'Project':
        return 'Projects';
      case 'Stock':
        return 'Stock';
      case 'StockReconciliation':
        return 'StockReconciliation';
      default:
        return '${entity}s';
    }
  }
}
