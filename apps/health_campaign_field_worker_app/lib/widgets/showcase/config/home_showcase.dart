part of 'showcase_constants.dart';

class _HomePageShowcaseData {
  static final _HomePageShowcaseData _instance = _HomePageShowcaseData._();

  _HomePageShowcaseData._();

  factory _HomePageShowcaseData() => _instance;

  List<ShowcaseItemBuilder> get showcaseData => [
        distributorProgressBar,
        distributorBeneficiaries,
        distributorFileComplaint,
        distributorSyncData,
        warehouseManagerManageStock,
        wareHouseManagerStockReconciliation,
        warehouseManagerFileComplaint,
        warehouseManagerSyncData,
        supervisorProgressBar,
        supervisorMyChecklist,
        supervisorComplaints,
        supervisorSyncData,
      ];

  final distributorProgressBar = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.distributorProgressBar,
  );

  final distributorBeneficiaries = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.distributorBeneficiaries,
  );

  final distributorFileComplaint = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.distributorFileComplaint,
  );

  final distributorSyncData = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.distributorSyncData,
  );

  final warehouseManagerManageStock = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.warehouseManagerManageStock,
  );

  final wareHouseManagerStockReconciliation = ShowcaseItemBuilder(
    messageLocalizationKey:
        i18.homeShowcase.wareHouseManagerStockReconciliation,
  );

  final warehouseManagerFileComplaint = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.warehouseManagerFileComplaint,
  );

  final warehouseManagerSyncData = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.warehouseManagerSyncData,
  );

  final supervisorProgressBar = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.supervisorProgressBar,
  );

  final supervisorMyChecklist = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.supervisorMyChecklist,
  );

  final supervisorComplaints = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.supervisorComplaints,
  );

  final supervisorSyncData = ShowcaseItemBuilder(
    messageLocalizationKey: i18.homeShowcase.supervisorSyncData,
  );
}
