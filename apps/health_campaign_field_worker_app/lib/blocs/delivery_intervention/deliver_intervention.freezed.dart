// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deliver_intervention.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliverInterventionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)
        handleSubmit,
    required TResult Function(TaskSearchModel taskSearch) handleSearch,
    required TResult Function(List<GS1Barcode> barcode) handleScanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)?
        handleSubmit,
    TResult? Function(TaskSearchModel taskSearch)? handleSearch,
    TResult? Function(List<GS1Barcode> barcode)? handleScanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)?
        handleSubmit,
    TResult Function(TaskSearchModel taskSearch)? handleSearch,
    TResult Function(List<GS1Barcode> barcode)? handleScanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeliverInterventionSubmitEvent value)
        handleSubmit,
    required TResult Function(DeliverInterventionSearchEvent value)
        handleSearch,
    required TResult Function(DeliverInterventionScannerEvent value)
        handleScanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliverInterventionSubmitEvent value)? handleSubmit,
    TResult? Function(DeliverInterventionSearchEvent value)? handleSearch,
    TResult? Function(DeliverInterventionScannerEvent value)? handleScanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliverInterventionSubmitEvent value)? handleSubmit,
    TResult Function(DeliverInterventionSearchEvent value)? handleSearch,
    TResult Function(DeliverInterventionScannerEvent value)? handleScanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverInterventionEventCopyWith<$Res> {
  factory $DeliverInterventionEventCopyWith(DeliverInterventionEvent value,
          $Res Function(DeliverInterventionEvent) then) =
      _$DeliverInterventionEventCopyWithImpl<$Res, DeliverInterventionEvent>;
}

/// @nodoc
class _$DeliverInterventionEventCopyWithImpl<$Res,
        $Val extends DeliverInterventionEvent>
    implements $DeliverInterventionEventCopyWith<$Res> {
  _$DeliverInterventionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeliverInterventionSubmitEventCopyWith<$Res> {
  factory _$$DeliverInterventionSubmitEventCopyWith(
          _$DeliverInterventionSubmitEvent value,
          $Res Function(_$DeliverInterventionSubmitEvent) then) =
      __$$DeliverInterventionSubmitEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task, bool isEditing, BoundaryModel boundaryModel});
}

/// @nodoc
class __$$DeliverInterventionSubmitEventCopyWithImpl<$Res>
    extends _$DeliverInterventionEventCopyWithImpl<$Res,
        _$DeliverInterventionSubmitEvent>
    implements _$$DeliverInterventionSubmitEventCopyWith<$Res> {
  __$$DeliverInterventionSubmitEventCopyWithImpl(
      _$DeliverInterventionSubmitEvent _value,
      $Res Function(_$DeliverInterventionSubmitEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? isEditing = null,
    Object? boundaryModel = null,
  }) {
    return _then(_$DeliverInterventionSubmitEvent(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      null == boundaryModel
          ? _value.boundaryModel
          : boundaryModel // ignore: cast_nullable_to_non_nullable
              as BoundaryModel,
    ));
  }
}

/// @nodoc

class _$DeliverInterventionSubmitEvent
    implements DeliverInterventionSubmitEvent {
  const _$DeliverInterventionSubmitEvent(
      this.task, this.isEditing, this.boundaryModel);

  @override
  final TaskModel task;
  @override
  final bool isEditing;
  @override
  final BoundaryModel boundaryModel;

  @override
  String toString() {
    return 'DeliverInterventionEvent.handleSubmit(task: $task, isEditing: $isEditing, boundaryModel: $boundaryModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliverInterventionSubmitEvent &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.boundaryModel, boundaryModel) ||
                other.boundaryModel == boundaryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, isEditing, boundaryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliverInterventionSubmitEventCopyWith<_$DeliverInterventionSubmitEvent>
      get copyWith => __$$DeliverInterventionSubmitEventCopyWithImpl<
          _$DeliverInterventionSubmitEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)
        handleSubmit,
    required TResult Function(TaskSearchModel taskSearch) handleSearch,
    required TResult Function(List<GS1Barcode> barcode) handleScanner,
  }) {
    return handleSubmit(task, isEditing, boundaryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)?
        handleSubmit,
    TResult? Function(TaskSearchModel taskSearch)? handleSearch,
    TResult? Function(List<GS1Barcode> barcode)? handleScanner,
  }) {
    return handleSubmit?.call(task, isEditing, boundaryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)?
        handleSubmit,
    TResult Function(TaskSearchModel taskSearch)? handleSearch,
    TResult Function(List<GS1Barcode> barcode)? handleScanner,
    required TResult orElse(),
  }) {
    if (handleSubmit != null) {
      return handleSubmit(task, isEditing, boundaryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeliverInterventionSubmitEvent value)
        handleSubmit,
    required TResult Function(DeliverInterventionSearchEvent value)
        handleSearch,
    required TResult Function(DeliverInterventionScannerEvent value)
        handleScanner,
  }) {
    return handleSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliverInterventionSubmitEvent value)? handleSubmit,
    TResult? Function(DeliverInterventionSearchEvent value)? handleSearch,
    TResult? Function(DeliverInterventionScannerEvent value)? handleScanner,
  }) {
    return handleSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliverInterventionSubmitEvent value)? handleSubmit,
    TResult Function(DeliverInterventionSearchEvent value)? handleSearch,
    TResult Function(DeliverInterventionScannerEvent value)? handleScanner,
    required TResult orElse(),
  }) {
    if (handleSubmit != null) {
      return handleSubmit(this);
    }
    return orElse();
  }
}

