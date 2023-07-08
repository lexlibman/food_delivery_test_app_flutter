// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  Dish get dish => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dish dish) add,
    required TResult Function(Dish dish) incQuantity,
    required TResult Function(Dish dish) decQuantity,
    required TResult Function(Dish dish) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dish dish)? add,
    TResult? Function(Dish dish)? incQuantity,
    TResult? Function(Dish dish)? decQuantity,
    TResult? Function(Dish dish)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dish dish)? add,
    TResult Function(Dish dish)? incQuantity,
    TResult Function(Dish dish)? decQuantity,
    TResult Function(Dish dish)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEventAdd value) add,
    required TResult Function(CartEventIncQuantity value) incQuantity,
    required TResult Function(CartEventDecQuantity value) decQuantity,
    required TResult Function(CartEventRemove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartEventAdd value)? add,
    TResult? Function(CartEventIncQuantity value)? incQuantity,
    TResult? Function(CartEventDecQuantity value)? decQuantity,
    TResult? Function(CartEventRemove value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEventAdd value)? add,
    TResult Function(CartEventIncQuantity value)? incQuantity,
    TResult Function(CartEventDecQuantity value)? decQuantity,
    TResult Function(CartEventRemove value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartEventCopyWith<CartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
  @useResult
  $Res call({Dish dish});

  $DishCopyWith<$Res> get dish;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dish = null,
  }) {
    return _then(_value.copyWith(
      dish: null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DishCopyWith<$Res> get dish {
    return $DishCopyWith<$Res>(_value.dish, (value) {
      return _then(_value.copyWith(dish: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartEventAddCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$CartEventAddCopyWith(
          _$CartEventAdd value, $Res Function(_$CartEventAdd) then) =
      __$$CartEventAddCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dish dish});

  @override
  $DishCopyWith<$Res> get dish;
}

/// @nodoc
class __$$CartEventAddCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventAdd>
    implements _$$CartEventAddCopyWith<$Res> {
  __$$CartEventAddCopyWithImpl(
      _$CartEventAdd _value, $Res Function(_$CartEventAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dish = null,
  }) {
    return _then(_$CartEventAdd(
      dish: null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
    ));
  }
}

/// @nodoc

class _$CartEventAdd implements CartEventAdd {
  const _$CartEventAdd({required this.dish});

  @override
  final Dish dish;

  @override
  String toString() {
    return 'CartEvent.add(dish: $dish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEventAdd &&
            (identical(other.dish, dish) || other.dish == dish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEventAddCopyWith<_$CartEventAdd> get copyWith =>
      __$$CartEventAddCopyWithImpl<_$CartEventAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dish dish) add,
    required TResult Function(Dish dish) incQuantity,
    required TResult Function(Dish dish) decQuantity,
    required TResult Function(Dish dish) remove,
  }) {
    return add(dish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dish dish)? add,
    TResult? Function(Dish dish)? incQuantity,
    TResult? Function(Dish dish)? decQuantity,
    TResult? Function(Dish dish)? remove,
  }) {
    return add?.call(dish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dish dish)? add,
    TResult Function(Dish dish)? incQuantity,
    TResult Function(Dish dish)? decQuantity,
    TResult Function(Dish dish)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(dish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEventAdd value) add,
    required TResult Function(CartEventIncQuantity value) incQuantity,
    required TResult Function(CartEventDecQuantity value) decQuantity,
    required TResult Function(CartEventRemove value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartEventAdd value)? add,
    TResult? Function(CartEventIncQuantity value)? incQuantity,
    TResult? Function(CartEventDecQuantity value)? decQuantity,
    TResult? Function(CartEventRemove value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEventAdd value)? add,
    TResult Function(CartEventIncQuantity value)? incQuantity,
    TResult Function(CartEventDecQuantity value)? decQuantity,
    TResult Function(CartEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class CartEventAdd implements CartEvent {
  const factory CartEventAdd({required final Dish dish}) = _$CartEventAdd;

  @override
  Dish get dish;
  @override
  @JsonKey(ignore: true)
  _$$CartEventAddCopyWith<_$CartEventAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEventIncQuantityCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$CartEventIncQuantityCopyWith(_$CartEventIncQuantity value,
          $Res Function(_$CartEventIncQuantity) then) =
      __$$CartEventIncQuantityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dish dish});

  @override
  $DishCopyWith<$Res> get dish;
}

/// @nodoc
class __$$CartEventIncQuantityCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventIncQuantity>
    implements _$$CartEventIncQuantityCopyWith<$Res> {
  __$$CartEventIncQuantityCopyWithImpl(_$CartEventIncQuantity _value,
      $Res Function(_$CartEventIncQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dish = null,
  }) {
    return _then(_$CartEventIncQuantity(
      dish: null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
    ));
  }
}

/// @nodoc

class _$CartEventIncQuantity implements CartEventIncQuantity {
  const _$CartEventIncQuantity({required this.dish});

  @override
  final Dish dish;

  @override
  String toString() {
    return 'CartEvent.incQuantity(dish: $dish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEventIncQuantity &&
            (identical(other.dish, dish) || other.dish == dish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEventIncQuantityCopyWith<_$CartEventIncQuantity> get copyWith =>
      __$$CartEventIncQuantityCopyWithImpl<_$CartEventIncQuantity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dish dish) add,
    required TResult Function(Dish dish) incQuantity,
    required TResult Function(Dish dish) decQuantity,
    required TResult Function(Dish dish) remove,
  }) {
    return incQuantity(dish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dish dish)? add,
    TResult? Function(Dish dish)? incQuantity,
    TResult? Function(Dish dish)? decQuantity,
    TResult? Function(Dish dish)? remove,
  }) {
    return incQuantity?.call(dish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dish dish)? add,
    TResult Function(Dish dish)? incQuantity,
    TResult Function(Dish dish)? decQuantity,
    TResult Function(Dish dish)? remove,
    required TResult orElse(),
  }) {
    if (incQuantity != null) {
      return incQuantity(dish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEventAdd value) add,
    required TResult Function(CartEventIncQuantity value) incQuantity,
    required TResult Function(CartEventDecQuantity value) decQuantity,
    required TResult Function(CartEventRemove value) remove,
  }) {
    return incQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartEventAdd value)? add,
    TResult? Function(CartEventIncQuantity value)? incQuantity,
    TResult? Function(CartEventDecQuantity value)? decQuantity,
    TResult? Function(CartEventRemove value)? remove,
  }) {
    return incQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEventAdd value)? add,
    TResult Function(CartEventIncQuantity value)? incQuantity,
    TResult Function(CartEventDecQuantity value)? decQuantity,
    TResult Function(CartEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (incQuantity != null) {
      return incQuantity(this);
    }
    return orElse();
  }
}

