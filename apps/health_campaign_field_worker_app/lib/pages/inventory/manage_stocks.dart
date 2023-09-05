import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/i18_key_constants.dart' as i18;
import '../../blocs/auth/auth.dart';
import '../../blocs/record_stock/record_stock.dart';
import '../../router/app_router.dart';
import '../../utils/extensions/extensions.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';
import '../../widgets/showcase/config/showcase_constants.dart';
import '../../widgets/showcase/showcase_button.dart';

class ManageStocksPage extends LocalizedStatefulWidget {
  const ManageStocksPage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<ManageStocksPage> createState() => _ManageStocksPageState();
}

class _ManageStocksPageState extends LocalizedState<ManageStocksPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isWarehouseManager = context.isWarehouseManager;

    return Scaffold(
      body: ScrollableContent(
        header: const Column(children: [
          BackNavigationHelpHeaderWidget(
            showcaseButton: ShowcaseButton(),
          ),
        ]),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      localizations.translate(i18.manageStock.label),
                      style: theme.textTheme.displayMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Column(children: [
                  selectStockShowcaseData.recordStockReceipt.buildWith(
                    child: DigitListView(
                      title: localizations
                          .translate(i18.manageStock.recordstockReceiptLabel),
                      description: localizations.translate(
                        isWarehouseManager
                            ? i18.manageStock.recordstockReceiptDescription
                            : i18.manageStock
                                .recordstockReceiptDescriptionLocalMonitor,
                      ),
                      prefixIcon: Icons.login,
                      sufixIcon: Icons.arrow_circle_right,
                      onPressed: () => context.router.push(
                        RecordStockWrapperRoute(
                          type: StockRecordEntryType.receipt,
                        ),
                      ),
                    ),
                  ),
                  selectStockShowcaseData.recordStockIssued.buildWith(
                    child: DigitListView(
                      title: localizations
                          .translate(i18.manageStock.recordstockIssuedLabel),
                      description: localizations.translate(
                        isWarehouseManager
                            ? i18.manageStock.recordstockIssuedtDescription
                            : i18.manageStock
                                .recordstockIssuedtDescriptionLocalMonitor,
                      ),
                      prefixIcon: Icons.logout,
                      sufixIcon: Icons.arrow_circle_right,
                      onPressed: () => context.router.push(
                        RecordStockWrapperRoute(
                          type: StockRecordEntryType.dispatch,
                        ),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
