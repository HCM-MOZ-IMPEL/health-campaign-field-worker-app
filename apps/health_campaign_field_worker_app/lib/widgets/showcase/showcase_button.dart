import 'package:digit_showcase/showcase_widget.dart';
import 'package:flutter/material.dart';

import '../../router/app_router.dart';
import '../../utils/i18_key_constants.dart' as i18;
import '../localized.dart';
import 'config/showcase_constants.dart';

class ShowcaseButton extends LocalizedStatefulWidget {
  final Iterable<GlobalKey>? showcaseFor;

  const ShowcaseButton({super.key, this.showcaseFor});

  @override
  LocalizedState<ShowcaseButton> createState() => _ShowcaseButtonState();
}

class _ShowcaseButtonState extends LocalizedState<ShowcaseButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (widget.showcaseFor?.isNotEmpty == true) {
          ShowcaseWidget.of(context).startShowCase(
            widget.showcaseFor!.toList(),
          );

          return;
        }

        final current = context.router.current.name;
        final paths = _showcasePathsForRoute(current);

        if (paths == null) return;
        if (paths.isEmpty) return;

        ShowcaseWidget.of(context).startShowCase(paths.toList());
      },
      child: Row(
        children: [
          Text(localizations.translate(i18.common.coreCommonHelp)),
          const Icon(Icons.help_outline),
        ],
      ),
    );
  }

  Iterable<GlobalKey>? _showcasePathsForRoute(String routeName) {
    return switch (routeName) {
      SearchBeneficiaryRoute.name =>
        searchBeneficiariesShowcaseData.showcaseData.map((e) => e.showcaseKey),
      HouseholdLocationRoute.name =>
        householdLocationShowcaseData.showcaseData.map((e) => e.showcaseKey),
      HouseHoldDetailsRoute.name =>
        householdDetailsShowcaseData.showcaseData.map((e) => e.showcaseKey),
      IndividualDetailsRoute.name =>
        individualDetailsShowcaseData.showcaseData.map((e) => e.showcaseKey),
      HouseholdOverviewRoute.name =>
        householdOverviewShowcaseData.showcaseData.map((e) => e.showcaseKey),
      DeliverInterventionRoute.name =>
        deliverInterventionShowcaseData.showcaseData.map((e) => e.showcaseKey),
      ManageStocksRoute.name =>
        selectStockShowcaseData.showcaseData.map((e) => e.showcaseKey),
      WarehouseDetailsRoute.name =>
        warehouseDetailsShowcaseData.showcaseData.map((e) => e.showcaseKey),
      StockReconciliationRoute.name =>
        stockReconciliationShowcaseData.showcaseData.map((e) => e.showcaseKey),
      ChecklistRoute.name =>
        selectChecklistShowcaseData.showcaseData.map((e) => e.showcaseKey),
      ChecklistBoundaryViewRoute.name =>
        checklistDataShowcaseData.showcaseData.map((e) => e.showcaseKey),
      ChecklistPreviewRoute.name =>
        checklistListShowcaseData.showcaseData.map((e) => e.showcaseKey),
      _ => null,
    };
  }
}