abstract class CartEventIncQuantity implements CartEvent {
  const factory CartEventIncQuantity({required final Dish dish}) =
      _$CartEventIncQuantity;

  @override
  Dish get dish;
  @override
  @JsonKey(ignore: true)
  _$$CartEventIncQuantityCopyWith<_$CartEventIncQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEventDecQuantityCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$CartEventDecQuantityCopyWith(_$CartEventDecQuantity value,
          $Res Function(_$CartEventDecQuantity) then) =
      __$$CartEventDecQuantityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dish dish});

  @override
  $DishCopyWith<$Res> get dish;
}

/// @nodoc
class __$$CartEventDecQuantityCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventDecQuantity>
    implements _$$CartEventDecQuantityCopyWith<$Res> {
  __$$CartEventDecQuantityCopyWithImpl(_$CartEventDecQuantity _value,
      $Res Function(_$CartEventDecQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dish = null,
  }) {
    return _then(_$CartEventDecQuantity(
      dish: null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
    ));
  }
}

/// @nodoc

class _$CartEventDecQuantity implements CartEventDecQuantity {
  const _$CartEventDecQuantity({required this.dish});

  @override
  final Dish dish;

  @override
  String toString() {
    return 'CartEvent.decQuantity(dish: $dish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEventDecQuantity &&
            (identical(other.dish, dish) || other.dish == dish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEventDecQuantityCopyWith<_$CartEventDecQuantity> get copyWith =>
      __$$CartEventDecQuantityCopyWithImpl<_$CartEventDecQuantity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dish dish) add,
    required TResult Function(Dish dish) incQuantity,
    required TResult Function(Dish dish) decQuantity,
    required TResult Function(Dish dish) remove,
  }) {
    return decQuantity(dish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dish dish)? add,
    TResult? Function(Dish dish)? incQuantity,
    TResult? Function(Dish dish)? decQuantity,
    TResult? Function(Dish dish)? remove,
  }) {
    return decQuantity?.call(dish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dish dish)? add,
    TResult Function(Dish dish)? incQuantity,
    TResult Function(Dish dish)? decQuantity,
    TResult Function(Dish dish)? remove,
    required TResult orElse(),
  }) {
    if (decQuantity != null) {
      return decQuantity(dish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEventAdd value) add,
    required TResult Function(CartEventIncQuantity value) incQuantity,
    required TResult Function(CartEventDecQuantity value) decQuantity,
    required TResult Function(CartEventRemove value) remove,
  }) {
    return decQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartEventAdd value)? add,
    TResult? Function(CartEventIncQuantity value)? incQuantity,
    TResult? Function(CartEventDecQuantity value)? decQuantity,
    TResult? Function(CartEventRemove value)? remove,
  }) {
    return decQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEventAdd value)? add,
    TResult Function(CartEventIncQuantity value)? incQuantity,
    TResult Function(CartEventDecQuantity value)? decQuantity,
    TResult Function(CartEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (decQuantity != null) {
      return decQuantity(this);
    }
    return orElse();
  }
}