abstract class DeliverInterventionSubmitEvent
    implements DeliverInterventionEvent {
  const factory DeliverInterventionSubmitEvent(
      final TaskModel task,
      final bool isEditing,
      final BoundaryModel boundaryModel) = _$DeliverInterventionSubmitEvent;

  TaskModel get task;
  bool get isEditing;
  BoundaryModel get boundaryModel;
  @JsonKey(ignore: true)
  _$$DeliverInterventionSubmitEventCopyWith<_$DeliverInterventionSubmitEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeliverInterventionSearchEventCopyWith<$Res> {
  factory _$$DeliverInterventionSearchEventCopyWith(
          _$DeliverInterventionSearchEvent value,
          $Res Function(_$DeliverInterventionSearchEvent) then) =
      __$$DeliverInterventionSearchEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskSearchModel taskSearch});
}

/// @nodoc
class __$$DeliverInterventionSearchEventCopyWithImpl<$Res>
    extends _$DeliverInterventionEventCopyWithImpl<$Res,
        _$DeliverInterventionSearchEvent>
    implements _$$DeliverInterventionSearchEventCopyWith<$Res> {
  __$$DeliverInterventionSearchEventCopyWithImpl(
      _$DeliverInterventionSearchEvent _value,
      $Res Function(_$DeliverInterventionSearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskSearch = null,
  }) {
    return _then(_$DeliverInterventionSearchEvent(
      null == taskSearch
          ? _value.taskSearch
          : taskSearch // ignore: cast_nullable_to_non_nullable
              as TaskSearchModel,
    ));
  }
}

/// @nodoc

class _$DeliverInterventionSearchEvent
    implements DeliverInterventionSearchEvent {
  const _$DeliverInterventionSearchEvent(this.taskSearch);

  @override
  final TaskSearchModel taskSearch;

  @override
  String toString() {
    return 'DeliverInterventionEvent.handleSearch(taskSearch: $taskSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliverInterventionSearchEvent &&
            (identical(other.taskSearch, taskSearch) ||
                other.taskSearch == taskSearch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskSearch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliverInterventionSearchEventCopyWith<_$DeliverInterventionSearchEvent>
      get copyWith => __$$DeliverInterventionSearchEventCopyWithImpl<
          _$DeliverInterventionSearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)
        handleSubmit,
    required TResult Function(TaskSearchModel taskSearch) handleSearch,
    required TResult Function(List<GS1Barcode> barcode) handleScanner,
  }) {
    return handleSearch(taskSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)?
        handleSubmit,
    TResult? Function(TaskSearchModel taskSearch)? handleSearch,
    TResult? Function(List<GS1Barcode> barcode)? handleScanner,
  }) {
    return handleSearch?.call(taskSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)?
        handleSubmit,
    TResult Function(TaskSearchModel taskSearch)? handleSearch,
    TResult Function(List<GS1Barcode> barcode)? handleScanner,
    required TResult orElse(),
  }) {
    if (handleSearch != null) {
      return handleSearch(taskSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeliverInterventionSubmitEvent value)
        handleSubmit,
    required TResult Function(DeliverInterventionSearchEvent value)
        handleSearch,
    required TResult Function(DeliverInterventionScannerEvent value)
        handleScanner,
  }) {
    return handleSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliverInterventionSubmitEvent value)? handleSubmit,
    TResult? Function(DeliverInterventionSearchEvent value)? handleSearch,
    TResult? Function(DeliverInterventionScannerEvent value)? handleScanner,
  }) {
    return handleSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliverInterventionSubmitEvent value)? handleSubmit,
    TResult Function(DeliverInterventionSearchEvent value)? handleSearch,
    TResult Function(DeliverInterventionScannerEvent value)? handleScanner,
    required TResult orElse(),
  }) {
    if (handleSearch != null) {
      return handleSearch(this);
    }
    return orElse();
  }
}

