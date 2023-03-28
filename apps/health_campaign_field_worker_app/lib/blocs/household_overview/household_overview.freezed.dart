// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'household_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HouseholdOverviewEvent {
  String get projectId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)
        deleteHousehold,
    required TResult Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)
        deleteIndividual,
    required TResult Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)
        setAsHead,
    required TResult Function(String projectId) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)?
        deleteHousehold,
    TResult? Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)?
        deleteIndividual,
    TResult? Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)?
        setAsHead,
    TResult? Function(String projectId)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)?
        deleteHousehold,
    TResult Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)?
        deleteIndividual,
    TResult Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)?
        setAsHead,
    TResult Function(String projectId)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseholdOverviewDeleteHouseholdEvent value)
        deleteHousehold,
    required TResult Function(HouseholdOverviewDeleteIndividualEvent value)
        deleteIndividual,
    required TResult Function(HouseholdOverviewSetAsHeadEvent value) setAsHead,
    required TResult Function(HouseholdOverviewReloadEvent value) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseholdOverviewDeleteHouseholdEvent value)?
        deleteHousehold,
    TResult? Function(HouseholdOverviewDeleteIndividualEvent value)?
        deleteIndividual,
    TResult? Function(HouseholdOverviewSetAsHeadEvent value)? setAsHead,
    TResult? Function(HouseholdOverviewReloadEvent value)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseholdOverviewDeleteHouseholdEvent value)?
        deleteHousehold,
    TResult Function(HouseholdOverviewDeleteIndividualEvent value)?
        deleteIndividual,
    TResult Function(HouseholdOverviewSetAsHeadEvent value)? setAsHead,
    TResult Function(HouseholdOverviewReloadEvent value)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HouseholdOverviewEventCopyWith<HouseholdOverviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseholdOverviewEventCopyWith<$Res> {
  factory $HouseholdOverviewEventCopyWith(HouseholdOverviewEvent value,
          $Res Function(HouseholdOverviewEvent) then) =
      _$HouseholdOverviewEventCopyWithImpl<$Res, HouseholdOverviewEvent>;
  @useResult
  $Res call({String projectId});
}

/// @nodoc
class _$HouseholdOverviewEventCopyWithImpl<$Res,
        $Val extends HouseholdOverviewEvent>
    implements $HouseholdOverviewEventCopyWith<$Res> {
  _$HouseholdOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HouseholdOverviewDeleteHouseholdEventCopyWith<$Res>
    implements $HouseholdOverviewEventCopyWith<$Res> {
  factory _$$HouseholdOverviewDeleteHouseholdEventCopyWith(
          _$HouseholdOverviewDeleteHouseholdEvent value,
          $Res Function(_$HouseholdOverviewDeleteHouseholdEvent) then) =
      __$$HouseholdOverviewDeleteHouseholdEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectId,
      HouseholdModel householdModel,
      List<IndividualModel> members,
      ProjectBeneficiaryModel projectBeneficiaryModel});
}

/// @nodoc
class __$$HouseholdOverviewDeleteHouseholdEventCopyWithImpl<$Res>
    extends _$HouseholdOverviewEventCopyWithImpl<$Res,
        _$HouseholdOverviewDeleteHouseholdEvent>
    implements _$$HouseholdOverviewDeleteHouseholdEventCopyWith<$Res> {
  __$$HouseholdOverviewDeleteHouseholdEventCopyWithImpl(
      _$HouseholdOverviewDeleteHouseholdEvent _value,
      $Res Function(_$HouseholdOverviewDeleteHouseholdEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? householdModel = null,
    Object? members = null,
    Object? projectBeneficiaryModel = null,
  }) {
    return _then(_$HouseholdOverviewDeleteHouseholdEvent(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      householdModel: null == householdModel
          ? _value.householdModel
          : householdModel // ignore: cast_nullable_to_non_nullable
              as HouseholdModel,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<IndividualModel>,
      projectBeneficiaryModel: null == projectBeneficiaryModel
          ? _value.projectBeneficiaryModel
          : projectBeneficiaryModel // ignore: cast_nullable_to_non_nullable
              as ProjectBeneficiaryModel,
    ));
  }
}

/// @nodoc

