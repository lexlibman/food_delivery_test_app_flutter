// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dish _$DishFromJson(Map<String, dynamic> json) {
  return _Dish.fromJson(json);
}

/// @nodoc
mixin _$Dish {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  List<String> get tegs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishCopyWith<Dish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishCopyWith<$Res> {
  factory $DishCopyWith(Dish value, $Res Function(Dish) then) =
      _$DishCopyWithImpl<$Res, Dish>;
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      int weight,
      String description,
      String imageURL,
      List<String> tegs});
}

/// @nodoc
class _$DishCopyWithImpl<$Res, $Val extends Dish>
    implements $DishCopyWith<$Res> {
  _$DishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? weight = null,
    Object? description = null,
    Object? imageURL = null,
    Object? tegs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      tegs: null == tegs
          ? _value.tegs
          : tegs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishCopyWith<$Res> implements $DishCopyWith<$Res> {
  factory _$$_DishCopyWith(_$_Dish value, $Res Function(_$_Dish) then) =
      __$$_DishCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      int weight,
      String description,
      String imageURL,
      List<String> tegs});
}

/// @nodoc
class __$$_DishCopyWithImpl<$Res> extends _$DishCopyWithImpl<$Res, _$_Dish>
    implements _$$_DishCopyWith<$Res> {
  __$$_DishCopyWithImpl(_$_Dish _value, $Res Function(_$_Dish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? weight = null,
    Object? description = null,
    Object? imageURL = null,
    Object? tegs = null,
  }) {
    return _then(_$_Dish(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      tegs: null == tegs
          ? _value._tegs
          : tegs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dish implements _Dish {
  const _$_Dish(
      {required this.id,
      required this.name,
      required this.price,
      required this.weight,
      required this.description,
      required this.imageURL,
      required final List<String> tegs})
      : _tegs = tegs;

  factory _$_Dish.fromJson(Map<String, dynamic> json) => _$$_DishFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int weight;
  @override
  final String description;
  @override
  final String imageURL;
  final List<String> _tegs;
  @override
  List<String> get tegs {
    if (_tegs is EqualUnmodifiableListView) return _tegs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tegs);
  }

  @override
  String toString() {
    return 'Dish(id: $id, name: $name, price: $price, weight: $weight, description: $description, imageURL: $imageURL, tegs: $tegs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dish &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            const DeepCollectionEquality().equals(other._tegs, _tegs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, weight,
      description, imageURL, const DeepCollectionEquality().hash(_tegs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishCopyWith<_$_Dish> get copyWith =>
      __$$_DishCopyWithImpl<_$_Dish>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishToJson(
      this,
    );
  }
}

abstract class _Dish implements Dish {
  const factory _Dish(
      {required final int id,
      required final String name,
      required final int price,
      required final int weight,
      required final String description,
      required final String imageURL,
      required final List<String> tegs}) = _$_Dish;

  factory _Dish.fromJson(Map<String, dynamic> json) = _$_Dish.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  int get weight;
  @override
  String get description;
  @override
  String get imageURL;
  @override
  List<String> get tegs;
  @override
  @JsonKey(ignore: true)
  _$$_DishCopyWith<_$_Dish> get copyWith => throw _privateConstructorUsedError;
}
