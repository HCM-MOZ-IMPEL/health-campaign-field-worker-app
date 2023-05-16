// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'beneficiary_registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BeneficiaryRegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel model) saveAddress,
    required TResult Function(
            HouseholdModel household, DateTime registrationDate)
        saveHouseholdDetails,
    required TResult Function(IndividualModel model, bool isHeadOfHousehold)
        saveIndividualDetails,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)
        addMember,
    required TResult Function(
            HouseholdModel household, AddressModel? addressModel)
        updateHouseholdDetails,
    required TResult Function(IndividualModel model, AddressModel addressModel)
        updateIndividualDetails,
    required TResult Function(
            String userUuid, String projectId, BoundaryModel boundary)
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel model)? saveAddress,
    TResult? Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult? Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult? Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult? Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult? Function(
            String userUuid, String projectId, BoundaryModel boundary)?
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel model)? saveAddress,
    TResult Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult Function(String userUuid, String projectId, BoundaryModel boundary)?
        create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationSaveAddressEvent value)
        saveAddress,
    required TResult Function(
            BeneficiaryRegistrationSaveHouseholdDetailsEvent value)
        saveHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationSaveIndividualDetailsEvent value)
        saveIndividualDetails,
    required TResult Function(BeneficiaryRegistrationAddMemberEvent value)
        addMember,
    required TResult Function(
            BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)
        updateHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)
        updateIndividualDetails,
    required TResult Function(BeneficiaryRegistrationCreateEvent value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult? Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult? Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult? Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult? Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult? Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult? Function(BeneficiaryRegistrationCreateEvent value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult Function(BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult Function(BeneficiaryRegistrationCreateEvent value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryRegistrationEventCopyWith<$Res> {
  factory $BeneficiaryRegistrationEventCopyWith(
          BeneficiaryRegistrationEvent value,
          $Res Function(BeneficiaryRegistrationEvent) then) =
      _$BeneficiaryRegistrationEventCopyWithImpl<$Res,
          BeneficiaryRegistrationEvent>;
}

/// @nodoc
class _$BeneficiaryRegistrationEventCopyWithImpl<$Res,
        $Val extends BeneficiaryRegistrationEvent>
    implements $BeneficiaryRegistrationEventCopyWith<$Res> {
  _$BeneficiaryRegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationSaveAddressEventCopyWith<$Res> {
  factory _$$BeneficiaryRegistrationSaveAddressEventCopyWith(
          _$BeneficiaryRegistrationSaveAddressEvent value,
          $Res Function(_$BeneficiaryRegistrationSaveAddressEvent) then) =
      __$$BeneficiaryRegistrationSaveAddressEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressModel model});
}

/// @nodoc
class __$$BeneficiaryRegistrationSaveAddressEventCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationEventCopyWithImpl<$Res,
        _$BeneficiaryRegistrationSaveAddressEvent>
    implements _$$BeneficiaryRegistrationSaveAddressEventCopyWith<$Res> {
  __$$BeneficiaryRegistrationSaveAddressEventCopyWithImpl(
      _$BeneficiaryRegistrationSaveAddressEvent _value,
      $Res Function(_$BeneficiaryRegistrationSaveAddressEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$BeneficiaryRegistrationSaveAddressEvent(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationSaveAddressEvent
    implements BeneficiaryRegistrationSaveAddressEvent {
  const _$BeneficiaryRegistrationSaveAddressEvent(this.model);

  @override
  final AddressModel model;

  @override
  String toString() {
    return 'BeneficiaryRegistrationEvent.saveAddress(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationSaveAddressEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationSaveAddressEventCopyWith<
          _$BeneficiaryRegistrationSaveAddressEvent>
      get copyWith => __$$BeneficiaryRegistrationSaveAddressEventCopyWithImpl<
          _$BeneficiaryRegistrationSaveAddressEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel model) saveAddress,
    required TResult Function(
            HouseholdModel household, DateTime registrationDate)
        saveHouseholdDetails,
    required TResult Function(IndividualModel model, bool isHeadOfHousehold)
        saveIndividualDetails,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)
        addMember,
    required TResult Function(
            HouseholdModel household, AddressModel? addressModel)
        updateHouseholdDetails,
    required TResult Function(IndividualModel model, AddressModel addressModel)
        updateIndividualDetails,
    required TResult Function(
            String userUuid, String projectId, BoundaryModel boundary)
        create,
  }) {
    return saveAddress(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel model)? saveAddress,
    TResult? Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult? Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult? Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult? Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult? Function(
            String userUuid, String projectId, BoundaryModel boundary)?
        create,
  }) {
    return saveAddress?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel model)? saveAddress,
    TResult Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult Function(String userUuid, String projectId, BoundaryModel boundary)?
        create,
    required TResult orElse(),
  }) {
    if (saveAddress != null) {
      return saveAddress(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationSaveAddressEvent value)
        saveAddress,
    required TResult Function(
            BeneficiaryRegistrationSaveHouseholdDetailsEvent value)
        saveHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationSaveIndividualDetailsEvent value)
        saveIndividualDetails,
    required TResult Function(BeneficiaryRegistrationAddMemberEvent value)
        addMember,
    required TResult Function(
            BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)
        updateHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)
        updateIndividualDetails,
    required TResult Function(BeneficiaryRegistrationCreateEvent value) create,
  }) {
    return saveAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult? Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult? Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult? Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult? Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult? Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult? Function(BeneficiaryRegistrationCreateEvent value)? create,
  }) {
    return saveAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult Function(BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult Function(BeneficiaryRegistrationCreateEvent value)? create,
    required TResult orElse(),
  }) {
    if (saveAddress != null) {
      return saveAddress(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationSaveAddressEvent
    implements BeneficiaryRegistrationEvent {
  const factory BeneficiaryRegistrationSaveAddressEvent(
      final AddressModel model) = _$BeneficiaryRegistrationSaveAddressEvent;

  AddressModel get model;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationSaveAddressEventCopyWith<
          _$BeneficiaryRegistrationSaveAddressEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationSaveHouseholdDetailsEventCopyWith<
    $Res> {
  factory _$$BeneficiaryRegistrationSaveHouseholdDetailsEventCopyWith(
          _$BeneficiaryRegistrationSaveHouseholdDetailsEvent value,
          $Res Function(_$BeneficiaryRegistrationSaveHouseholdDetailsEvent)
              then) =
      __$$BeneficiaryRegistrationSaveHouseholdDetailsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({HouseholdModel household, DateTime registrationDate});
}

/// @nodoc
class __$$BeneficiaryRegistrationSaveHouseholdDetailsEventCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationEventCopyWithImpl<$Res,
        _$BeneficiaryRegistrationSaveHouseholdDetailsEvent>
    implements
        _$$BeneficiaryRegistrationSaveHouseholdDetailsEventCopyWith<$Res> {
  __$$BeneficiaryRegistrationSaveHouseholdDetailsEventCopyWithImpl(
      _$BeneficiaryRegistrationSaveHouseholdDetailsEvent _value,
      $Res Function(_$BeneficiaryRegistrationSaveHouseholdDetailsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? household = null,
    Object? registrationDate = null,
  }) {
    return _then(_$BeneficiaryRegistrationSaveHouseholdDetailsEvent(
      household: null == household
          ? _value.household
          : household // ignore: cast_nullable_to_non_nullable
              as HouseholdModel,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationSaveHouseholdDetailsEvent
    implements BeneficiaryRegistrationSaveHouseholdDetailsEvent {
  const _$BeneficiaryRegistrationSaveHouseholdDetailsEvent(
      {required this.household, required this.registrationDate});

  @override
  final HouseholdModel household;
  @override
  final DateTime registrationDate;

  @override
  String toString() {
    return 'BeneficiaryRegistrationEvent.saveHouseholdDetails(household: $household, registrationDate: $registrationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationSaveHouseholdDetailsEvent &&
            (identical(other.household, household) ||
                other.household == household) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, household, registrationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationSaveHouseholdDetailsEventCopyWith<
          _$BeneficiaryRegistrationSaveHouseholdDetailsEvent>
      get copyWith =>
          __$$BeneficiaryRegistrationSaveHouseholdDetailsEventCopyWithImpl<
                  _$BeneficiaryRegistrationSaveHouseholdDetailsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel model) saveAddress,
    required TResult Function(
            HouseholdModel household, DateTime registrationDate)
        saveHouseholdDetails,
    required TResult Function(IndividualModel model, bool isHeadOfHousehold)
        saveIndividualDetails,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)
        addMember,
    required TResult Function(
            HouseholdModel household, AddressModel? addressModel)
        updateHouseholdDetails,
    required TResult Function(IndividualModel model, AddressModel addressModel)
        updateIndividualDetails,
    required TResult Function(
            String userUuid, String projectId, BoundaryModel boundary)
        create,
  }) {
    return saveHouseholdDetails(household, registrationDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel model)? saveAddress,
    TResult? Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult? Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult? Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult? Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult? Function(
            String userUuid, String projectId, BoundaryModel boundary)?
        create,
  }) {
    return saveHouseholdDetails?.call(household, registrationDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel model)? saveAddress,
    TResult Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult Function(String userUuid, String projectId, BoundaryModel boundary)?
        create,
    required TResult orElse(),
  }) {
    if (saveHouseholdDetails != null) {
      return saveHouseholdDetails(household, registrationDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationSaveAddressEvent value)
        saveAddress,
    required TResult Function(
            BeneficiaryRegistrationSaveHouseholdDetailsEvent value)
        saveHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationSaveIndividualDetailsEvent value)
        saveIndividualDetails,
    required TResult Function(BeneficiaryRegistrationAddMemberEvent value)
        addMember,
    required TResult Function(
            BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)
        updateHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)
        updateIndividualDetails,
    required TResult Function(BeneficiaryRegistrationCreateEvent value) create,
  }) {
    return saveHouseholdDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult? Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult? Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult? Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult? Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult? Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult? Function(BeneficiaryRegistrationCreateEvent value)? create,
  }) {
    return saveHouseholdDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult Function(BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult Function(BeneficiaryRegistrationCreateEvent value)? create,
    required TResult orElse(),
  }) {
    if (saveHouseholdDetails != null) {
      return saveHouseholdDetails(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationSaveHouseholdDetailsEvent
    implements BeneficiaryRegistrationEvent {
  const factory BeneficiaryRegistrationSaveHouseholdDetailsEvent(
          {required final HouseholdModel household,
          required final DateTime registrationDate}) =
      _$BeneficiaryRegistrationSaveHouseholdDetailsEvent;

  HouseholdModel get household;
  DateTime get registrationDate;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationSaveHouseholdDetailsEventCopyWith<
          _$BeneficiaryRegistrationSaveHouseholdDetailsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationSaveIndividualDetailsEventCopyWith<
    $Res> {
  factory _$$BeneficiaryRegistrationSaveIndividualDetailsEventCopyWith(
          _$BeneficiaryRegistrationSaveIndividualDetailsEvent value,
          $Res Function(_$BeneficiaryRegistrationSaveIndividualDetailsEvent)
              then) =
      __$$BeneficiaryRegistrationSaveIndividualDetailsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({IndividualModel model, bool isHeadOfHousehold});
}

/// @nodoc
class __$$BeneficiaryRegistrationSaveIndividualDetailsEventCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationEventCopyWithImpl<$Res,
        _$BeneficiaryRegistrationSaveIndividualDetailsEvent>
    implements
        _$$BeneficiaryRegistrationSaveIndividualDetailsEventCopyWith<$Res> {
  __$$BeneficiaryRegistrationSaveIndividualDetailsEventCopyWithImpl(
      _$BeneficiaryRegistrationSaveIndividualDetailsEvent _value,
      $Res Function(_$BeneficiaryRegistrationSaveIndividualDetailsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? isHeadOfHousehold = null,
  }) {
    return _then(_$BeneficiaryRegistrationSaveIndividualDetailsEvent(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as IndividualModel,
      isHeadOfHousehold: null == isHeadOfHousehold
          ? _value.isHeadOfHousehold
          : isHeadOfHousehold // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationSaveIndividualDetailsEvent
    implements BeneficiaryRegistrationSaveIndividualDetailsEvent {
  const _$BeneficiaryRegistrationSaveIndividualDetailsEvent(
      {required this.model, this.isHeadOfHousehold = false});

  @override
  final IndividualModel model;
  @override
  @JsonKey()
  final bool isHeadOfHousehold;

  @override
  String toString() {
    return 'BeneficiaryRegistrationEvent.saveIndividualDetails(model: $model, isHeadOfHousehold: $isHeadOfHousehold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationSaveIndividualDetailsEvent &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.isHeadOfHousehold, isHeadOfHousehold) ||
                other.isHeadOfHousehold == isHeadOfHousehold));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, isHeadOfHousehold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationSaveIndividualDetailsEventCopyWith<
          _$BeneficiaryRegistrationSaveIndividualDetailsEvent>
      get copyWith =>
          __$$BeneficiaryRegistrationSaveIndividualDetailsEventCopyWithImpl<
                  _$BeneficiaryRegistrationSaveIndividualDetailsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel model) saveAddress,
    required TResult Function(
            HouseholdModel household, DateTime registrationDate)
        saveHouseholdDetails,
    required TResult Function(IndividualModel model, bool isHeadOfHousehold)
        saveIndividualDetails,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)
        addMember,
    required TResult Function(
            HouseholdModel household, AddressModel? addressModel)
        updateHouseholdDetails,
    required TResult Function(IndividualModel model, AddressModel addressModel)
        updateIndividualDetails,
    required TResult Function(
            String userUuid, String projectId, BoundaryModel boundary)
        create,
  }) {
    return saveIndividualDetails(model, isHeadOfHousehold);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel model)? saveAddress,
    TResult? Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult? Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult? Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult? Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult? Function(
            String userUuid, String projectId, BoundaryModel boundary)?
        create,
  }) {
    return saveIndividualDetails?.call(model, isHeadOfHousehold);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel model)? saveAddress,
    TResult Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult Function(String userUuid, String projectId, BoundaryModel boundary)?
        create,
    required TResult orElse(),
  }) {
    if (saveIndividualDetails != null) {
      return saveIndividualDetails(model, isHeadOfHousehold);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationSaveAddressEvent value)
        saveAddress,
    required TResult Function(
            BeneficiaryRegistrationSaveHouseholdDetailsEvent value)
        saveHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationSaveIndividualDetailsEvent value)
        saveIndividualDetails,
    required TResult Function(BeneficiaryRegistrationAddMemberEvent value)
        addMember,
    required TResult Function(
            BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)
        updateHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)
        updateIndividualDetails,
    required TResult Function(BeneficiaryRegistrationCreateEvent value) create,
  }) {
    return saveIndividualDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult? Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult? Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult? Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult? Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult? Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult? Function(BeneficiaryRegistrationCreateEvent value)? create,
  }) {
    return saveIndividualDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult Function(BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult Function(BeneficiaryRegistrationCreateEvent value)? create,
    required TResult orElse(),
  }) {
    if (saveIndividualDetails != null) {
      return saveIndividualDetails(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationSaveIndividualDetailsEvent
    implements BeneficiaryRegistrationEvent {
  const factory BeneficiaryRegistrationSaveIndividualDetailsEvent(
          {required final IndividualModel model,
          final bool isHeadOfHousehold}) =
      _$BeneficiaryRegistrationSaveIndividualDetailsEvent;

  IndividualModel get model;
  bool get isHeadOfHousehold;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationSaveIndividualDetailsEventCopyWith<
          _$BeneficiaryRegistrationSaveIndividualDetailsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationAddMemberEventCopyWith<$Res> {
  factory _$$BeneficiaryRegistrationAddMemberEventCopyWith(
          _$BeneficiaryRegistrationAddMemberEvent value,
          $Res Function(_$BeneficiaryRegistrationAddMemberEvent) then) =
      __$$BeneficiaryRegistrationAddMemberEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {HouseholdModel householdModel,
      IndividualModel individualModel,
      AddressModel addressModel,
      String userUuid});
}

/// @nodoc
class __$$BeneficiaryRegistrationAddMemberEventCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationEventCopyWithImpl<$Res,
        _$BeneficiaryRegistrationAddMemberEvent>
    implements _$$BeneficiaryRegistrationAddMemberEventCopyWith<$Res> {
  __$$BeneficiaryRegistrationAddMemberEventCopyWithImpl(
      _$BeneficiaryRegistrationAddMemberEvent _value,
      $Res Function(_$BeneficiaryRegistrationAddMemberEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? householdModel = null,
    Object? individualModel = null,
    Object? addressModel = null,
    Object? userUuid = null,
  }) {
    return _then(_$BeneficiaryRegistrationAddMemberEvent(
      householdModel: null == householdModel
          ? _value.householdModel
          : householdModel // ignore: cast_nullable_to_non_nullable
              as HouseholdModel,
      individualModel: null == individualModel
          ? _value.individualModel
          : individualModel // ignore: cast_nullable_to_non_nullable
              as IndividualModel,
      addressModel: null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      userUuid: null == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationAddMemberEvent
    implements BeneficiaryRegistrationAddMemberEvent {
  const _$BeneficiaryRegistrationAddMemberEvent(
      {required this.householdModel,
      required this.individualModel,
      required this.addressModel,
      required this.userUuid});

  @override
  final HouseholdModel householdModel;
  @override
  final IndividualModel individualModel;
  @override
  final AddressModel addressModel;
  @override
  final String userUuid;

  @override
  String toString() {
    return 'BeneficiaryRegistrationEvent.addMember(householdModel: $householdModel, individualModel: $individualModel, addressModel: $addressModel, userUuid: $userUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationAddMemberEvent &&
            (identical(other.householdModel, householdModel) ||
                other.householdModel == householdModel) &&
            (identical(other.individualModel, individualModel) ||
                other.individualModel == individualModel) &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, householdModel, individualModel, addressModel, userUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationAddMemberEventCopyWith<
          _$BeneficiaryRegistrationAddMemberEvent>
      get copyWith => __$$BeneficiaryRegistrationAddMemberEventCopyWithImpl<
          _$BeneficiaryRegistrationAddMemberEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel model) saveAddress,
    required TResult Function(
            HouseholdModel household, DateTime registrationDate)
        saveHouseholdDetails,
    required TResult Function(IndividualModel model, bool isHeadOfHousehold)
        saveIndividualDetails,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)
        addMember,
    required TResult Function(
            HouseholdModel household, AddressModel? addressModel)
        updateHouseholdDetails,
    required TResult Function(IndividualModel model, AddressModel addressModel)
        updateIndividualDetails,
    required TResult Function(
            String userUuid, String projectId, BoundaryModel boundary)
        create,
  }) {
    return addMember(householdModel, individualModel, addressModel, userUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel model)? saveAddress,
    TResult? Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult? Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult? Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult? Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult? Function(
            String userUuid, String projectId, BoundaryModel boundary)?
        create,
  }) {
    return addMember?.call(
        householdModel, individualModel, addressModel, userUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel model)? saveAddress,
    TResult Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult Function(String userUuid, String projectId, BoundaryModel boundary)?
        create,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(householdModel, individualModel, addressModel, userUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationSaveAddressEvent value)
        saveAddress,
    required TResult Function(
            BeneficiaryRegistrationSaveHouseholdDetailsEvent value)
        saveHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationSaveIndividualDetailsEvent value)
        saveIndividualDetails,
    required TResult Function(BeneficiaryRegistrationAddMemberEvent value)
        addMember,
    required TResult Function(
            BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)
        updateHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)
        updateIndividualDetails,
    required TResult Function(BeneficiaryRegistrationCreateEvent value) create,
  }) {
    return addMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult? Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult? Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult? Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult? Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult? Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult? Function(BeneficiaryRegistrationCreateEvent value)? create,
  }) {
    return addMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult Function(BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult Function(BeneficiaryRegistrationCreateEvent value)? create,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationAddMemberEvent
    implements BeneficiaryRegistrationEvent {
  const factory BeneficiaryRegistrationAddMemberEvent(
          {required final HouseholdModel householdModel,
          required final IndividualModel individualModel,
          required final AddressModel addressModel,
          required final String userUuid}) =
      _$BeneficiaryRegistrationAddMemberEvent;

  HouseholdModel get householdModel;
  IndividualModel get individualModel;
  AddressModel get addressModel;
  String get userUuid;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationAddMemberEventCopyWith<
          _$BeneficiaryRegistrationAddMemberEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationUpdateHouseholdDetailsEventCopyWith<
    $Res> {
  factory _$$BeneficiaryRegistrationUpdateHouseholdDetailsEventCopyWith(
          _$BeneficiaryRegistrationUpdateHouseholdDetailsEvent value,
          $Res Function(_$BeneficiaryRegistrationUpdateHouseholdDetailsEvent)
              then) =
      __$$BeneficiaryRegistrationUpdateHouseholdDetailsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({HouseholdModel household, AddressModel? addressModel});
}

/// @nodoc
class __$$BeneficiaryRegistrationUpdateHouseholdDetailsEventCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationEventCopyWithImpl<$Res,
        _$BeneficiaryRegistrationUpdateHouseholdDetailsEvent>
    implements
        _$$BeneficiaryRegistrationUpdateHouseholdDetailsEventCopyWith<$Res> {
  __$$BeneficiaryRegistrationUpdateHouseholdDetailsEventCopyWithImpl(
      _$BeneficiaryRegistrationUpdateHouseholdDetailsEvent _value,
      $Res Function(_$BeneficiaryRegistrationUpdateHouseholdDetailsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? household = null,
    Object? addressModel = freezed,
  }) {
    return _then(_$BeneficiaryRegistrationUpdateHouseholdDetailsEvent(
      household: null == household
          ? _value.household
          : household // ignore: cast_nullable_to_non_nullable
              as HouseholdModel,
      addressModel: freezed == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationUpdateHouseholdDetailsEvent
    implements BeneficiaryRegistrationUpdateHouseholdDetailsEvent {
  const _$BeneficiaryRegistrationUpdateHouseholdDetailsEvent(
      {required this.household, this.addressModel});

  @override
  final HouseholdModel household;
  @override
  final AddressModel? addressModel;

  @override
  String toString() {
    return 'BeneficiaryRegistrationEvent.updateHouseholdDetails(household: $household, addressModel: $addressModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationUpdateHouseholdDetailsEvent &&
            (identical(other.household, household) ||
                other.household == household) &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, household, addressModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationUpdateHouseholdDetailsEventCopyWith<
          _$BeneficiaryRegistrationUpdateHouseholdDetailsEvent>
      get copyWith =>
          __$$BeneficiaryRegistrationUpdateHouseholdDetailsEventCopyWithImpl<
                  _$BeneficiaryRegistrationUpdateHouseholdDetailsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel model) saveAddress,
    required TResult Function(
            HouseholdModel household, DateTime registrationDate)
        saveHouseholdDetails,
    required TResult Function(IndividualModel model, bool isHeadOfHousehold)
        saveIndividualDetails,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)
        addMember,
    required TResult Function(
            HouseholdModel household, AddressModel? addressModel)
        updateHouseholdDetails,
    required TResult Function(IndividualModel model, AddressModel addressModel)
        updateIndividualDetails,
    required TResult Function(
            String userUuid, String projectId, BoundaryModel boundary)
        create,
  }) {
    return updateHouseholdDetails(household, addressModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel model)? saveAddress,
    TResult? Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult? Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult? Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult? Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult? Function(
            String userUuid, String projectId, BoundaryModel boundary)?
        create,
  }) {
    return updateHouseholdDetails?.call(household, addressModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel model)? saveAddress,
    TResult Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult Function(String userUuid, String projectId, BoundaryModel boundary)?
        create,
    required TResult orElse(),
  }) {
    if (updateHouseholdDetails != null) {
      return updateHouseholdDetails(household, addressModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationSaveAddressEvent value)
        saveAddress,
    required TResult Function(
            BeneficiaryRegistrationSaveHouseholdDetailsEvent value)
        saveHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationSaveIndividualDetailsEvent value)
        saveIndividualDetails,
    required TResult Function(BeneficiaryRegistrationAddMemberEvent value)
        addMember,
    required TResult Function(
            BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)
        updateHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)
        updateIndividualDetails,
    required TResult Function(BeneficiaryRegistrationCreateEvent value) create,
  }) {
    return updateHouseholdDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult? Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult? Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult? Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult? Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult? Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult? Function(BeneficiaryRegistrationCreateEvent value)? create,
  }) {
    return updateHouseholdDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult Function(BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult Function(BeneficiaryRegistrationCreateEvent value)? create,
    required TResult orElse(),
  }) {
    if (updateHouseholdDetails != null) {
      return updateHouseholdDetails(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationUpdateHouseholdDetailsEvent
    implements BeneficiaryRegistrationEvent {
  const factory BeneficiaryRegistrationUpdateHouseholdDetailsEvent(
          {required final HouseholdModel household,
          final AddressModel? addressModel}) =
      _$BeneficiaryRegistrationUpdateHouseholdDetailsEvent;

  HouseholdModel get household;
  AddressModel? get addressModel;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationUpdateHouseholdDetailsEventCopyWith<
          _$BeneficiaryRegistrationUpdateHouseholdDetailsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationUpdateIndividualDetailsEventCopyWith<
    $Res> {
  factory _$$BeneficiaryRegistrationUpdateIndividualDetailsEventCopyWith(
          _$BeneficiaryRegistrationUpdateIndividualDetailsEvent value,
          $Res Function(_$BeneficiaryRegistrationUpdateIndividualDetailsEvent)
              then) =
      __$$BeneficiaryRegistrationUpdateIndividualDetailsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({IndividualModel model, AddressModel addressModel});
}

/// @nodoc
class __$$BeneficiaryRegistrationUpdateIndividualDetailsEventCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationEventCopyWithImpl<$Res,
        _$BeneficiaryRegistrationUpdateIndividualDetailsEvent>
    implements
        _$$BeneficiaryRegistrationUpdateIndividualDetailsEventCopyWith<$Res> {
  __$$BeneficiaryRegistrationUpdateIndividualDetailsEventCopyWithImpl(
      _$BeneficiaryRegistrationUpdateIndividualDetailsEvent _value,
      $Res Function(_$BeneficiaryRegistrationUpdateIndividualDetailsEvent)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? addressModel = null,
  }) {
    return _then(_$BeneficiaryRegistrationUpdateIndividualDetailsEvent(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as IndividualModel,
      addressModel: null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationUpdateIndividualDetailsEvent
    implements BeneficiaryRegistrationUpdateIndividualDetailsEvent {
  const _$BeneficiaryRegistrationUpdateIndividualDetailsEvent(
      {required this.model, required this.addressModel});

  @override
  final IndividualModel model;
  @override
  final AddressModel addressModel;

  @override
  String toString() {
    return 'BeneficiaryRegistrationEvent.updateIndividualDetails(model: $model, addressModel: $addressModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationUpdateIndividualDetailsEvent &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, addressModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationUpdateIndividualDetailsEventCopyWith<
          _$BeneficiaryRegistrationUpdateIndividualDetailsEvent>
      get copyWith =>
          __$$BeneficiaryRegistrationUpdateIndividualDetailsEventCopyWithImpl<
                  _$BeneficiaryRegistrationUpdateIndividualDetailsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel model) saveAddress,
    required TResult Function(
            HouseholdModel household, DateTime registrationDate)
        saveHouseholdDetails,
    required TResult Function(IndividualModel model, bool isHeadOfHousehold)
        saveIndividualDetails,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)
        addMember,
    required TResult Function(
            HouseholdModel household, AddressModel? addressModel)
        updateHouseholdDetails,
    required TResult Function(IndividualModel model, AddressModel addressModel)
        updateIndividualDetails,
    required TResult Function(
            String userUuid, String projectId, BoundaryModel boundary)
        create,
  }) {
    return updateIndividualDetails(model, addressModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel model)? saveAddress,
    TResult? Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult? Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult? Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult? Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult? Function(
            String userUuid, String projectId, BoundaryModel boundary)?
        create,
  }) {
    return updateIndividualDetails?.call(model, addressModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel model)? saveAddress,
    TResult Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult Function(String userUuid, String projectId, BoundaryModel boundary)?
        create,
    required TResult orElse(),
  }) {
    if (updateIndividualDetails != null) {
      return updateIndividualDetails(model, addressModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationSaveAddressEvent value)
        saveAddress,
    required TResult Function(
            BeneficiaryRegistrationSaveHouseholdDetailsEvent value)
        saveHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationSaveIndividualDetailsEvent value)
        saveIndividualDetails,
    required TResult Function(BeneficiaryRegistrationAddMemberEvent value)
        addMember,
    required TResult Function(
            BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)
        updateHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)
        updateIndividualDetails,
    required TResult Function(BeneficiaryRegistrationCreateEvent value) create,
  }) {
    return updateIndividualDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult? Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult? Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult? Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult? Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult? Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult? Function(BeneficiaryRegistrationCreateEvent value)? create,
  }) {
    return updateIndividualDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult Function(BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult Function(BeneficiaryRegistrationCreateEvent value)? create,
    required TResult orElse(),
  }) {
    if (updateIndividualDetails != null) {
      return updateIndividualDetails(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationUpdateIndividualDetailsEvent
    implements BeneficiaryRegistrationEvent {
  const factory BeneficiaryRegistrationUpdateIndividualDetailsEvent(
          {required final IndividualModel model,
          required final AddressModel addressModel}) =
      _$BeneficiaryRegistrationUpdateIndividualDetailsEvent;

  IndividualModel get model;
  AddressModel get addressModel;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationUpdateIndividualDetailsEventCopyWith<
          _$BeneficiaryRegistrationUpdateIndividualDetailsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationCreateEventCopyWith<$Res> {
  factory _$$BeneficiaryRegistrationCreateEventCopyWith(
          _$BeneficiaryRegistrationCreateEvent value,
          $Res Function(_$BeneficiaryRegistrationCreateEvent) then) =
      __$$BeneficiaryRegistrationCreateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userUuid, String projectId, BoundaryModel boundary});
}

/// @nodoc
class __$$BeneficiaryRegistrationCreateEventCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationEventCopyWithImpl<$Res,
        _$BeneficiaryRegistrationCreateEvent>
    implements _$$BeneficiaryRegistrationCreateEventCopyWith<$Res> {
  __$$BeneficiaryRegistrationCreateEventCopyWithImpl(
      _$BeneficiaryRegistrationCreateEvent _value,
      $Res Function(_$BeneficiaryRegistrationCreateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUuid = null,
    Object? projectId = null,
    Object? boundary = null,
  }) {
    return _then(_$BeneficiaryRegistrationCreateEvent(
      userUuid: null == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      boundary: null == boundary
          ? _value.boundary
          : boundary // ignore: cast_nullable_to_non_nullable
              as BoundaryModel,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationCreateEvent
    implements BeneficiaryRegistrationCreateEvent {
  const _$BeneficiaryRegistrationCreateEvent(
      {required this.userUuid,
      required this.projectId,
      required this.boundary});

  @override
  final String userUuid;
  @override
  final String projectId;
  @override
  final BoundaryModel boundary;

  @override
  String toString() {
    return 'BeneficiaryRegistrationEvent.create(userUuid: $userUuid, projectId: $projectId, boundary: $boundary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationCreateEvent &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.boundary, boundary) ||
                other.boundary == boundary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUuid, projectId, boundary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationCreateEventCopyWith<
          _$BeneficiaryRegistrationCreateEvent>
      get copyWith => __$$BeneficiaryRegistrationCreateEventCopyWithImpl<
          _$BeneficiaryRegistrationCreateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel model) saveAddress,
    required TResult Function(
            HouseholdModel household, DateTime registrationDate)
        saveHouseholdDetails,
    required TResult Function(IndividualModel model, bool isHeadOfHousehold)
        saveIndividualDetails,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)
        addMember,
    required TResult Function(
            HouseholdModel household, AddressModel? addressModel)
        updateHouseholdDetails,
    required TResult Function(IndividualModel model, AddressModel addressModel)
        updateIndividualDetails,
    required TResult Function(
            String userUuid, String projectId, BoundaryModel boundary)
        create,
  }) {
    return create(userUuid, projectId, boundary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel model)? saveAddress,
    TResult? Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult? Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult? Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult? Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult? Function(
            String userUuid, String projectId, BoundaryModel boundary)?
        create,
  }) {
    return create?.call(userUuid, projectId, boundary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel model)? saveAddress,
    TResult Function(HouseholdModel household, DateTime registrationDate)?
        saveHouseholdDetails,
    TResult Function(IndividualModel model, bool isHeadOfHousehold)?
        saveIndividualDetails,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            String userUuid)?
        addMember,
    TResult Function(HouseholdModel household, AddressModel? addressModel)?
        updateHouseholdDetails,
    TResult Function(IndividualModel model, AddressModel addressModel)?
        updateIndividualDetails,
    TResult Function(String userUuid, String projectId, BoundaryModel boundary)?
        create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(userUuid, projectId, boundary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationSaveAddressEvent value)
        saveAddress,
    required TResult Function(
            BeneficiaryRegistrationSaveHouseholdDetailsEvent value)
        saveHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationSaveIndividualDetailsEvent value)
        saveIndividualDetails,
    required TResult Function(BeneficiaryRegistrationAddMemberEvent value)
        addMember,
    required TResult Function(
            BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)
        updateHouseholdDetails,
    required TResult Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)
        updateIndividualDetails,
    required TResult Function(BeneficiaryRegistrationCreateEvent value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult? Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult? Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult? Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult? Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult? Function(
            BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult? Function(BeneficiaryRegistrationCreateEvent value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationSaveAddressEvent value)?
        saveAddress,
    TResult Function(BeneficiaryRegistrationSaveHouseholdDetailsEvent value)?
        saveHouseholdDetails,
    TResult Function(BeneficiaryRegistrationSaveIndividualDetailsEvent value)?
        saveIndividualDetails,
    TResult Function(BeneficiaryRegistrationAddMemberEvent value)? addMember,
    TResult Function(BeneficiaryRegistrationUpdateHouseholdDetailsEvent value)?
        updateHouseholdDetails,
    TResult Function(BeneficiaryRegistrationUpdateIndividualDetailsEvent value)?
        updateIndividualDetails,
    TResult Function(BeneficiaryRegistrationCreateEvent value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationCreateEvent
    implements BeneficiaryRegistrationEvent {
  const factory BeneficiaryRegistrationCreateEvent(
          {required final String userUuid,
          required final String projectId,
          required final BoundaryModel boundary}) =
      _$BeneficiaryRegistrationCreateEvent;

  String get userUuid;
  String get projectId;
  BoundaryModel get boundary;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationCreateEventCopyWith<
          _$BeneficiaryRegistrationCreateEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BeneficiaryRegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)
        create,
    required TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)
        editHousehold,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)
        editIndividual,
    required TResult Function(AddressModel addressModel,
            HouseholdModel householdModel, bool loading)
        addMember,
    required TResult Function(
            bool navigateToRoot, HouseholdModel householdModel)
        persisted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult? Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult? Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult? Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationCreateState value) create,
    required TResult Function(BeneficiaryRegistrationEditHouseholdState value)
        editHousehold,
    required TResult Function(BeneficiaryRegistrationEditIndividualState value)
        editIndividual,
    required TResult Function(BeneficiaryRegistrationAddMemberState value)
        addMember,
    required TResult Function(BeneficiaryRegistrationPersistedState value)
        persisted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationCreateState value)? create,
    TResult? Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult? Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult? Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult? Function(BeneficiaryRegistrationPersistedState value)? persisted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationCreateState value)? create,
    TResult Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult Function(BeneficiaryRegistrationPersistedState value)? persisted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryRegistrationStateCopyWith<$Res> {
  factory $BeneficiaryRegistrationStateCopyWith(
          BeneficiaryRegistrationState value,
          $Res Function(BeneficiaryRegistrationState) then) =
      _$BeneficiaryRegistrationStateCopyWithImpl<$Res,
          BeneficiaryRegistrationState>;
}