abstract class DeliverInterventionSearchEvent
    implements DeliverInterventionEvent {
  const factory DeliverInterventionSearchEvent(
      final TaskSearchModel taskSearch) = _$DeliverInterventionSearchEvent;

  TaskSearchModel get taskSearch;
  @JsonKey(ignore: true)
  _$$DeliverInterventionSearchEventCopyWith<_$DeliverInterventionSearchEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeliverInterventionScannerEventCopyWith<$Res> {
  factory _$$DeliverInterventionScannerEventCopyWith(
          _$DeliverInterventionScannerEvent value,
          $Res Function(_$DeliverInterventionScannerEvent) then) =
      __$$DeliverInterventionScannerEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GS1Barcode> barcode});
}

/// @nodoc
class __$$DeliverInterventionScannerEventCopyWithImpl<$Res>
    extends _$DeliverInterventionEventCopyWithImpl<$Res,
        _$DeliverInterventionScannerEvent>
    implements _$$DeliverInterventionScannerEventCopyWith<$Res> {
  __$$DeliverInterventionScannerEventCopyWithImpl(
      _$DeliverInterventionScannerEvent _value,
      $Res Function(_$DeliverInterventionScannerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
  }) {
    return _then(_$DeliverInterventionScannerEvent(
      null == barcode
          ? _value._barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as List<GS1Barcode>,
    ));
  }
}

/// @nodoc

class _$DeliverInterventionScannerEvent
    implements DeliverInterventionScannerEvent {
  const _$DeliverInterventionScannerEvent(final List<GS1Barcode> barcode)
      : _barcode = barcode;

  final List<GS1Barcode> _barcode;
  @override
  List<GS1Barcode> get barcode {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barcode);
  }

  @override
  String toString() {
    return 'DeliverInterventionEvent.handleScanner(barcode: $barcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliverInterventionScannerEvent &&
            const DeepCollectionEquality().equals(other._barcode, _barcode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_barcode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliverInterventionScannerEventCopyWith<_$DeliverInterventionScannerEvent>
      get copyWith => __$$DeliverInterventionScannerEventCopyWithImpl<
          _$DeliverInterventionScannerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)
        handleSubmit,
    required TResult Function(TaskSearchModel taskSearch) handleSearch,
    required TResult Function(List<GS1Barcode> barcode) handleScanner,
  }) {
    return handleScanner(barcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)?
        handleSubmit,
    TResult? Function(TaskSearchModel taskSearch)? handleSearch,
    TResult? Function(List<GS1Barcode> barcode)? handleScanner,
  }) {
    return handleScanner?.call(barcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TaskModel task, bool isEditing, BoundaryModel boundaryModel)?
        handleSubmit,
    TResult Function(TaskSearchModel taskSearch)? handleSearch,
    TResult Function(List<GS1Barcode> barcode)? handleScanner,
    required TResult orElse(),
  }) {
    if (handleScanner != null) {
      return handleScanner(barcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeliverInterventionSubmitEvent value)
        handleSubmit,
    required TResult Function(DeliverInterventionSearchEvent value)
        handleSearch,
    required TResult Function(DeliverInterventionScannerEvent value)
        handleScanner,
  }) {
    return handleScanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliverInterventionSubmitEvent value)? handleSubmit,
    TResult? Function(DeliverInterventionSearchEvent value)? handleSearch,
    TResult? Function(DeliverInterventionScannerEvent value)? handleScanner,
  }) {
    return handleScanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliverInterventionSubmitEvent value)? handleSubmit,
    TResult Function(DeliverInterventionSearchEvent value)? handleSearch,
    TResult Function(DeliverInterventionScannerEvent value)? handleScanner,
    required TResult orElse(),
  }) {
    if (handleScanner != null) {
      return handleScanner(this);
    }
    return orElse();
  }
}

