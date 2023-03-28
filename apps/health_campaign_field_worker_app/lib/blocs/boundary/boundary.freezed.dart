// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'boundary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoundaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) search,
    required TResult Function(String selectedBoundary) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? search,
    TResult? Function(String selectedBoundary)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? search,
    TResult Function(String selectedBoundary)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoundarySearchEvent value) search,
    required TResult Function(BoundarySelectEvent value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoundarySearchEvent value)? search,
    TResult? Function(BoundarySelectEvent value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoundarySearchEvent value)? search,
    TResult Function(BoundarySelectEvent value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundaryEventCopyWith<$Res> {
  factory $BoundaryEventCopyWith(
          BoundaryEvent value, $Res Function(BoundaryEvent) then) =
      _$BoundaryEventCopyWithImpl<$Res, BoundaryEvent>;
}

/// @nodoc
class _$BoundaryEventCopyWithImpl<$Res, $Val extends BoundaryEvent>
    implements $BoundaryEventCopyWith<$Res> {
  _$BoundaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BoundarySearchEventCopyWith<$Res> {
  factory _$$BoundarySearchEventCopyWith(_$BoundarySearchEvent value,
          $Res Function(_$BoundarySearchEvent) then) =
      __$$BoundarySearchEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$BoundarySearchEventCopyWithImpl<$Res>
    extends _$BoundaryEventCopyWithImpl<$Res, _$BoundarySearchEvent>
    implements _$$BoundarySearchEventCopyWith<$Res> {
  __$$BoundarySearchEventCopyWithImpl(
      _$BoundarySearchEvent _value, $Res Function(_$BoundarySearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$BoundarySearchEvent(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BoundarySearchEvent implements BoundarySearchEvent {
  const _$BoundarySearchEvent({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'BoundaryEvent.search(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoundarySearchEvent &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundarySearchEventCopyWith<_$BoundarySearchEvent> get copyWith =>
      __$$BoundarySearchEventCopyWithImpl<_$BoundarySearchEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) search,
    required TResult Function(String selectedBoundary) select,
  }) {
    return search(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? search,
    TResult? Function(String selectedBoundary)? select,
  }) {
    return search?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? search,
    TResult Function(String selectedBoundary)? select,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoundarySearchEvent value) search,
    required TResult Function(BoundarySelectEvent value) select,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoundarySearchEvent value)? search,
    TResult? Function(BoundarySelectEvent value)? select,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoundarySearchEvent value)? search,
    TResult Function(BoundarySelectEvent value)? select,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class BoundarySearchEvent implements BoundaryEvent {
  const factory BoundarySearchEvent({required final String code}) =
      _$BoundarySearchEvent;

  String get code;
  @JsonKey(ignore: true)
  _$$BoundarySearchEventCopyWith<_$BoundarySearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoundarySelectEventCopyWith<$Res> {
  factory _$$BoundarySelectEventCopyWith(_$BoundarySelectEvent value,
          $Res Function(_$BoundarySelectEvent) then) =
      __$$BoundarySelectEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedBoundary});
}

/// @nodoc
class __$$BoundarySelectEventCopyWithImpl<$Res>
    extends _$BoundaryEventCopyWithImpl<$Res, _$BoundarySelectEvent>
    implements _$$BoundarySelectEventCopyWith<$Res> {
  __$$BoundarySelectEventCopyWithImpl(
      _$BoundarySelectEvent _value, $Res Function(_$BoundarySelectEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBoundary = null,
  }) {
    return _then(_$BoundarySelectEvent(
      selectedBoundary: null == selectedBoundary
          ? _value.selectedBoundary
          : selectedBoundary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BoundarySelectEvent implements BoundarySelectEvent {
  const _$BoundarySelectEvent({required this.selectedBoundary});

  @override
  final String selectedBoundary;

  @override
  String toString() {
    return 'BoundaryEvent.select(selectedBoundary: $selectedBoundary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoundarySelectEvent &&
            (identical(other.selectedBoundary, selectedBoundary) ||
                other.selectedBoundary == selectedBoundary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedBoundary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundarySelectEventCopyWith<_$BoundarySelectEvent> get copyWith =>
      __$$BoundarySelectEventCopyWithImpl<_$BoundarySelectEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) search,
    required TResult Function(String selectedBoundary) select,
  }) {
    return select(selectedBoundary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? search,
    TResult? Function(String selectedBoundary)? select,
  }) {
    return select?.call(selectedBoundary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? search,
    TResult Function(String selectedBoundary)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(selectedBoundary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoundarySearchEvent value) search,
    required TResult Function(BoundarySelectEvent value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoundarySearchEvent value)? search,
    TResult? Function(BoundarySelectEvent value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoundarySearchEvent value)? search,
    TResult Function(BoundarySelectEvent value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class BoundarySelectEvent implements BoundaryEvent {
  const factory BoundarySelectEvent({required final String selectedBoundary}) =
      _$BoundarySelectEvent;

  String get selectedBoundary;
  @JsonKey(ignore: true)
  _$$BoundarySelectEventCopyWith<_$BoundarySelectEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BoundaryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)
        fetched,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)?
        fetched,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)?
        fetched,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoundaryLoadingState value) loading,
    required TResult Function(BoundaryFetchedState value) fetched,
    required TResult Function(BoundaryEmptyState value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoundaryLoadingState value)? loading,
    TResult? Function(BoundaryFetchedState value)? fetched,
    TResult? Function(BoundaryEmptyState value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoundaryLoadingState value)? loading,
    TResult Function(BoundaryFetchedState value)? fetched,
    TResult Function(BoundaryEmptyState value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundaryStateCopyWith<$Res> {
  factory $BoundaryStateCopyWith(
          BoundaryState value, $Res Function(BoundaryState) then) =
      _$BoundaryStateCopyWithImpl<$Res, BoundaryState>;
}

/// @nodoc
class _$BoundaryStateCopyWithImpl<$Res, $Val extends BoundaryState>
    implements $BoundaryStateCopyWith<$Res> {
  _$BoundaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BoundaryLoadingStateCopyWith<$Res> {
  factory _$$BoundaryLoadingStateCopyWith(_$BoundaryLoadingState value,
          $Res Function(_$BoundaryLoadingState) then) =
      __$$BoundaryLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BoundaryLoadingStateCopyWithImpl<$Res>
    extends _$BoundaryStateCopyWithImpl<$Res, _$BoundaryLoadingState>
    implements _$$BoundaryLoadingStateCopyWith<$Res> {
  __$$BoundaryLoadingStateCopyWithImpl(_$BoundaryLoadingState _value,
      $Res Function(_$BoundaryLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BoundaryLoadingState implements BoundaryLoadingState {
  const _$BoundaryLoadingState();

  @override
  String toString() {
    return 'BoundaryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BoundaryLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)
        fetched,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)?
        fetched,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)?
        fetched,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoundaryLoadingState value) loading,
    required TResult Function(BoundaryFetchedState value) fetched,
    required TResult Function(BoundaryEmptyState value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoundaryLoadingState value)? loading,
    TResult? Function(BoundaryFetchedState value)? fetched,
    TResult? Function(BoundaryEmptyState value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoundaryLoadingState value)? loading,
    TResult Function(BoundaryFetchedState value)? fetched,
    TResult Function(BoundaryEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BoundaryLoadingState implements BoundaryState {
  const factory BoundaryLoadingState() = _$BoundaryLoadingState;
}

/// @nodoc
abstract class _$$BoundaryFetchedStateCopyWith<$Res> {
  factory _$$BoundaryFetchedStateCopyWith(_$BoundaryFetchedState value,
          $Res Function(_$BoundaryFetchedState) then) =
      __$$BoundaryFetchedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<BoundaryModel> boundaryList,
      List<String> boundaryMapperList,
      String? selectedBoundary});
}

/// @nodoc
class __$$BoundaryFetchedStateCopyWithImpl<$Res>
    extends _$BoundaryStateCopyWithImpl<$Res, _$BoundaryFetchedState>
    implements _$$BoundaryFetchedStateCopyWith<$Res> {
  __$$BoundaryFetchedStateCopyWithImpl(_$BoundaryFetchedState _value,
      $Res Function(_$BoundaryFetchedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boundaryList = null,
    Object? boundaryMapperList = null,
    Object? selectedBoundary = freezed,
  }) {
    return _then(_$BoundaryFetchedState(
      boundaryList: null == boundaryList
          ? _value._boundaryList
          : boundaryList // ignore: cast_nullable_to_non_nullable
              as List<BoundaryModel>,
      boundaryMapperList: null == boundaryMapperList
          ? _value._boundaryMapperList
          : boundaryMapperList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedBoundary: freezed == selectedBoundary
          ? _value.selectedBoundary
          : selectedBoundary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BoundaryFetchedState implements BoundaryFetchedState {
  const _$BoundaryFetchedState(
      {final List<BoundaryModel> boundaryList = const [],
      final List<String> boundaryMapperList = const [],
      this.selectedBoundary})
      : _boundaryList = boundaryList,
        _boundaryMapperList = boundaryMapperList;

  final List<BoundaryModel> _boundaryList;
  @override
  @JsonKey()
  List<BoundaryModel> get boundaryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boundaryList);
  }

  final List<String> _boundaryMapperList;
  @override
  @JsonKey()
  List<String> get boundaryMapperList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boundaryMapperList);
  }

  @override
  final String? selectedBoundary;

  @override
  String toString() {
    return 'BoundaryState.fetched(boundaryList: $boundaryList, boundaryMapperList: $boundaryMapperList, selectedBoundary: $selectedBoundary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoundaryFetchedState &&
            const DeepCollectionEquality()
                .equals(other._boundaryList, _boundaryList) &&
            const DeepCollectionEquality()
                .equals(other._boundaryMapperList, _boundaryMapperList) &&
            (identical(other.selectedBoundary, selectedBoundary) ||
                other.selectedBoundary == selectedBoundary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_boundaryList),
      const DeepCollectionEquality().hash(_boundaryMapperList),
      selectedBoundary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundaryFetchedStateCopyWith<_$BoundaryFetchedState> get copyWith =>
      __$$BoundaryFetchedStateCopyWithImpl<_$BoundaryFetchedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)
        fetched,
    required TResult Function() empty,
  }) {
    return fetched(boundaryList, boundaryMapperList, selectedBoundary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)?
        fetched,
    TResult? Function()? empty,
  }) {
    return fetched?.call(boundaryList, boundaryMapperList, selectedBoundary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)?
        fetched,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(boundaryList, boundaryMapperList, selectedBoundary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoundaryLoadingState value) loading,
    required TResult Function(BoundaryFetchedState value) fetched,
    required TResult Function(BoundaryEmptyState value) empty,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoundaryLoadingState value)? loading,
    TResult? Function(BoundaryFetchedState value)? fetched,
    TResult? Function(BoundaryEmptyState value)? empty,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoundaryLoadingState value)? loading,
    TResult Function(BoundaryFetchedState value)? fetched,
    TResult Function(BoundaryEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class BoundaryFetchedState implements BoundaryState {
  const factory BoundaryFetchedState(
      {final List<BoundaryModel> boundaryList,
      final List<String> boundaryMapperList,
      final String? selectedBoundary}) = _$BoundaryFetchedState;

  List<BoundaryModel> get boundaryList;
  List<String> get boundaryMapperList;
  String? get selectedBoundary;
  @JsonKey(ignore: true)
  _$$BoundaryFetchedStateCopyWith<_$BoundaryFetchedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoundaryEmptyStateCopyWith<$Res> {
  factory _$$BoundaryEmptyStateCopyWith(_$BoundaryEmptyState value,
          $Res Function(_$BoundaryEmptyState) then) =
      __$$BoundaryEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BoundaryEmptyStateCopyWithImpl<$Res>
    extends _$BoundaryStateCopyWithImpl<$Res, _$BoundaryEmptyState>
    implements _$$BoundaryEmptyStateCopyWith<$Res> {
  __$$BoundaryEmptyStateCopyWithImpl(
      _$BoundaryEmptyState _value, $Res Function(_$BoundaryEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BoundaryEmptyState implements BoundaryEmptyState {
  const _$BoundaryEmptyState();

  @override
  String toString() {
    return 'BoundaryState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BoundaryEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)
        fetched,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)?
        fetched,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BoundaryModel> boundaryList,
            List<String> boundaryMapperList, String? selectedBoundary)?
        fetched,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoundaryLoadingState value) loading,
    required TResult Function(BoundaryFetchedState value) fetched,
    required TResult Function(BoundaryEmptyState value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoundaryLoadingState value)? loading,
    TResult? Function(BoundaryFetchedState value)? fetched,
    TResult? Function(BoundaryEmptyState value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoundaryLoadingState value)? loading,
    TResult Function(BoundaryFetchedState value)? fetched,
    TResult Function(BoundaryEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class BoundaryEmptyState implements BoundaryState {
  const factory BoundaryEmptyState() = _$BoundaryEmptyState;
}