/// @nodoc
class _$BeneficiaryRegistrationStateCopyWithImpl<$Res,
        $Val extends BeneficiaryRegistrationState>
    implements $BeneficiaryRegistrationStateCopyWith<$Res> {
  _$BeneficiaryRegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationCreateStateCopyWith<$Res> {
  factory _$$BeneficiaryRegistrationCreateStateCopyWith(
          _$BeneficiaryRegistrationCreateState value,
          $Res Function(_$BeneficiaryRegistrationCreateState) then) =
      __$$BeneficiaryRegistrationCreateStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AddressModel? addressModel,
      HouseholdModel? householdModel,
      IndividualModel? individualModel,
      DateTime? registrationDate,
      String? searchQuery,
      bool loading,
      bool isHeadOfHousehold});
}

/// @nodoc
class __$$BeneficiaryRegistrationCreateStateCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationStateCopyWithImpl<$Res,
        _$BeneficiaryRegistrationCreateState>
    implements _$$BeneficiaryRegistrationCreateStateCopyWith<$Res> {
  __$$BeneficiaryRegistrationCreateStateCopyWithImpl(
      _$BeneficiaryRegistrationCreateState _value,
      $Res Function(_$BeneficiaryRegistrationCreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = freezed,
    Object? householdModel = freezed,
    Object? individualModel = freezed,
    Object? registrationDate = freezed,
    Object? searchQuery = freezed,
    Object? loading = null,
    Object? isHeadOfHousehold = null,
  }) {
    return _then(_$BeneficiaryRegistrationCreateState(
      addressModel: freezed == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      householdModel: freezed == householdModel
          ? _value.householdModel
          : householdModel // ignore: cast_nullable_to_non_nullable
              as HouseholdModel?,
      individualModel: freezed == individualModel
          ? _value.individualModel
          : individualModel // ignore: cast_nullable_to_non_nullable
              as IndividualModel?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isHeadOfHousehold: null == isHeadOfHousehold
          ? _value.isHeadOfHousehold
          : isHeadOfHousehold // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationCreateState
    implements BeneficiaryRegistrationCreateState {
  const _$BeneficiaryRegistrationCreateState(
      {this.addressModel,
      this.householdModel,
      this.individualModel,
      this.registrationDate,
      this.searchQuery,
      this.loading = false,
      this.isHeadOfHousehold = false});

  @override
  final AddressModel? addressModel;
  @override
  final HouseholdModel? householdModel;
  @override
  final IndividualModel? individualModel;
  @override
  final DateTime? registrationDate;
  @override
  final String? searchQuery;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool isHeadOfHousehold;

  @override
  String toString() {
    return 'BeneficiaryRegistrationState.create(addressModel: $addressModel, householdModel: $householdModel, individualModel: $individualModel, registrationDate: $registrationDate, searchQuery: $searchQuery, loading: $loading, isHeadOfHousehold: $isHeadOfHousehold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationCreateState &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.householdModel, householdModel) ||
                other.householdModel == householdModel) &&
            (identical(other.individualModel, individualModel) ||
                other.individualModel == individualModel) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isHeadOfHousehold, isHeadOfHousehold) ||
                other.isHeadOfHousehold == isHeadOfHousehold));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressModel,
      householdModel,
      individualModel,
      registrationDate,
      searchQuery,
      loading,
      isHeadOfHousehold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationCreateStateCopyWith<
          _$BeneficiaryRegistrationCreateState>
      get copyWith => __$$BeneficiaryRegistrationCreateStateCopyWithImpl<
          _$BeneficiaryRegistrationCreateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)
        create,
    required TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)
        editHousehold,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)
        editIndividual,
    required TResult Function(AddressModel addressModel,
            HouseholdModel householdModel, bool loading)
        addMember,
    required TResult Function(
            bool navigateToRoot, HouseholdModel householdModel)
        persisted,
  }) {
    return create(addressModel, householdModel, individualModel,
        registrationDate, searchQuery, loading, isHeadOfHousehold);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult? Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult? Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult? Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
  }) {
    return create?.call(addressModel, householdModel, individualModel,
        registrationDate, searchQuery, loading, isHeadOfHousehold);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(addressModel, householdModel, individualModel,
          registrationDate, searchQuery, loading, isHeadOfHousehold);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationCreateState value) create,
    required TResult Function(BeneficiaryRegistrationEditHouseholdState value)
        editHousehold,
    required TResult Function(BeneficiaryRegistrationEditIndividualState value)
        editIndividual,
    required TResult Function(BeneficiaryRegistrationAddMemberState value)
        addMember,
    required TResult Function(BeneficiaryRegistrationPersistedState value)
        persisted,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationCreateState value)? create,
    TResult? Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult? Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult? Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult? Function(BeneficiaryRegistrationPersistedState value)? persisted,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationCreateState value)? create,
    TResult Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult Function(BeneficiaryRegistrationPersistedState value)? persisted,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationCreateState
    implements BeneficiaryRegistrationState {
  const factory BeneficiaryRegistrationCreateState(
      {final AddressModel? addressModel,
      final HouseholdModel? householdModel,
      final IndividualModel? individualModel,
      final DateTime? registrationDate,
      final String? searchQuery,
      final bool loading,
      final bool isHeadOfHousehold}) = _$BeneficiaryRegistrationCreateState;

  AddressModel? get addressModel;
  HouseholdModel? get householdModel;
  IndividualModel? get individualModel;
  DateTime? get registrationDate;
  String? get searchQuery;
  bool get loading;
  bool get isHeadOfHousehold;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationCreateStateCopyWith<
          _$BeneficiaryRegistrationCreateState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationEditHouseholdStateCopyWith<$Res> {
  factory _$$BeneficiaryRegistrationEditHouseholdStateCopyWith(
          _$BeneficiaryRegistrationEditHouseholdState value,
          $Res Function(_$BeneficiaryRegistrationEditHouseholdState) then) =
      __$$BeneficiaryRegistrationEditHouseholdStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AddressModel addressModel,
      HouseholdModel householdModel,
      List<IndividualModel> individualModel,
      DateTime registrationDate,
      bool loading});
}