abstract class DeliverInterventionScannerEvent
    implements DeliverInterventionEvent {
  const factory DeliverInterventionScannerEvent(
      final List<GS1Barcode> barcode) = _$DeliverInterventionScannerEvent;

  List<GS1Barcode> get barcode;
  @JsonKey(ignore: true)
  _$$DeliverInterventionScannerEventCopyWith<_$DeliverInterventionScannerEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliverInterventionState {
  bool get loading => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  List<GS1Barcode>? get barcodes => throw _privateConstructorUsedError;
  TaskModel? get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliverInterventionStateCopyWith<DeliverInterventionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverInterventionStateCopyWith<$Res> {
  factory $DeliverInterventionStateCopyWith(DeliverInterventionState value,
          $Res Function(DeliverInterventionState) then) =
      _$DeliverInterventionStateCopyWithImpl<$Res, DeliverInterventionState>;
  @useResult
  $Res call(
      {bool loading,
      bool isEditing,
      List<GS1Barcode>? barcodes,
      TaskModel? task});
}

/// @nodoc
class _$DeliverInterventionStateCopyWithImpl<$Res,
        $Val extends DeliverInterventionState>
    implements $DeliverInterventionStateCopyWith<$Res> {
  _$DeliverInterventionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isEditing = null,
    Object? barcodes = freezed,
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      barcodes: freezed == barcodes
          ? _value.barcodes
          : barcodes // ignore: cast_nullable_to_non_nullable
              as List<GS1Barcode>?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliverInterventionStateCopyWith<$Res>
    implements $DeliverInterventionStateCopyWith<$Res> {
  factory _$$_DeliverInterventionStateCopyWith(
          _$_DeliverInterventionState value,
          $Res Function(_$_DeliverInterventionState) then) =
      __$$_DeliverInterventionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool isEditing,
      List<GS1Barcode>? barcodes,
      TaskModel? task});
}

/// @nodoc
class __$$_DeliverInterventionStateCopyWithImpl<$Res>
    extends _$DeliverInterventionStateCopyWithImpl<$Res,
        _$_DeliverInterventionState>
    implements _$$_DeliverInterventionStateCopyWith<$Res> {
  __$$_DeliverInterventionStateCopyWithImpl(_$_DeliverInterventionState _value,
      $Res Function(_$_DeliverInterventionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isEditing = null,
    Object? barcodes = freezed,
    Object? task = freezed,
  }) {
    return _then(_$_DeliverInterventionState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      barcodes: freezed == barcodes
          ? _value._barcodes
          : barcodes // ignore: cast_nullable_to_non_nullable
              as List<GS1Barcode>?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
    ));
  }
}

/// @nodoc

class _$_DeliverInterventionState implements _DeliverInterventionState {
  const _$_DeliverInterventionState(
      {this.loading = false,
      this.isEditing = false,
      final List<GS1Barcode>? barcodes,
      this.task})
      : _barcodes = barcodes;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool isEditing;
  final List<GS1Barcode>? _barcodes;
  @override
  List<GS1Barcode>? get barcodes {
    final value = _barcodes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TaskModel? task;

  @override
  String toString() {
    return 'DeliverInterventionState(loading: $loading, isEditing: $isEditing, barcodes: $barcodes, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliverInterventionState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            const DeepCollectionEquality().equals(other._barcodes, _barcodes) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, isEditing,
      const DeepCollectionEquality().hash(_barcodes), task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliverInterventionStateCopyWith<_$_DeliverInterventionState>
      get copyWith => __$$_DeliverInterventionStateCopyWithImpl<
          _$_DeliverInterventionState>(this, _$identity);
}

abstract class _DeliverInterventionState implements DeliverInterventionState {
  const factory _DeliverInterventionState(
      {final bool loading,
      final bool isEditing,
      final List<GS1Barcode>? barcodes,
      final TaskModel? task}) = _$_DeliverInterventionState;

  @override
  bool get loading;
  @override
  bool get isEditing;
  @override
  List<GS1Barcode>? get barcodes;
  @override
  TaskModel? get task;
  @override
  @JsonKey(ignore: true)
  _$$_DeliverInterventionStateCopyWith<_$_DeliverInterventionState>
      get copyWith => throw _privateConstructorUsedError;
}