abstract class CartEventDecQuantity implements CartEvent {
  const factory CartEventDecQuantity({required final Dish dish}) =
      _$CartEventDecQuantity;

  @override
  Dish get dish;
  @override
  @JsonKey(ignore: true)
  _$$CartEventDecQuantityCopyWith<_$CartEventDecQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEventRemoveCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$CartEventRemoveCopyWith(
          _$CartEventRemove value, $Res Function(_$CartEventRemove) then) =
      __$$CartEventRemoveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dish dish});

  @override
  $DishCopyWith<$Res> get dish;
}

/// @nodoc
class __$$CartEventRemoveCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventRemove>
    implements _$$CartEventRemoveCopyWith<$Res> {
  __$$CartEventRemoveCopyWithImpl(
      _$CartEventRemove _value, $Res Function(_$CartEventRemove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dish = null,
  }) {
    return _then(_$CartEventRemove(
      dish: null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as Dish,
    ));
  }
}

/// @nodoc

class _$CartEventRemove implements CartEventRemove {
  const _$CartEventRemove({required this.dish});

  @override
  final Dish dish;

  @override
  String toString() {
    return 'CartEvent.remove(dish: $dish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEventRemove &&
            (identical(other.dish, dish) || other.dish == dish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEventRemoveCopyWith<_$CartEventRemove> get copyWith =>
      __$$CartEventRemoveCopyWithImpl<_$CartEventRemove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dish dish) add,
    required TResult Function(Dish dish) incQuantity,
    required TResult Function(Dish dish) decQuantity,
    required TResult Function(Dish dish) remove,
  }) {
    return remove(dish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dish dish)? add,
    TResult? Function(Dish dish)? incQuantity,
    TResult? Function(Dish dish)? decQuantity,
    TResult? Function(Dish dish)? remove,
  }) {
    return remove?.call(dish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dish dish)? add,
    TResult Function(Dish dish)? incQuantity,
    TResult Function(Dish dish)? decQuantity,
    TResult Function(Dish dish)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(dish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEventAdd value) add,
    required TResult Function(CartEventIncQuantity value) incQuantity,
    required TResult Function(CartEventDecQuantity value) decQuantity,
    required TResult Function(CartEventRemove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartEventAdd value)? add,
    TResult? Function(CartEventIncQuantity value)? incQuantity,
    TResult? Function(CartEventDecQuantity value)? decQuantity,
    TResult? Function(CartEventRemove value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEventAdd value)? add,
    TResult Function(CartEventIncQuantity value)? incQuantity,
    TResult Function(CartEventDecQuantity value)? decQuantity,
    TResult Function(CartEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class CartEventRemove implements CartEvent {
  const factory CartEventRemove({required final Dish dish}) = _$CartEventRemove;

  @override
  Dish get dish;
  @override
  @JsonKey(ignore: true)
  _$$CartEventRemoveCopyWith<_$CartEventRemove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isEmpty,
    required TResult Function(Map<Dish, int> cartItems, int totalPrice)
        isNotEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isEmpty,
    TResult? Function(Map<Dish, int> cartItems, int totalPrice)? isNotEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isEmpty,
    TResult Function(Map<Dish, int> cartItems, int totalPrice)? isNotEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateEmpty value) isEmpty,
    required TResult Function(CartStateNotEmpty value) isNotEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartStateEmpty value)? isEmpty,
    TResult? Function(CartStateNotEmpty value)? isNotEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateEmpty value)? isEmpty,
    TResult Function(CartStateNotEmpty value)? isNotEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartStateEmptyCopyWith<$Res> {
  factory _$$CartStateEmptyCopyWith(
          _$CartStateEmpty value, $Res Function(_$CartStateEmpty) then) =
      __$$CartStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartStateEmptyCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateEmpty>
    implements _$$CartStateEmptyCopyWith<$Res> {
  __$$CartStateEmptyCopyWithImpl(
      _$CartStateEmpty _value, $Res Function(_$CartStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartStateEmpty implements CartStateEmpty {
  const _$CartStateEmpty();

  @override
  String toString() {
    return 'CartState.isEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isEmpty,
    required TResult Function(Map<Dish, int> cartItems, int totalPrice)
        isNotEmpty,
  }) {
    return isEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isEmpty,
    TResult? Function(Map<Dish, int> cartItems, int totalPrice)? isNotEmpty,
  }) {
    return isEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isEmpty,
    TResult Function(Map<Dish, int> cartItems, int totalPrice)? isNotEmpty,
    required TResult orElse(),
  }) {
    if (isEmpty != null) {
      return isEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateEmpty value) isEmpty,
    required TResult Function(CartStateNotEmpty value) isNotEmpty,
  }) {
    return isEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartStateEmpty value)? isEmpty,
    TResult? Function(CartStateNotEmpty value)? isNotEmpty,
  }) {
    return isEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateEmpty value)? isEmpty,
    TResult Function(CartStateNotEmpty value)? isNotEmpty,
    required TResult orElse(),
  }) {
    if (isEmpty != null) {
      return isEmpty(this);
    }
    return orElse();
  }
}

