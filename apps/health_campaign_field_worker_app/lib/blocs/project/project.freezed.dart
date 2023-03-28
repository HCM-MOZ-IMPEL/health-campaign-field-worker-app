// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(ProjectModel model) selectProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(ProjectModel model)? selectProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(ProjectModel model)? selectProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectInitializeEvent value) initialize,
    required TResult Function(ProjectSelectProjectEvent value) selectProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectInitializeEvent value)? initialize,
    TResult? Function(ProjectSelectProjectEvent value)? selectProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectInitializeEvent value)? initialize,
    TResult Function(ProjectSelectProjectEvent value)? selectProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEventCopyWith<$Res> {
  factory $ProjectEventCopyWith(
          ProjectEvent value, $Res Function(ProjectEvent) then) =
      _$ProjectEventCopyWithImpl<$Res, ProjectEvent>;
}

/// @nodoc
class _$ProjectEventCopyWithImpl<$Res, $Val extends ProjectEvent>
    implements $ProjectEventCopyWith<$Res> {
  _$ProjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectInitializeEventCopyWith<$Res> {
  factory _$$ProjectInitializeEventCopyWith(_$ProjectInitializeEvent value,
          $Res Function(_$ProjectInitializeEvent) then) =
      __$$ProjectInitializeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectInitializeEventCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res, _$ProjectInitializeEvent>
    implements _$$ProjectInitializeEventCopyWith<$Res> {
  __$$ProjectInitializeEventCopyWithImpl(_$ProjectInitializeEvent _value,
      $Res Function(_$ProjectInitializeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectInitializeEvent implements ProjectInitializeEvent {
  const _$ProjectInitializeEvent();

  @override
  String toString() {
    return 'ProjectEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectInitializeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(ProjectModel model) selectProject,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(ProjectModel model)? selectProject,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(ProjectModel model)? selectProject,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectInitializeEvent value) initialize,
    required TResult Function(ProjectSelectProjectEvent value) selectProject,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectInitializeEvent value)? initialize,
    TResult? Function(ProjectSelectProjectEvent value)? selectProject,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectInitializeEvent value)? initialize,
    TResult Function(ProjectSelectProjectEvent value)? selectProject,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class ProjectInitializeEvent implements ProjectEvent {
  const factory ProjectInitializeEvent() = _$ProjectInitializeEvent;
}

/// @nodoc
abstract class _$$ProjectSelectProjectEventCopyWith<$Res> {
  factory _$$ProjectSelectProjectEventCopyWith(
          _$ProjectSelectProjectEvent value,
          $Res Function(_$ProjectSelectProjectEvent) then) =
      __$$ProjectSelectProjectEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectModel model});
}

/// @nodoc
class __$$ProjectSelectProjectEventCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res, _$ProjectSelectProjectEvent>
    implements _$$ProjectSelectProjectEventCopyWith<$Res> {
  __$$ProjectSelectProjectEventCopyWithImpl(_$ProjectSelectProjectEvent _value,
      $Res Function(_$ProjectSelectProjectEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ProjectSelectProjectEvent(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ProjectModel,
    ));
  }
}

/// @nodoc

class _$ProjectSelectProjectEvent implements ProjectSelectProjectEvent {
  const _$ProjectSelectProjectEvent(this.model);

  @override
  final ProjectModel model;

  @override
  String toString() {
    return 'ProjectEvent.selectProject(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSelectProjectEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSelectProjectEventCopyWith<_$ProjectSelectProjectEvent>
      get copyWith => __$$ProjectSelectProjectEventCopyWithImpl<
          _$ProjectSelectProjectEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(ProjectModel model) selectProject,
  }) {
    return selectProject(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(ProjectModel model)? selectProject,
  }) {
    return selectProject?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(ProjectModel model)? selectProject,
    required TResult orElse(),
  }) {
    if (selectProject != null) {
      return selectProject(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectInitializeEvent value) initialize,
    required TResult Function(ProjectSelectProjectEvent value) selectProject,
  }) {
    return selectProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectInitializeEvent value)? initialize,
    TResult? Function(ProjectSelectProjectEvent value)? selectProject,
  }) {
    return selectProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectInitializeEvent value)? initialize,
    TResult Function(ProjectSelectProjectEvent value)? selectProject,
    required TResult orElse(),
  }) {
    if (selectProject != null) {
      return selectProject(this);
    }
    return orElse();
  }
}

abstract class ProjectSelectProjectEvent implements ProjectEvent {
  const factory ProjectSelectProjectEvent(final ProjectModel model) =
      _$ProjectSelectProjectEvent;

