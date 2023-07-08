// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
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
    required TResult Function(CategoryEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoryEventFetchCopyWith<$Res> {
  factory _$$CategoryEventFetchCopyWith(_$CategoryEventFetch value,
          $Res Function(_$CategoryEventFetch) then) =
      __$$CategoryEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryEventFetchCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CategoryEventFetch>
    implements _$$CategoryEventFetchCopyWith<$Res> {
  __$$CategoryEventFetchCopyWithImpl(
      _$CategoryEventFetch _value, $Res Function(_$CategoryEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryEventFetch implements CategoryEventFetch {
  const _$CategoryEventFetch();

  @override
  String toString() {
    return 'CategoryEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryEventFetch);
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
    required TResult Function(CategoryEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CategoryEventFetch implements CategoryEvent {
  const factory CategoryEventFetch() = _$CategoryEventFetch;
}

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categoriesLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Category> categoriesLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categoriesLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateLoaded value) loaded,
    required TResult Function(CategoryStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateLoaded value)? loaded,
    TResult? Function(CategoryStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateLoaded value)? loaded,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoryStateLoadingCopyWith<$Res> {
  factory _$$CategoryStateLoadingCopyWith(_$CategoryStateLoading value,
          $Res Function(_$CategoryStateLoading) then) =
      __$$CategoryStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryStateLoadingCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateLoading>
    implements _$$CategoryStateLoadingCopyWith<$Res> {
  __$$CategoryStateLoadingCopyWithImpl(_$CategoryStateLoading _value,
      $Res Function(_$CategoryStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryStateLoading implements CategoryStateLoading {
  const _$CategoryStateLoading();

  @override
  String toString() {
    return 'CategoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categoriesLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Category> categoriesLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categoriesLoaded)? loaded,
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
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateLoaded value) loaded,
    required TResult Function(CategoryStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateLoaded value)? loaded,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateLoaded value)? loaded,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoryStateLoading implements CategoryState {
  const factory CategoryStateLoading() = _$CategoryStateLoading;
}

/// @nodoc
abstract class _$$CategoryStateLoadedCopyWith<$Res> {
  factory _$$CategoryStateLoadedCopyWith(_$CategoryStateLoaded value,
          $Res Function(_$CategoryStateLoaded) then) =
      __$$CategoryStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> categoriesLoaded});
}

/// @nodoc
class __$$CategoryStateLoadedCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateLoaded>
    implements _$$CategoryStateLoadedCopyWith<$Res> {
  __$$CategoryStateLoadedCopyWithImpl(
      _$CategoryStateLoaded _value, $Res Function(_$CategoryStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesLoaded = null,
  }) {
    return _then(_$CategoryStateLoaded(
      categoriesLoaded: null == categoriesLoaded
          ? _value._categoriesLoaded
          : categoriesLoaded // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoryStateLoaded implements CategoryStateLoaded {
  const _$CategoryStateLoaded({required final List<Category> categoriesLoaded})
      : _categoriesLoaded = categoriesLoaded;

  final List<Category> _categoriesLoaded;
  @override
  List<Category> get categoriesLoaded {
    if (_categoriesLoaded is EqualUnmodifiableListView)
      return _categoriesLoaded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesLoaded);
  }

  @override
  String toString() {
    return 'CategoryState.loaded(categoriesLoaded: $categoriesLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._categoriesLoaded, _categoriesLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoriesLoaded));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateLoadedCopyWith<_$CategoryStateLoaded> get copyWith =>
      __$$CategoryStateLoadedCopyWithImpl<_$CategoryStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categoriesLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(categoriesLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Category> categoriesLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(categoriesLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categoriesLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categoriesLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateLoaded value) loaded,
    required TResult Function(CategoryStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateLoaded value)? loaded,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateLoaded value)? loaded,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CategoryStateLoaded implements CategoryState {
  const factory CategoryStateLoaded(
      {required final List<Category> categoriesLoaded}) = _$CategoryStateLoaded;

  List<Category> get categoriesLoaded;
  @JsonKey(ignore: true)
  _$$CategoryStateLoadedCopyWith<_$CategoryStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryStateErrorCopyWith<$Res> {
  factory _$$CategoryStateErrorCopyWith(_$CategoryStateError value,
          $Res Function(_$CategoryStateError) then) =
      __$$CategoryStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryStateErrorCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateError>
    implements _$$CategoryStateErrorCopyWith<$Res> {
  __$$CategoryStateErrorCopyWithImpl(
      _$CategoryStateError _value, $Res Function(_$CategoryStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryStateError implements CategoryStateError {
  const _$CategoryStateError();

  @override
  String toString() {
    return 'CategoryState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categoriesLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Category> categoriesLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categoriesLoaded)? loaded,
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
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateLoaded value) loaded,
    required TResult Function(CategoryStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateLoaded value)? loaded,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateLoaded value)? loaded,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoryStateError implements CategoryState {
  const factory CategoryStateError() = _$CategoryStateError;
}