abstract class CartStateEmpty implements CartState {
  const factory CartStateEmpty() = _$CartStateEmpty;
}

/// @nodoc
abstract class _$$CartStateNotEmptyCopyWith<$Res> {
  factory _$$CartStateNotEmptyCopyWith(
          _$CartStateNotEmpty value, $Res Function(_$CartStateNotEmpty) then) =
      __$$CartStateNotEmptyCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<Dish, int> cartItems, int totalPrice});
}

/// @nodoc
class __$$CartStateNotEmptyCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateNotEmpty>
    implements _$$CartStateNotEmptyCopyWith<$Res> {
  __$$CartStateNotEmptyCopyWithImpl(
      _$CartStateNotEmpty _value, $Res Function(_$CartStateNotEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? totalPrice = null,
  }) {
    return _then(_$CartStateNotEmpty(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<Dish, int>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartStateNotEmpty implements CartStateNotEmpty {
  const _$CartStateNotEmpty(
      {required final Map<Dish, int> cartItems, required this.totalPrice})
      : _cartItems = cartItems;

  final Map<Dish, int> _cartItems;
  @override
  Map<Dish, int> get cartItems {
    if (_cartItems is EqualUnmodifiableMapView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartItems);
  }

  @override
  final int totalPrice;

  @override
  String toString() {
    return 'CartState.isNotEmpty(cartItems: $cartItems, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateNotEmpty &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartItems), totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateNotEmptyCopyWith<_$CartStateNotEmpty> get copyWith =>
      __$$CartStateNotEmptyCopyWithImpl<_$CartStateNotEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isEmpty,
    required TResult Function(Map<Dish, int> cartItems, int totalPrice)
        isNotEmpty,
  }) {
    return isNotEmpty(cartItems, totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isEmpty,
    TResult? Function(Map<Dish, int> cartItems, int totalPrice)? isNotEmpty,
  }) {
    return isNotEmpty?.call(cartItems, totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isEmpty,
    TResult Function(Map<Dish, int> cartItems, int totalPrice)? isNotEmpty,
    required TResult orElse(),
  }) {
    if (isNotEmpty != null) {
      return isNotEmpty(cartItems, totalPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateEmpty value) isEmpty,
    required TResult Function(CartStateNotEmpty value) isNotEmpty,
  }) {
    return isNotEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartStateEmpty value)? isEmpty,
    TResult? Function(CartStateNotEmpty value)? isNotEmpty,
  }) {
    return isNotEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateEmpty value)? isEmpty,
    TResult Function(CartStateNotEmpty value)? isNotEmpty,
    required TResult orElse(),
  }) {
    if (isNotEmpty != null) {
      return isNotEmpty(this);
    }
    return orElse();
  }
}

abstract class CartStateNotEmpty implements CartState {
  const factory CartStateNotEmpty(
      {required final Map<Dish, int> cartItems,
      required final int totalPrice}) = _$CartStateNotEmpty;

  Map<Dish, int> get cartItems;
  int get totalPrice;
  @JsonKey(ignore: true)
  _$$CartStateNotEmptyCopyWith<_$CartStateNotEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