class _$HouseholdOverviewDeleteHouseholdEvent
    implements HouseholdOverviewDeleteHouseholdEvent {
  const _$HouseholdOverviewDeleteHouseholdEvent(
      {required this.projectId,
      required this.householdModel,
      required final List<IndividualModel> members,
      required this.projectBeneficiaryModel})
      : _members = members;

  @override
  final String projectId;
  @override
  final HouseholdModel householdModel;
  final List<IndividualModel> _members;
  @override
  List<IndividualModel> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final ProjectBeneficiaryModel projectBeneficiaryModel;

  @override
  String toString() {
    return 'HouseholdOverviewEvent.deleteHousehold(projectId: $projectId, householdModel: $householdModel, members: $members, projectBeneficiaryModel: $projectBeneficiaryModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseholdOverviewDeleteHouseholdEvent &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.householdModel, householdModel) ||
                other.householdModel == householdModel) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(
                    other.projectBeneficiaryModel, projectBeneficiaryModel) ||
                other.projectBeneficiaryModel == projectBeneficiaryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectId, householdModel,
      const DeepCollectionEquality().hash(_members), projectBeneficiaryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseholdOverviewDeleteHouseholdEventCopyWith<
          _$HouseholdOverviewDeleteHouseholdEvent>
      get copyWith => __$$HouseholdOverviewDeleteHouseholdEventCopyWithImpl<
          _$HouseholdOverviewDeleteHouseholdEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)
        deleteHousehold,
    required TResult Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)
        deleteIndividual,
    required TResult Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)
        setAsHead,
    required TResult Function(String projectId) reload,
  }) {
    return deleteHousehold(
        projectId, householdModel, members, projectBeneficiaryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)?
        deleteHousehold,
    TResult? Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)?
        deleteIndividual,
    TResult? Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)?
        setAsHead,
    TResult? Function(String projectId)? reload,
  }) {
    return deleteHousehold?.call(
        projectId, householdModel, members, projectBeneficiaryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)?
        deleteHousehold,
    TResult Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)?
        deleteIndividual,
    TResult Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)?
        setAsHead,
    TResult Function(String projectId)? reload,
    required TResult orElse(),
  }) {
    if (deleteHousehold != null) {
      return deleteHousehold(
          projectId, householdModel, members, projectBeneficiaryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseholdOverviewDeleteHouseholdEvent value)
        deleteHousehold,
    required TResult Function(HouseholdOverviewDeleteIndividualEvent value)
        deleteIndividual,
    required TResult Function(HouseholdOverviewSetAsHeadEvent value) setAsHead,
    required TResult Function(HouseholdOverviewReloadEvent value) reload,
  }) {
    return deleteHousehold(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseholdOverviewDeleteHouseholdEvent value)?
        deleteHousehold,
    TResult? Function(HouseholdOverviewDeleteIndividualEvent value)?
        deleteIndividual,
    TResult? Function(HouseholdOverviewSetAsHeadEvent value)? setAsHead,
    TResult? Function(HouseholdOverviewReloadEvent value)? reload,
  }) {
    return deleteHousehold?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseholdOverviewDeleteHouseholdEvent value)?
        deleteHousehold,
    TResult Function(HouseholdOverviewDeleteIndividualEvent value)?
        deleteIndividual,
    TResult Function(HouseholdOverviewSetAsHeadEvent value)? setAsHead,
    TResult Function(HouseholdOverviewReloadEvent value)? reload,
    required TResult orElse(),
  }) {
    if (deleteHousehold != null) {
      return deleteHousehold(this);
    }
    return orElse();
  }
}

abstract class HouseholdOverviewDeleteHouseholdEvent
    implements HouseholdOverviewEvent {
  const factory HouseholdOverviewDeleteHouseholdEvent(
          {required final String projectId,
          required final HouseholdModel householdModel,
          required final List<IndividualModel> members,
          required final ProjectBeneficiaryModel projectBeneficiaryModel}) =
      _$HouseholdOverviewDeleteHouseholdEvent;

  @override
  String get projectId;
  HouseholdModel get householdModel;
  List<IndividualModel> get members;
  ProjectBeneficiaryModel get projectBeneficiaryModel;
  @override
  @JsonKey(ignore: true)
  _$$HouseholdOverviewDeleteHouseholdEventCopyWith<
          _$HouseholdOverviewDeleteHouseholdEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HouseholdOverviewDeleteIndividualEventCopyWith<$Res>
    implements $HouseholdOverviewEventCopyWith<$Res> {
  factory _$$HouseholdOverviewDeleteIndividualEventCopyWith(
          _$HouseholdOverviewDeleteIndividualEvent value,
          $Res Function(_$HouseholdOverviewDeleteIndividualEvent) then) =
      __$$HouseholdOverviewDeleteIndividualEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectId,
      HouseholdModel householdModel,
      IndividualModel individualModel});
}