  ProjectModel get model;
  @JsonKey(ignore: true)
  _$$ProjectSelectProjectEventCopyWith<_$ProjectSelectProjectEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)
        fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)?
        fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)?
        fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUninitializedState value) uninitialized,
    required TResult Function(ProjectLoadingState value) loading,
    required TResult Function(ProjectsEmptyState value) empty,
    required TResult Function(ProjectSelectionFetchedState value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUninitializedState value)? uninitialized,
    TResult? Function(ProjectLoadingState value)? loading,
    TResult? Function(ProjectsEmptyState value)? empty,
    TResult? Function(ProjectSelectionFetchedState value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUninitializedState value)? uninitialized,
    TResult Function(ProjectLoadingState value)? loading,
    TResult Function(ProjectsEmptyState value)? empty,
    TResult Function(ProjectSelectionFetchedState value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res, ProjectState>;
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res, $Val extends ProjectState>
    implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectUninitializedStateCopyWith<$Res> {
  factory _$$ProjectUninitializedStateCopyWith(
          _$ProjectUninitializedState value,
          $Res Function(_$ProjectUninitializedState) then) =
      __$$ProjectUninitializedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectUninitializedStateCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectUninitializedState>
    implements _$$ProjectUninitializedStateCopyWith<$Res> {
  __$$ProjectUninitializedStateCopyWithImpl(_$ProjectUninitializedState _value,
      $Res Function(_$ProjectUninitializedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectUninitializedState implements ProjectUninitializedState {
  const _$ProjectUninitializedState();

  @override
  String toString() {
    return 'ProjectState.uninitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectUninitializedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)
        fetched,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)?
        fetched,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)?
        fetched,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUninitializedState value) uninitialized,
    required TResult Function(ProjectLoadingState value) loading,
    required TResult Function(ProjectsEmptyState value) empty,
    required TResult Function(ProjectSelectionFetchedState value) fetched,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUninitializedState value)? uninitialized,
    TResult? Function(ProjectLoadingState value)? loading,
    TResult? Function(ProjectsEmptyState value)? empty,
    TResult? Function(ProjectSelectionFetchedState value)? fetched,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUninitializedState value)? uninitialized,
    TResult Function(ProjectLoadingState value)? loading,
    TResult Function(ProjectsEmptyState value)? empty,
    TResult Function(ProjectSelectionFetchedState value)? fetched,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class ProjectUninitializedState implements ProjectState {
  const factory ProjectUninitializedState() = _$ProjectUninitializedState;
}

/// @nodoc
abstract class _$$ProjectLoadingStateCopyWith<$Res> {
  factory _$$ProjectLoadingStateCopyWith(_$ProjectLoadingState value,
          $Res Function(_$ProjectLoadingState) then) =
      __$$ProjectLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectLoadingStateCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectLoadingState>
    implements _$$ProjectLoadingStateCopyWith<$Res> {
  __$$ProjectLoadingStateCopyWithImpl(
      _$ProjectLoadingState _value, $Res Function(_$ProjectLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectLoadingState implements ProjectLoadingState {
  const _$ProjectLoadingState();

  @override
  String toString() {
    return 'ProjectState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)
        fetched,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)?
        fetched,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)?
        fetched,
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
    required TResult Function(ProjectUninitializedState value) uninitialized,
    required TResult Function(ProjectLoadingState value) loading,
    required TResult Function(ProjectsEmptyState value) empty,
    required TResult Function(ProjectSelectionFetchedState value) fetched,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUninitializedState value)? uninitialized,
    TResult? Function(ProjectLoadingState value)? loading,
    TResult? Function(ProjectsEmptyState value)? empty,
    TResult? Function(ProjectSelectionFetchedState value)? fetched,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUninitializedState value)? uninitialized,
    TResult Function(ProjectLoadingState value)? loading,
    TResult Function(ProjectsEmptyState value)? empty,
    TResult Function(ProjectSelectionFetchedState value)? fetched,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProjectLoadingState implements ProjectState {
  const factory ProjectLoadingState() = _$ProjectLoadingState;
}

/// @nodoc
abstract class _$$ProjectsEmptyStateCopyWith<$Res> {
  factory _$$ProjectsEmptyStateCopyWith(_$ProjectsEmptyState value,
          $Res Function(_$ProjectsEmptyState) then) =
      __$$ProjectsEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectsEmptyStateCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectsEmptyState>
    implements _$$ProjectsEmptyStateCopyWith<$Res> {
  __$$ProjectsEmptyStateCopyWithImpl(
      _$ProjectsEmptyState _value, $Res Function(_$ProjectsEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectsEmptyState implements ProjectsEmptyState {
  const _$ProjectsEmptyState();

  @override
  String toString() {
    return 'ProjectState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectsEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)
        fetched,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)?
        fetched,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)?
        fetched,
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
    required TResult Function(ProjectUninitializedState value) uninitialized,
    required TResult Function(ProjectLoadingState value) loading,
    required TResult Function(ProjectsEmptyState value) empty,
    required TResult Function(ProjectSelectionFetchedState value) fetched,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUninitializedState value)? uninitialized,
    TResult? Function(ProjectLoadingState value)? loading,
    TResult? Function(ProjectsEmptyState value)? empty,
    TResult? Function(ProjectSelectionFetchedState value)? fetched,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUninitializedState value)? uninitialized,
    TResult Function(ProjectLoadingState value)? loading,
    TResult Function(ProjectsEmptyState value)? empty,
    TResult Function(ProjectSelectionFetchedState value)? fetched,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ProjectsEmptyState implements ProjectState {
  const factory ProjectsEmptyState() = _$ProjectsEmptyState;
}

/// @nodoc
abstract class _$$ProjectSelectionFetchedStateCopyWith<$Res> {
  factory _$$ProjectSelectionFetchedStateCopyWith(
          _$ProjectSelectionFetchedState value,
          $Res Function(_$ProjectSelectionFetchedState) then) =
      __$$ProjectSelectionFetchedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProjectModel> projects, ProjectModel? selectedProject});
}

/// @nodoc
class __$$ProjectSelectionFetchedStateCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectSelectionFetchedState>
    implements _$$ProjectSelectionFetchedStateCopyWith<$Res> {
  __$$ProjectSelectionFetchedStateCopyWithImpl(
      _$ProjectSelectionFetchedState _value,
      $Res Function(_$ProjectSelectionFetchedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? selectedProject = freezed,
  }) {
    return _then(_$ProjectSelectionFetchedState(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
      selectedProject: freezed == selectedProject
          ? _value.selectedProject
          : selectedProject // ignore: cast_nullable_to_non_nullable
              as ProjectModel?,
    ));
  }
}

/// @nodoc

class _$ProjectSelectionFetchedState implements ProjectSelectionFetchedState {
  const _$ProjectSelectionFetchedState(
      {required final List<ProjectModel> projects, this.selectedProject})
      : _projects = projects;

  final List<ProjectModel> _projects;
  @override
  List<ProjectModel> get projects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  final ProjectModel? selectedProject;

  @override
  String toString() {
    return 'ProjectState.fetched(projects: $projects, selectedProject: $selectedProject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSelectionFetchedState &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.selectedProject, selectedProject) ||
                other.selectedProject == selectedProject));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_projects), selectedProject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSelectionFetchedStateCopyWith<_$ProjectSelectionFetchedState>
      get copyWith => __$$ProjectSelectionFetchedStateCopyWithImpl<
          _$ProjectSelectionFetchedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)
        fetched,
  }) {
    return fetched(projects, selectedProject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)?
        fetched,
  }) {
    return fetched?.call(projects, selectedProject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(
            List<ProjectModel> projects, ProjectModel? selectedProject)?
        fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(projects, selectedProject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUninitializedState value) uninitialized,
    required TResult Function(ProjectLoadingState value) loading,
    required TResult Function(ProjectsEmptyState value) empty,
    required TResult Function(ProjectSelectionFetchedState value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUninitializedState value)? uninitialized,
    TResult? Function(ProjectLoadingState value)? loading,
    TResult? Function(ProjectsEmptyState value)? empty,
    TResult? Function(ProjectSelectionFetchedState value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUninitializedState value)? uninitialized,
    TResult Function(ProjectLoadingState value)? loading,
    TResult Function(ProjectsEmptyState value)? empty,
    TResult Function(ProjectSelectionFetchedState value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class ProjectSelectionFetchedState implements ProjectState {
  const factory ProjectSelectionFetchedState(
      {required final List<ProjectModel> projects,
      final ProjectModel? selectedProject}) = _$ProjectSelectionFetchedState;

  List<ProjectModel> get projects;
  ProjectModel? get selectedProject;
  @JsonKey(ignore: true)
  _$$ProjectSelectionFetchedStateCopyWith<_$ProjectSelectionFetchedState>
      get copyWith => throw _privateConstructorUsedError;
}
