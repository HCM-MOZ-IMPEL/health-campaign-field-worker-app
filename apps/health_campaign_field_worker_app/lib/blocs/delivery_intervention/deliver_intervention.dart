import 'dart:async';
import 'package:gs1_barcode_parser/gs1_barcode_parser.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../data/data_repository.dart';
import '../../models/data_model.dart';

part 'deliver_intervention.freezed.dart';

typedef BeneficiaryRegistrationEmitter = Emitter<DeliverInterventionState>;

class DeliverInterventionBloc
    extends Bloc<DeliverInterventionEvent, DeliverInterventionState> {
  final DataRepository<TaskModel, TaskSearchModel> taskRepository;

  DeliverInterventionBloc(
    super.initialState, {
    required this.taskRepository,
  }) {
    on(_handleSubmit);
    on(_handleSearch);
    on(_handleScanner);
  }

  FutureOr<void> _handleSubmit(
    DeliverInterventionSubmitEvent event,
    BeneficiaryRegistrationEmitter emit,
  ) async {
    emit(state.copyWith(loading: true));
    try {
      if (event.isEditing) {
        await taskRepository.update(event.task);
      } else {
        final code =
            event.task.address?.locality?.code ?? event.boundaryModel.code;
        final name =
            event.task.address?.addressLine1 ?? event.boundaryModel.name;

        final localityModel = code == null || name == null
            ? null
            : LocalityModel(code: code, name: name);

        await taskRepository.create(event.task.copyWith(
          address: event.task.address?.copyWith(
            locality: localityModel,
          ),
        ));
      }
    } catch (error) {
      rethrow;
    } finally {
      emit(state.copyWith(loading: false));
    }
  }

  FutureOr<void> _handleSearch(
    DeliverInterventionSearchEvent event,
    BeneficiaryRegistrationEmitter emit,
  ) async {
    emit(state.copyWith(loading: true));
    try {
      final List<TaskModel> tasks =
          await taskRepository.search(event.taskSearch);
      if (tasks.isNotEmpty) emit(state.copyWith(task: tasks.first));
    } catch (error) {
      rethrow;
    } finally {
      emit(state.copyWith(loading: false));
    }
  }

  FutureOr<void> _handleScanner(
    DeliverInterventionScannerEvent event,
    BeneficiaryRegistrationEmitter emit,
  ) async {
    emit(state.copyWith(barcodes: event.barcode));
    try {} catch (error) {
      rethrow;
    } finally {
      emit(state.copyWith(loading: false));
    }
  }
}

@freezed
class DeliverInterventionEvent with _$DeliverInterventionEvent {
  const factory DeliverInterventionEvent.handleSubmit(
    TaskModel task,
    bool isEditing,
    BoundaryModel boundaryModel,
  ) = DeliverInterventionSubmitEvent;

  const factory DeliverInterventionEvent.handleSearch(
    TaskSearchModel taskSearch,
  ) = DeliverInterventionSearchEvent;

  const factory DeliverInterventionEvent.handleScanner(
    List<GS1Barcode> barcode,
  ) = DeliverInterventionScannerEvent;
}

@freezed
class DeliverInterventionState with _$DeliverInterventionState {
  const factory DeliverInterventionState({
    @Default(false) bool loading,
    @Default(false) bool isEditing,
    List<GS1Barcode>? barcodes,
    TaskModel? task,
  }) = _DeliverInterventionState;
}