/// @nodoc
class __$$HouseholdOverviewDeleteIndividualEventCopyWithImpl<$Res>
    extends _$HouseholdOverviewEventCopyWithImpl<$Res,
        _$HouseholdOverviewDeleteIndividualEvent>
    implements _$$HouseholdOverviewDeleteIndividualEventCopyWith<$Res> {
  __$$HouseholdOverviewDeleteIndividualEventCopyWithImpl(
      _$HouseholdOverviewDeleteIndividualEvent _value,
      $Res Function(_$HouseholdOverviewDeleteIndividualEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? householdModel = null,
    Object? individualModel = null,
  }) {
    return _then(_$HouseholdOverviewDeleteIndividualEvent(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      householdModel: null == householdModel
          ? _value.householdModel
          : householdModel // ignore: cast_nullable_to_non_nullable
              as HouseholdModel,
      individualModel: null == individualModel
          ? _value.individualModel
          : individualModel // ignore: cast_nullable_to_non_nullable
              as IndividualModel,
    ));
  }
}

/// @nodoc

class _$HouseholdOverviewDeleteIndividualEvent
    implements HouseholdOverviewDeleteIndividualEvent {
  const _$HouseholdOverviewDeleteIndividualEvent(
      {required this.projectId,
      required this.householdModel,
      required this.individualModel});

  @override
  final String projectId;
  @override
  final HouseholdModel householdModel;
  @override
  final IndividualModel individualModel;

  @override
  String toString() {
    return 'HouseholdOverviewEvent.deleteIndividual(projectId: $projectId, householdModel: $householdModel, individualModel: $individualModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseholdOverviewDeleteIndividualEvent &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.householdModel, householdModel) ||
                other.householdModel == householdModel) &&
            (identical(other.individualModel, individualModel) ||
                other.individualModel == individualModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, projectId, householdModel, individualModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseholdOverviewDeleteIndividualEventCopyWith<
          _$HouseholdOverviewDeleteIndividualEvent>
      get copyWith => __$$HouseholdOverviewDeleteIndividualEventCopyWithImpl<
          _$HouseholdOverviewDeleteIndividualEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)
        deleteHousehold,
    required TResult Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)
        deleteIndividual,
    required TResult Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)
        setAsHead,
    required TResult Function(String projectId) reload,
  }) {
    return deleteIndividual(projectId, householdModel, individualModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)?
        deleteHousehold,
    TResult? Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)?
        deleteIndividual,
    TResult? Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)?
        setAsHead,
    TResult? Function(String projectId)? reload,
  }) {
    return deleteIndividual?.call(projectId, householdModel, individualModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)?
        deleteHousehold,
    TResult Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)?
        deleteIndividual,
    TResult Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)?
        setAsHead,
    TResult Function(String projectId)? reload,
    required TResult orElse(),
  }) {
    if (deleteIndividual != null) {
      return deleteIndividual(projectId, householdModel, individualModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseholdOverviewDeleteHouseholdEvent value)
        deleteHousehold,
    required TResult Function(HouseholdOverviewDeleteIndividualEvent value)
        deleteIndividual,
    required TResult Function(HouseholdOverviewSetAsHeadEvent value) setAsHead,
    required TResult Function(HouseholdOverviewReloadEvent value) reload,
  }) {
    return deleteIndividual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseholdOverviewDeleteHouseholdEvent value)?
        deleteHousehold,
    TResult? Function(HouseholdOverviewDeleteIndividualEvent value)?
        deleteIndividual,
    TResult? Function(HouseholdOverviewSetAsHeadEvent value)? setAsHead,
    TResult? Function(HouseholdOverviewReloadEvent value)? reload,
  }) {
    return deleteIndividual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseholdOverviewDeleteHouseholdEvent value)?
        deleteHousehold,
    TResult Function(HouseholdOverviewDeleteIndividualEvent value)?
        deleteIndividual,
    TResult Function(HouseholdOverviewSetAsHeadEvent value)? setAsHead,
    TResult Function(HouseholdOverviewReloadEvent value)? reload,
    required TResult orElse(),
  }) {
    if (deleteIndividual != null) {
      return deleteIndividual(this);
    }
    return orElse();
  }
}

