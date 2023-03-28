// GENERATED using mason_cli
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/data_repository.dart';
import '../../models/data_model.dart';

part 'boundary.freezed.dart';

typedef BoundaryEmitter = Emitter<BoundaryState>;

class BoundaryBloc extends Bloc<BoundaryEvent, BoundaryState> {
  final DataRepository<BoundaryModel, BoundarySearchModel> boundaryRepository;

  BoundaryBloc(
    super.initialState, {
    required this.boundaryRepository,
  }) {
    on(_handleSearch);
    on(_handleSelect);
  }

  FutureOr<void> _handleSearch(
    BoundarySearchEvent event,
    BoundaryEmitter emit,
  ) async {
    List<BoundaryModel> boundaryList = await boundaryRepository.search(
      BoundarySearchModel(code: event.code),
    );

    final codesList =
        boundaryList.where((e) => e.materializedPath != null).reduce(
      (a, b) {
        return a.materializedPath!.length > b.materializedPath!.length ? a : b;
      },
    ).materializedPath;

    final List<String> mapperArray = [];

    codesList?.split('.').forEach((e) {
      if (e.isNotEmpty) {
        boundaryList.forEach((element) {
          if (element.code == e) {
            mapperArray.add(element.label.toString());
          }
        });
      }
    });

    emit(BoundaryFetchedState(
      boundaryList: boundaryList,
      boundaryMapperList: mapperArray.toSet().toList(),
    ));
    // handle logic for search here
  }

  FutureOr<void> _handleSelect(
    BoundarySelectEvent event,
    BoundaryEmitter emit,
  ) async {
    state.maybeMap(
      orElse: () {},
      fetched: (value) {
        emit(value.copyWith(
          selectedBoundary: event.selectedBoundary,
        ));
      },
      empty: (value) {},
    );

    // handle logic for select here
  }
}

@freezed
class BoundaryEvent with _$BoundaryEvent {
  const factory BoundaryEvent.search({required String code}) =
      BoundarySearchEvent;

  const factory BoundaryEvent.select({
    required String selectedBoundary,
  }) = BoundarySelectEvent;
}

@freezed
class BoundaryState with _$BoundaryState {
  const factory BoundaryState.loading() = BoundaryLoadingState;

  const factory BoundaryState.fetched({
    @Default([]) List<BoundaryModel> boundaryList,
    @Default([]) List<String> boundaryMapperList,
    String? selectedBoundary,
  }) = BoundaryFetchedState;

  const factory BoundaryState.empty() = BoundaryEmptyState;
}
