// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DishEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DishEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DishEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DishEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishEventCopyWith<$Res> {
  factory $DishEventCopyWith(DishEvent value, $Res Function(DishEvent) then) =
      _$DishEventCopyWithImpl<$Res, DishEvent>;
}

/// @nodoc
class _$DishEventCopyWithImpl<$Res, $Val extends DishEvent>
    implements $DishEventCopyWith<$Res> {
  _$DishEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DishEventFetchCopyWith<$Res> {
  factory _$$DishEventFetchCopyWith(
          _$DishEventFetch value, $Res Function(_$DishEventFetch) then) =
      __$$DishEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DishEventFetchCopyWithImpl<$Res>
    extends _$DishEventCopyWithImpl<$Res, _$DishEventFetch>
    implements _$$DishEventFetchCopyWith<$Res> {
  __$$DishEventFetchCopyWithImpl(
      _$DishEventFetch _value, $Res Function(_$DishEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DishEventFetch implements DishEventFetch {
  const _$DishEventFetch();

  @override
  String toString() {
    return 'DishEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DishEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DishEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DishEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DishEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class DishEventFetch implements DishEvent {
  const factory DishEventFetch() = _$DishEventFetch;
}

/// @nodoc
mixin _$DishState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Dish> dishesLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Dish> dishesLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Dish> dishesLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DishStateLoading value) loading,
    required TResult Function(DishStateLoaded value) loaded,
    required TResult Function(DishStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DishStateLoading value)? loading,
    TResult? Function(DishStateLoaded value)? loaded,
    TResult? Function(DishStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DishStateLoading value)? loading,
    TResult Function(DishStateLoaded value)? loaded,
    TResult Function(DishStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishStateCopyWith<$Res> {
  factory $DishStateCopyWith(DishState value, $Res Function(DishState) then) =
      _$DishStateCopyWithImpl<$Res, DishState>;
}

/// @nodoc
class _$DishStateCopyWithImpl<$Res, $Val extends DishState>
    implements $DishStateCopyWith<$Res> {
  _$DishStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DishStateLoadingCopyWith<$Res> {
  factory _$$DishStateLoadingCopyWith(
          _$DishStateLoading value, $Res Function(_$DishStateLoading) then) =
      __$$DishStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DishStateLoadingCopyWithImpl<$Res>
    extends _$DishStateCopyWithImpl<$Res, _$DishStateLoading>
    implements _$$DishStateLoadingCopyWith<$Res> {
  __$$DishStateLoadingCopyWithImpl(
      _$DishStateLoading _value, $Res Function(_$DishStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DishStateLoading implements DishStateLoading {
  const _$DishStateLoading();

  @override
  String toString() {
    return 'DishState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DishStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Dish> dishesLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Dish> dishesLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Dish> dishesLoaded)? loaded,
    TResult Function()? error,
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
    required TResult Function(DishStateLoading value) loading,
    required TResult Function(DishStateLoaded value) loaded,
    required TResult Function(DishStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DishStateLoading value)? loading,
    TResult? Function(DishStateLoaded value)? loaded,
    TResult? Function(DishStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DishStateLoading value)? loading,
    TResult Function(DishStateLoaded value)? loaded,
    TResult Function(DishStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DishStateLoading implements DishState {
  const factory DishStateLoading() = _$DishStateLoading;
}

/// @nodoc
abstract class _$$DishStateLoadedCopyWith<$Res> {
  factory _$$DishStateLoadedCopyWith(
          _$DishStateLoaded value, $Res Function(_$DishStateLoaded) then) =
      __$$DishStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Dish> dishesLoaded});
}

/// @nodoc
class __$$DishStateLoadedCopyWithImpl<$Res>
    extends _$DishStateCopyWithImpl<$Res, _$DishStateLoaded>
    implements _$$DishStateLoadedCopyWith<$Res> {
  __$$DishStateLoadedCopyWithImpl(
      _$DishStateLoaded _value, $Res Function(_$DishStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishesLoaded = null,
  }) {
    return _then(_$DishStateLoaded(
      dishesLoaded: null == dishesLoaded
          ? _value._dishesLoaded
          : dishesLoaded // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
    ));
  }
}

/// @nodoc

class _$DishStateLoaded implements DishStateLoaded {
  const _$DishStateLoaded({required final List<Dish> dishesLoaded})
      : _dishesLoaded = dishesLoaded;

  final List<Dish> _dishesLoaded;
  @override
  List<Dish> get dishesLoaded {
    if (_dishesLoaded is EqualUnmodifiableListView) return _dishesLoaded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishesLoaded);
  }

  @override
  String toString() {
    return 'DishState.loaded(dishesLoaded: $dishesLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DishStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._dishesLoaded, _dishesLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dishesLoaded));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DishStateLoadedCopyWith<_$DishStateLoaded> get copyWith =>
      __$$DishStateLoadedCopyWithImpl<_$DishStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Dish> dishesLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(dishesLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Dish> dishesLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(dishesLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Dish> dishesLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(dishesLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DishStateLoading value) loading,
    required TResult Function(DishStateLoaded value) loaded,
    required TResult Function(DishStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DishStateLoading value)? loading,
    TResult? Function(DishStateLoaded value)? loaded,
    TResult? Function(DishStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DishStateLoading value)? loading,
    TResult Function(DishStateLoaded value)? loaded,
    TResult Function(DishStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DishStateLoaded implements DishState {
  const factory DishStateLoaded({required final List<Dish> dishesLoaded}) =
      _$DishStateLoaded;

  List<Dish> get dishesLoaded;
  @JsonKey(ignore: true)
  _$$DishStateLoadedCopyWith<_$DishStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DishStateErrorCopyWith<$Res> {
  factory _$$DishStateErrorCopyWith(
          _$DishStateError value, $Res Function(_$DishStateError) then) =
      __$$DishStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DishStateErrorCopyWithImpl<$Res>
    extends _$DishStateCopyWithImpl<$Res, _$DishStateError>
    implements _$$DishStateErrorCopyWith<$Res> {
  __$$DishStateErrorCopyWithImpl(
      _$DishStateError _value, $Res Function(_$DishStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DishStateError implements DishStateError {
  const _$DishStateError();

  @override
  String toString() {
    return 'DishState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DishStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Dish> dishesLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Dish> dishesLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Dish> dishesLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DishStateLoading value) loading,
    required TResult Function(DishStateLoaded value) loaded,
    required TResult Function(DishStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DishStateLoading value)? loading,
    TResult? Function(DishStateLoaded value)? loaded,
    TResult? Function(DishStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DishStateLoading value)? loading,
    TResult Function(DishStateLoaded value)? loaded,
    TResult Function(DishStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DishStateError implements DishState {
  const factory DishStateError() = _$DishStateError;
}