abstract class HouseholdOverviewDeleteIndividualEvent
    implements HouseholdOverviewEvent {
  const factory HouseholdOverviewDeleteIndividualEvent(
          {required final String projectId,
          required final HouseholdModel householdModel,
          required final IndividualModel individualModel}) =
      _$HouseholdOverviewDeleteIndividualEvent;

  @override
  String get projectId;
  HouseholdModel get householdModel;
  IndividualModel get individualModel;
  @override
  @JsonKey(ignore: true)
  _$$HouseholdOverviewDeleteIndividualEventCopyWith<
          _$HouseholdOverviewDeleteIndividualEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HouseholdOverviewSetAsHeadEventCopyWith<$Res>
    implements $HouseholdOverviewEventCopyWith<$Res> {
  factory _$$HouseholdOverviewSetAsHeadEventCopyWith(
          _$HouseholdOverviewSetAsHeadEvent value,
          $Res Function(_$HouseholdOverviewSetAsHeadEvent) then) =
      __$$HouseholdOverviewSetAsHeadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectId,
      IndividualModel individualModel,
      HouseholdModel householdModel});
}

/// @nodoc
class __$$HouseholdOverviewSetAsHeadEventCopyWithImpl<$Res>
    extends _$HouseholdOverviewEventCopyWithImpl<$Res,
        _$HouseholdOverviewSetAsHeadEvent>
    implements _$$HouseholdOverviewSetAsHeadEventCopyWith<$Res> {
  __$$HouseholdOverviewSetAsHeadEventCopyWithImpl(
      _$HouseholdOverviewSetAsHeadEvent _value,
      $Res Function(_$HouseholdOverviewSetAsHeadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? individualModel = null,
    Object? householdModel = null,
  }) {
    return _then(_$HouseholdOverviewSetAsHeadEvent(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      individualModel: null == individualModel
          ? _value.individualModel
          : individualModel // ignore: cast_nullable_to_non_nullable
              as IndividualModel,
      householdModel: null == householdModel
          ? _value.householdModel
          : householdModel // ignore: cast_nullable_to_non_nullable
              as HouseholdModel,
    ));
  }
}

/// @nodoc

class _$HouseholdOverviewSetAsHeadEvent
    implements HouseholdOverviewSetAsHeadEvent {
  const _$HouseholdOverviewSetAsHeadEvent(
      {required this.projectId,
      required this.individualModel,
      required this.householdModel});

  @override
  final String projectId;
  @override
  final IndividualModel individualModel;
  @override
  final HouseholdModel householdModel;

  @override
  String toString() {
    return 'HouseholdOverviewEvent.setAsHead(projectId: $projectId, individualModel: $individualModel, householdModel: $householdModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseholdOverviewSetAsHeadEvent &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.individualModel, individualModel) ||
                other.individualModel == individualModel) &&
            (identical(other.householdModel, householdModel) ||
                other.householdModel == householdModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, projectId, individualModel, householdModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseholdOverviewSetAsHeadEventCopyWith<_$HouseholdOverviewSetAsHeadEvent>
      get copyWith => __$$HouseholdOverviewSetAsHeadEventCopyWithImpl<
          _$HouseholdOverviewSetAsHeadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)
        deleteHousehold,
    required TResult Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)
        deleteIndividual,
    required TResult Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)
        setAsHead,
    required TResult Function(String projectId) reload,
  }) {
    return setAsHead(projectId, individualModel, householdModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)?
        deleteHousehold,
    TResult? Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)?
        deleteIndividual,
    TResult? Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)?
        setAsHead,
    TResult? Function(String projectId)? reload,
  }) {
    return setAsHead?.call(projectId, individualModel, householdModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)?
        deleteHousehold,
    TResult Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)?
        deleteIndividual,
    TResult Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)?
        setAsHead,
    TResult Function(String projectId)? reload,
    required TResult orElse(),
  }) {
    if (setAsHead != null) {
      return setAsHead(projectId, individualModel, householdModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseholdOverviewDeleteHouseholdEvent value)
        deleteHousehold,
    required TResult Function(HouseholdOverviewDeleteIndividualEvent value)
        deleteIndividual,
    required TResult Function(HouseholdOverviewSetAsHeadEvent value) setAsHead,
    required TResult Function(HouseholdOverviewReloadEvent value) reload,
  }) {
    return setAsHead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseholdOverviewDeleteHouseholdEvent value)?
        deleteHousehold,
    TResult? Function(HouseholdOverviewDeleteIndividualEvent value)?
        deleteIndividual,
    TResult? Function(HouseholdOverviewSetAsHeadEvent value)? setAsHead,
    TResult? Function(HouseholdOverviewReloadEvent value)? reload,
  }) {
    return setAsHead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseholdOverviewDeleteHouseholdEvent value)?
        deleteHousehold,
    TResult Function(HouseholdOverviewDeleteIndividualEvent value)?
        deleteIndividual,
    TResult Function(HouseholdOverviewSetAsHeadEvent value)? setAsHead,
    TResult Function(HouseholdOverviewReloadEvent value)? reload,
    required TResult orElse(),
  }) {
    if (setAsHead != null) {
      return setAsHead(this);
    }
    return orElse();
  }
}