/// @nodoc
class __$$BeneficiaryRegistrationEditHouseholdStateCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationStateCopyWithImpl<$Res,
        _$BeneficiaryRegistrationEditHouseholdState>
    implements _$$BeneficiaryRegistrationEditHouseholdStateCopyWith<$Res> {
  __$$BeneficiaryRegistrationEditHouseholdStateCopyWithImpl(
      _$BeneficiaryRegistrationEditHouseholdState _value,
      $Res Function(_$BeneficiaryRegistrationEditHouseholdState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
    Object? householdModel = null,
    Object? individualModel = null,
    Object? registrationDate = null,
    Object? loading = null,
  }) {
    return _then(_$BeneficiaryRegistrationEditHouseholdState(
      addressModel: null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      householdModel: null == householdModel
          ? _value.householdModel
          : householdModel // ignore: cast_nullable_to_non_nullable
              as HouseholdModel,
      individualModel: null == individualModel
          ? _value._individualModel
          : individualModel // ignore: cast_nullable_to_non_nullable
              as List<IndividualModel>,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationEditHouseholdState
    implements BeneficiaryRegistrationEditHouseholdState {
  const _$BeneficiaryRegistrationEditHouseholdState(
      {required this.addressModel,
      required this.householdModel,
      required final List<IndividualModel> individualModel,
      required this.registrationDate,
      this.loading = false})
      : _individualModel = individualModel;

  @override
  final AddressModel addressModel;
  @override
  final HouseholdModel householdModel;
  final List<IndividualModel> _individualModel;
  @override
  List<IndividualModel> get individualModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_individualModel);
  }

  @override
  final DateTime registrationDate;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'BeneficiaryRegistrationState.editHousehold(addressModel: $addressModel, householdModel: $householdModel, individualModel: $individualModel, registrationDate: $registrationDate, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationEditHouseholdState &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.householdModel, householdModel) ||
                other.householdModel == householdModel) &&
            const DeepCollectionEquality()
                .equals(other._individualModel, _individualModel) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressModel,
      householdModel,
      const DeepCollectionEquality().hash(_individualModel),
      registrationDate,
      loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationEditHouseholdStateCopyWith<
          _$BeneficiaryRegistrationEditHouseholdState>
      get copyWith => __$$BeneficiaryRegistrationEditHouseholdStateCopyWithImpl<
          _$BeneficiaryRegistrationEditHouseholdState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)
        create,
    required TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)
        editHousehold,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)
        editIndividual,
    required TResult Function(AddressModel addressModel,
            HouseholdModel householdModel, bool loading)
        addMember,
    required TResult Function(
            bool navigateToRoot, HouseholdModel householdModel)
        persisted,
  }) {
    return editHousehold(addressModel, householdModel, individualModel,
        registrationDate, loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult? Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult? Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult? Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
  }) {
    return editHousehold?.call(addressModel, householdModel, individualModel,
        registrationDate, loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
    required TResult orElse(),
  }) {
    if (editHousehold != null) {
      return editHousehold(addressModel, householdModel, individualModel,
          registrationDate, loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationCreateState value) create,
    required TResult Function(BeneficiaryRegistrationEditHouseholdState value)
        editHousehold,
    required TResult Function(BeneficiaryRegistrationEditIndividualState value)
        editIndividual,
    required TResult Function(BeneficiaryRegistrationAddMemberState value)
        addMember,
    required TResult Function(BeneficiaryRegistrationPersistedState value)
        persisted,
  }) {
    return editHousehold(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationCreateState value)? create,
    TResult? Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult? Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult? Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult? Function(BeneficiaryRegistrationPersistedState value)? persisted,
  }) {
    return editHousehold?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationCreateState value)? create,
    TResult Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult Function(BeneficiaryRegistrationPersistedState value)? persisted,
    required TResult orElse(),
  }) {
    if (editHousehold != null) {
      return editHousehold(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationEditHouseholdState
    implements BeneficiaryRegistrationState {
  const factory BeneficiaryRegistrationEditHouseholdState(
      {required final AddressModel addressModel,
      required final HouseholdModel householdModel,
      required final List<IndividualModel> individualModel,
      required final DateTime registrationDate,
      final bool loading}) = _$BeneficiaryRegistrationEditHouseholdState;

  AddressModel get addressModel;
  HouseholdModel get householdModel;
  List<IndividualModel> get individualModel;
  DateTime get registrationDate;
  bool get loading;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationEditHouseholdStateCopyWith<
          _$BeneficiaryRegistrationEditHouseholdState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationEditIndividualStateCopyWith<$Res> {
  factory _$$BeneficiaryRegistrationEditIndividualStateCopyWith(
          _$BeneficiaryRegistrationEditIndividualState value,
          $Res Function(_$BeneficiaryRegistrationEditIndividualState) then) =
      __$$BeneficiaryRegistrationEditIndividualStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {HouseholdModel householdModel,
      IndividualModel individualModel,
      AddressModel addressModel,
      bool loading});
}

/// @nodoc
class __$$BeneficiaryRegistrationEditIndividualStateCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationStateCopyWithImpl<$Res,
        _$BeneficiaryRegistrationEditIndividualState>
    implements _$$BeneficiaryRegistrationEditIndividualStateCopyWith<$Res> {
  __$$BeneficiaryRegistrationEditIndividualStateCopyWithImpl(
      _$BeneficiaryRegistrationEditIndividualState _value,
      $Res Function(_$BeneficiaryRegistrationEditIndividualState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? householdModel = null,
    Object? individualModel = null,
    Object? addressModel = null,
    Object? loading = null,
  }) {
    return _then(_$BeneficiaryRegistrationEditIndividualState(
      householdModel: null == householdModel
          ? _value.householdModel
          : householdModel // ignore: cast_nullable_to_non_nullable
              as HouseholdModel,
      individualModel: null == individualModel
          ? _value.individualModel
          : individualModel // ignore: cast_nullable_to_non_nullable
              as IndividualModel,
      addressModel: null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationEditIndividualState
    implements BeneficiaryRegistrationEditIndividualState {
  const _$BeneficiaryRegistrationEditIndividualState(
      {required this.householdModel,
      required this.individualModel,
      required this.addressModel,
      this.loading = false});

  @override
  final HouseholdModel householdModel;
  @override
  final IndividualModel individualModel;
  @override
  final AddressModel addressModel;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'BeneficiaryRegistrationState.editIndividual(householdModel: $householdModel, individualModel: $individualModel, addressModel: $addressModel, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationEditIndividualState &&
            (identical(other.householdModel, householdModel) ||
                other.householdModel == householdModel) &&
            (identical(other.individualModel, individualModel) ||
                other.individualModel == individualModel) &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, householdModel, individualModel, addressModel, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationEditIndividualStateCopyWith<
          _$BeneficiaryRegistrationEditIndividualState>
      get copyWith =>
          __$$BeneficiaryRegistrationEditIndividualStateCopyWithImpl<
              _$BeneficiaryRegistrationEditIndividualState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)
        create,
    required TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)
        editHousehold,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)
        editIndividual,
    required TResult Function(AddressModel addressModel,
            HouseholdModel householdModel, bool loading)
        addMember,
    required TResult Function(
            bool navigateToRoot, HouseholdModel householdModel)
        persisted,
  }) {
    return editIndividual(
        householdModel, individualModel, addressModel, loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult? Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult? Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult? Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
  }) {
    return editIndividual?.call(
        householdModel, individualModel, addressModel, loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
    required TResult orElse(),
  }) {
    if (editIndividual != null) {
      return editIndividual(
          householdModel, individualModel, addressModel, loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationCreateState value) create,
    required TResult Function(BeneficiaryRegistrationEditHouseholdState value)
        editHousehold,
    required TResult Function(BeneficiaryRegistrationEditIndividualState value)
        editIndividual,
    required TResult Function(BeneficiaryRegistrationAddMemberState value)
        addMember,
    required TResult Function(BeneficiaryRegistrationPersistedState value)
        persisted,
  }) {
    return editIndividual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationCreateState value)? create,
    TResult? Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult? Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult? Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult? Function(BeneficiaryRegistrationPersistedState value)? persisted,
  }) {
    return editIndividual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationCreateState value)? create,
    TResult Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult Function(BeneficiaryRegistrationPersistedState value)? persisted,
    required TResult orElse(),
  }) {
    if (editIndividual != null) {
      return editIndividual(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationEditIndividualState
    implements BeneficiaryRegistrationState {
  const factory BeneficiaryRegistrationEditIndividualState(
      {required final HouseholdModel householdModel,
      required final IndividualModel individualModel,
      required final AddressModel addressModel,
      final bool loading}) = _$BeneficiaryRegistrationEditIndividualState;

  HouseholdModel get householdModel;
  IndividualModel get individualModel;
  AddressModel get addressModel;
  bool get loading;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationEditIndividualStateCopyWith<
          _$BeneficiaryRegistrationEditIndividualState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationAddMemberStateCopyWith<$Res> {
  factory _$$BeneficiaryRegistrationAddMemberStateCopyWith(
          _$BeneficiaryRegistrationAddMemberState value,
          $Res Function(_$BeneficiaryRegistrationAddMemberState) then) =
      __$$BeneficiaryRegistrationAddMemberStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AddressModel addressModel, HouseholdModel householdModel, bool loading});
}

/// @nodoc
class __$$BeneficiaryRegistrationAddMemberStateCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationStateCopyWithImpl<$Res,
        _$BeneficiaryRegistrationAddMemberState>
    implements _$$BeneficiaryRegistrationAddMemberStateCopyWith<$Res> {
  __$$BeneficiaryRegistrationAddMemberStateCopyWithImpl(
      _$BeneficiaryRegistrationAddMemberState _value,
      $Res Function(_$BeneficiaryRegistrationAddMemberState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
    Object? householdModel = null,
    Object? loading = null,
  }) {
    return _then(_$BeneficiaryRegistrationAddMemberState(
      addressModel: null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      householdModel: null == householdModel
          ? _value.householdModel
          : householdModel // ignore: cast_nullable_to_non_nullable
              as HouseholdModel,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationAddMemberState
    implements BeneficiaryRegistrationAddMemberState {
  const _$BeneficiaryRegistrationAddMemberState(
      {required this.addressModel,
      required this.householdModel,
      this.loading = false});

  @override
  final AddressModel addressModel;
  @override
  final HouseholdModel householdModel;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'BeneficiaryRegistrationState.addMember(addressModel: $addressModel, householdModel: $householdModel, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationAddMemberState &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.householdModel, householdModel) ||
                other.householdModel == householdModel) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, addressModel, householdModel, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationAddMemberStateCopyWith<
          _$BeneficiaryRegistrationAddMemberState>
      get copyWith => __$$BeneficiaryRegistrationAddMemberStateCopyWithImpl<
          _$BeneficiaryRegistrationAddMemberState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)
        create,
    required TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)
        editHousehold,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)
        editIndividual,
    required TResult Function(AddressModel addressModel,
            HouseholdModel householdModel, bool loading)
        addMember,
    required TResult Function(
            bool navigateToRoot, HouseholdModel householdModel)
        persisted,
  }) {
    return addMember(addressModel, householdModel, loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult? Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult? Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult? Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
  }) {
    return addMember?.call(addressModel, householdModel, loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(addressModel, householdModel, loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationCreateState value) create,
    required TResult Function(BeneficiaryRegistrationEditHouseholdState value)
        editHousehold,
    required TResult Function(BeneficiaryRegistrationEditIndividualState value)
        editIndividual,
    required TResult Function(BeneficiaryRegistrationAddMemberState value)
        addMember,
    required TResult Function(BeneficiaryRegistrationPersistedState value)
        persisted,
  }) {
    return addMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationCreateState value)? create,
    TResult? Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult? Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult? Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult? Function(BeneficiaryRegistrationPersistedState value)? persisted,
  }) {
    return addMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationCreateState value)? create,
    TResult Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult Function(BeneficiaryRegistrationPersistedState value)? persisted,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationAddMemberState
    implements BeneficiaryRegistrationState {
  const factory BeneficiaryRegistrationAddMemberState(
      {required final AddressModel addressModel,
      required final HouseholdModel householdModel,
      final bool loading}) = _$BeneficiaryRegistrationAddMemberState;

  AddressModel get addressModel;
  HouseholdModel get householdModel;
  bool get loading;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationAddMemberStateCopyWith<
          _$BeneficiaryRegistrationAddMemberState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeneficiaryRegistrationPersistedStateCopyWith<$Res> {
  factory _$$BeneficiaryRegistrationPersistedStateCopyWith(
          _$BeneficiaryRegistrationPersistedState value,
          $Res Function(_$BeneficiaryRegistrationPersistedState) then) =
      __$$BeneficiaryRegistrationPersistedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool navigateToRoot, HouseholdModel householdModel});
}

