import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../models/data_model.dart';
import '../../utils/app_exception.dart';
import '../../utils/environment_config.dart';
import '../../utils/typedefs.dart';

part 'inventory_report.freezed.dart';

typedef InventoryReportEmitter = Emitter<InventoryReportState>;

class InventoryReportBloc
    extends Bloc<InventoryReportEvent, InventoryReportState> {
  final StockDataRepository stockRepository;
  final StockReconciliationDataRepository stockReconciliationRepository;

  InventoryReportBloc({
    required this.stockRepository,
    required this.stockReconciliationRepository,
  }) : super(const InventoryReportEmptyState()) {
    on(_handleLoadDataEvent);
    on(_handleLoadStockReconciliationDataEvent);
  }

  Future<void> _handleLoadDataEvent(
    InventoryReportLoadStockDataEvent event,
    InventoryReportEmitter emit,
  ) async {
    final reportType = event.reportType;
    final facilityId = event.facilityId;
    final productVariantId = event.productVariantId;

    if (reportType == InventoryReportType.reconciliation) {
      throw AppException(
        'Invalid report type: ${event.reportType}',
      );
    }
    emit(const InventoryReportLoadingState());

    List<TransactionReason>? transactionReason;
    List<TransactionType>? transactionType;

    if (reportType == InventoryReportType.receipt) {
      transactionType = [TransactionType.received];
      transactionReason = [TransactionReason.received];
    } else if (reportType == InventoryReportType.dispatch) {
      transactionType = [TransactionType.dispatched];
      transactionReason = [];
    } else if (reportType == InventoryReportType.returned) {
      transactionType = [TransactionType.received];
      transactionReason = [TransactionReason.returned];
    } else if (reportType == InventoryReportType.damage) {
      transactionType = [TransactionType.dispatched];
      transactionReason = [
        TransactionReason.damagedInStorage,
        TransactionReason.damagedInTransit,
      ];
    } else if (reportType == InventoryReportType.loss) {
      transactionType = [TransactionType.dispatched];
      transactionReason = [
        TransactionReason.lostInStorage,
        TransactionReason.lostInTransit,
      ];
    }

    final data = (await stockRepository.search(
      StockSearchModel(
        transactionType: transactionType,
        transactionReason: transactionReason,
        tenantId: envConfig.variables.tenantId,
        facilityId: facilityId,
        productVariantId: productVariantId,
      ),
    ))
        .where((element) => element.auditDetails != null);

    final groupedData = data.groupListsBy(
      (element) => DateFormat('dd MMM yyyy').format(
        DateTime.fromMillisecondsSinceEpoch(
          element.auditDetails!.createdTime,
        ),
      ),
    );

    emit(InventoryReportStockState(stockData: groupedData));
  }

  Future<void> _handleLoadStockReconciliationDataEvent(
    InventoryReportLoadStockReconciliationDataEvent event,
    InventoryReportEmitter emit,
  ) async {
    emit(const InventoryReportLoadingState());
    final data = await stockReconciliationRepository.search(
      StockReconciliationSearchModel(
        tenantId: envConfig.variables.tenantId,
        facilityId: event.facilityId,
        productVariantId: event.productVariantId,
      ),
    );

    final groupedData = data.groupListsBy(
      (element) => DateFormat('dd MMM yyyy').format(
        element.dateOfReconciliationTime,
      ),
    );

    emit(InventoryReportStockReconciliationState(
      data: groupedData,
    ));
  }
}

@freezed
class InventoryReportEvent with _$InventoryReportEvent {
  const factory InventoryReportEvent.loadStockData({
    required InventoryReportType reportType,
    required String facilityId,
    required String productVariantId,
  }) = InventoryReportLoadStockDataEvent;

  const factory InventoryReportEvent.loadStockReconciliationData({
    required String facilityId,
    required String productVariantId,
  }) = InventoryReportLoadStockReconciliationDataEvent;
}

@freezed
class InventoryReportState with _$InventoryReportState {
  const factory InventoryReportState.loading() = InventoryReportLoadingState;
  const factory InventoryReportState.empty() = InventoryReportEmptyState;

  const factory InventoryReportState.stock({
    @Default({}) Map<String, List<StockModel>> stockData,
  }) = InventoryReportStockState;

  const factory InventoryReportState.stockReconciliation({
    @Default({}) Map<String, List<StockReconciliationModel>> data,
  }) = InventoryReportStockReconciliationState;
}

enum InventoryReportType {
  receipt,
  dispatch,
  returned,
  damage,
  loss,
  reconciliation,
}