abstract class HouseholdOverviewSetAsHeadEvent
    implements HouseholdOverviewEvent {
  const factory HouseholdOverviewSetAsHeadEvent(
          {required final String projectId,
          required final IndividualModel individualModel,
          required final HouseholdModel householdModel}) =
      _$HouseholdOverviewSetAsHeadEvent;

  @override
  String get projectId;
  IndividualModel get individualModel;
  HouseholdModel get householdModel;
  @override
  @JsonKey(ignore: true)
  _$$HouseholdOverviewSetAsHeadEventCopyWith<_$HouseholdOverviewSetAsHeadEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HouseholdOverviewReloadEventCopyWith<$Res>
    implements $HouseholdOverviewEventCopyWith<$Res> {
  factory _$$HouseholdOverviewReloadEventCopyWith(
          _$HouseholdOverviewReloadEvent value,
          $Res Function(_$HouseholdOverviewReloadEvent) then) =
      __$$HouseholdOverviewReloadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String projectId});
}

/// @nodoc
class __$$HouseholdOverviewReloadEventCopyWithImpl<$Res>
    extends _$HouseholdOverviewEventCopyWithImpl<$Res,
        _$HouseholdOverviewReloadEvent>
    implements _$$HouseholdOverviewReloadEventCopyWith<$Res> {
  __$$HouseholdOverviewReloadEventCopyWithImpl(
      _$HouseholdOverviewReloadEvent _value,
      $Res Function(_$HouseholdOverviewReloadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
  }) {
    return _then(_$HouseholdOverviewReloadEvent(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HouseholdOverviewReloadEvent implements HouseholdOverviewReloadEvent {
  const _$HouseholdOverviewReloadEvent({required this.projectId});

  @override
  final String projectId;

  @override
  String toString() {
    return 'HouseholdOverviewEvent.reload(projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseholdOverviewReloadEvent &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseholdOverviewReloadEventCopyWith<_$HouseholdOverviewReloadEvent>
      get copyWith => __$$HouseholdOverviewReloadEventCopyWithImpl<
          _$HouseholdOverviewReloadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)
        deleteHousehold,
    required TResult Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)
        deleteIndividual,
    required TResult Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)
        setAsHead,
    required TResult Function(String projectId) reload,
  }) {
    return reload(projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)?
        deleteHousehold,
    TResult? Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)?
        deleteIndividual,
    TResult? Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)?
        setAsHead,
    TResult? Function(String projectId)? reload,
  }) {
    return reload?.call(projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String projectId,
            HouseholdModel householdModel,
            List<IndividualModel> members,
            ProjectBeneficiaryModel projectBeneficiaryModel)?
        deleteHousehold,
    TResult Function(String projectId, HouseholdModel householdModel,
            IndividualModel individualModel)?
        deleteIndividual,
    TResult Function(String projectId, IndividualModel individualModel,
            HouseholdModel householdModel)?
        setAsHead,
    TResult Function(String projectId)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseholdOverviewDeleteHouseholdEvent value)
        deleteHousehold,
    required TResult Function(HouseholdOverviewDeleteIndividualEvent value)
        deleteIndividual,
    required TResult Function(HouseholdOverviewSetAsHeadEvent value) setAsHead,
    required TResult Function(HouseholdOverviewReloadEvent value) reload,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseholdOverviewDeleteHouseholdEvent value)?
        deleteHousehold,
    TResult? Function(HouseholdOverviewDeleteIndividualEvent value)?
        deleteIndividual,
    TResult? Function(HouseholdOverviewSetAsHeadEvent value)? setAsHead,
    TResult? Function(HouseholdOverviewReloadEvent value)? reload,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseholdOverviewDeleteHouseholdEvent value)?
        deleteHousehold,
    TResult Function(HouseholdOverviewDeleteIndividualEvent value)?
        deleteIndividual,
    TResult Function(HouseholdOverviewSetAsHeadEvent value)? setAsHead,
    TResult Function(HouseholdOverviewReloadEvent value)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class HouseholdOverviewReloadEvent implements HouseholdOverviewEvent {
  const factory HouseholdOverviewReloadEvent(
      {required final String projectId}) = _$HouseholdOverviewReloadEvent;

  @override
  String get projectId;
  @override
  @JsonKey(ignore: true)
  _$$HouseholdOverviewReloadEventCopyWith<_$HouseholdOverviewReloadEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HouseholdOverviewState {
  bool get loading => throw _privateConstructorUsedError;
  HouseholdMemberWrapper get householdMemberWrapper =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HouseholdOverviewStateCopyWith<HouseholdOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseholdOverviewStateCopyWith<$Res> {
  factory $HouseholdOverviewStateCopyWith(HouseholdOverviewState value,
          $Res Function(HouseholdOverviewState) then) =
      _$HouseholdOverviewStateCopyWithImpl<$Res, HouseholdOverviewState>;
  @useResult
  $Res call({bool loading, HouseholdMemberWrapper householdMemberWrapper});

  $HouseholdMemberWrapperCopyWith<$Res> get householdMemberWrapper;
}

/// @nodoc
class _$HouseholdOverviewStateCopyWithImpl<$Res,
        $Val extends HouseholdOverviewState>
    implements $HouseholdOverviewStateCopyWith<$Res> {
  _$HouseholdOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? householdMemberWrapper = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      householdMemberWrapper: null == householdMemberWrapper
          ? _value.householdMemberWrapper
          : householdMemberWrapper // ignore: cast_nullable_to_non_nullable
              as HouseholdMemberWrapper,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HouseholdMemberWrapperCopyWith<$Res> get householdMemberWrapper {
    return $HouseholdMemberWrapperCopyWith<$Res>(_value.householdMemberWrapper,
        (value) {
      return _then(_value.copyWith(householdMemberWrapper: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HouseholdOverviewStateCopyWith<$Res>
    implements $HouseholdOverviewStateCopyWith<$Res> {
  factory _$$_HouseholdOverviewStateCopyWith(_$_HouseholdOverviewState value,
          $Res Function(_$_HouseholdOverviewState) then) =
      __$$_HouseholdOverviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, HouseholdMemberWrapper householdMemberWrapper});

  @override
  $HouseholdMemberWrapperCopyWith<$Res> get householdMemberWrapper;
}

/// @nodoc
class __$$_HouseholdOverviewStateCopyWithImpl<$Res>
    extends _$HouseholdOverviewStateCopyWithImpl<$Res,
        _$_HouseholdOverviewState>
    implements _$$_HouseholdOverviewStateCopyWith<$Res> {
  __$$_HouseholdOverviewStateCopyWithImpl(_$_HouseholdOverviewState _value,
      $Res Function(_$_HouseholdOverviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? householdMemberWrapper = null,
  }) {
    return _then(_$_HouseholdOverviewState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      householdMemberWrapper: null == householdMemberWrapper
          ? _value.householdMemberWrapper
          : householdMemberWrapper // ignore: cast_nullable_to_non_nullable
              as HouseholdMemberWrapper,
    ));
  }
}

/// @nodoc

class _$_HouseholdOverviewState implements _HouseholdOverviewState {
  const _$_HouseholdOverviewState(
      {this.loading = false, required this.householdMemberWrapper});

  @override
  @JsonKey()
  final bool loading;
  @override
  final HouseholdMemberWrapper householdMemberWrapper;

  @override
  String toString() {
    return 'HouseholdOverviewState(loading: $loading, householdMemberWrapper: $householdMemberWrapper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HouseholdOverviewState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.householdMemberWrapper, householdMemberWrapper) ||
                other.householdMemberWrapper == householdMemberWrapper));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, householdMemberWrapper);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HouseholdOverviewStateCopyWith<_$_HouseholdOverviewState> get copyWith =>
      __$$_HouseholdOverviewStateCopyWithImpl<_$_HouseholdOverviewState>(
          this, _$identity);
}

abstract class _HouseholdOverviewState implements HouseholdOverviewState {
  const factory _HouseholdOverviewState(
          {final bool loading,
          required final HouseholdMemberWrapper householdMemberWrapper}) =
      _$_HouseholdOverviewState;

  @override
  bool get loading;
  @override
  HouseholdMemberWrapper get householdMemberWrapper;
  @override
  @JsonKey(ignore: true)
  _$$_HouseholdOverviewStateCopyWith<_$_HouseholdOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