/// @nodoc
class __$$BeneficiaryRegistrationPersistedStateCopyWithImpl<$Res>
    extends _$BeneficiaryRegistrationStateCopyWithImpl<$Res,
        _$BeneficiaryRegistrationPersistedState>
    implements _$$BeneficiaryRegistrationPersistedStateCopyWith<$Res> {
  __$$BeneficiaryRegistrationPersistedStateCopyWithImpl(
      _$BeneficiaryRegistrationPersistedState _value,
      $Res Function(_$BeneficiaryRegistrationPersistedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateToRoot = null,
    Object? householdModel = null,
  }) {
    return _then(_$BeneficiaryRegistrationPersistedState(
      navigateToRoot: null == navigateToRoot
          ? _value.navigateToRoot
          : navigateToRoot // ignore: cast_nullable_to_non_nullable
              as bool,
      householdModel: null == householdModel
          ? _value.householdModel
          : householdModel // ignore: cast_nullable_to_non_nullable
              as HouseholdModel,
    ));
  }
}

/// @nodoc

class _$BeneficiaryRegistrationPersistedState
    implements BeneficiaryRegistrationPersistedState {
  const _$BeneficiaryRegistrationPersistedState(
      {this.navigateToRoot = true, required this.householdModel});

  @override
  @JsonKey()
  final bool navigateToRoot;
  @override
  final HouseholdModel householdModel;

  @override
  String toString() {
    return 'BeneficiaryRegistrationState.persisted(navigateToRoot: $navigateToRoot, householdModel: $householdModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryRegistrationPersistedState &&
            (identical(other.navigateToRoot, navigateToRoot) ||
                other.navigateToRoot == navigateToRoot) &&
            (identical(other.householdModel, householdModel) ||
                other.householdModel == householdModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigateToRoot, householdModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryRegistrationPersistedStateCopyWith<
          _$BeneficiaryRegistrationPersistedState>
      get copyWith => __$$BeneficiaryRegistrationPersistedStateCopyWithImpl<
          _$BeneficiaryRegistrationPersistedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)
        create,
    required TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)
        editHousehold,
    required TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)
        editIndividual,
    required TResult Function(AddressModel addressModel,
            HouseholdModel householdModel, bool loading)
        addMember,
    required TResult Function(
            bool navigateToRoot, HouseholdModel householdModel)
        persisted,
  }) {
    return persisted(navigateToRoot, householdModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult? Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult? Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult? Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult? Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
  }) {
    return persisted?.call(navigateToRoot, householdModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AddressModel? addressModel,
            HouseholdModel? householdModel,
            IndividualModel? individualModel,
            DateTime? registrationDate,
            String? searchQuery,
            bool loading,
            bool isHeadOfHousehold)?
        create,
    TResult Function(
            AddressModel addressModel,
            HouseholdModel householdModel,
            List<IndividualModel> individualModel,
            DateTime registrationDate,
            bool loading)?
        editHousehold,
    TResult Function(
            HouseholdModel householdModel,
            IndividualModel individualModel,
            AddressModel addressModel,
            bool loading)?
        editIndividual,
    TResult Function(AddressModel addressModel, HouseholdModel householdModel,
            bool loading)?
        addMember,
    TResult Function(bool navigateToRoot, HouseholdModel householdModel)?
        persisted,
    required TResult orElse(),
  }) {
    if (persisted != null) {
      return persisted(navigateToRoot, householdModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BeneficiaryRegistrationCreateState value) create,
    required TResult Function(BeneficiaryRegistrationEditHouseholdState value)
        editHousehold,
    required TResult Function(BeneficiaryRegistrationEditIndividualState value)
        editIndividual,
    required TResult Function(BeneficiaryRegistrationAddMemberState value)
        addMember,
    required TResult Function(BeneficiaryRegistrationPersistedState value)
        persisted,
  }) {
    return persisted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BeneficiaryRegistrationCreateState value)? create,
    TResult? Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult? Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult? Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult? Function(BeneficiaryRegistrationPersistedState value)? persisted,
  }) {
    return persisted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BeneficiaryRegistrationCreateState value)? create,
    TResult Function(BeneficiaryRegistrationEditHouseholdState value)?
        editHousehold,
    TResult Function(BeneficiaryRegistrationEditIndividualState value)?
        editIndividual,
    TResult Function(BeneficiaryRegistrationAddMemberState value)? addMember,
    TResult Function(BeneficiaryRegistrationPersistedState value)? persisted,
    required TResult orElse(),
  }) {
    if (persisted != null) {
      return persisted(this);
    }
    return orElse();
  }
}

abstract class BeneficiaryRegistrationPersistedState
    implements BeneficiaryRegistrationState {
  const factory BeneficiaryRegistrationPersistedState(
          {final bool navigateToRoot,
          required final HouseholdModel householdModel}) =
      _$BeneficiaryRegistrationPersistedState;

  bool get navigateToRoot;
  HouseholdModel get householdModel;
  @JsonKey(ignore: true)
  _$$BeneficiaryRegistrationPersistedStateCopyWith<
          _$BeneficiaryRegistrationPersistedState>
      get copyWith => throw _privateConstructorUsedError;
}
