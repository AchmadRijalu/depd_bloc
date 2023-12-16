// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailRestaurantModel _$DetailRestaurantModelFromJson(
    Map<String, dynamic> json) {
  return _DetailRestaurantModel.fromJson(json);
}

/// @nodoc
mixin _$DetailRestaurantModel {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Restaurant get restaurant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailRestaurantModelCopyWith<DetailRestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailRestaurantModelCopyWith<$Res> {
  factory $DetailRestaurantModelCopyWith(DetailRestaurantModel value,
          $Res Function(DetailRestaurantModel) then) =
      _$DetailRestaurantModelCopyWithImpl<$Res, DetailRestaurantModel>;
  @useResult
  $Res call({bool error, String message, Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$DetailRestaurantModelCopyWithImpl<$Res,
        $Val extends DetailRestaurantModel>
    implements $DetailRestaurantModelCopyWith<$Res> {
  _$DetailRestaurantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? restaurant = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailRestaurantModelImplCopyWith<$Res>
    implements $DetailRestaurantModelCopyWith<$Res> {
  factory _$$DetailRestaurantModelImplCopyWith(
          _$DetailRestaurantModelImpl value,
          $Res Function(_$DetailRestaurantModelImpl) then) =
      __$$DetailRestaurantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message, Restaurant restaurant});

  @override
  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$DetailRestaurantModelImplCopyWithImpl<$Res>
    extends _$DetailRestaurantModelCopyWithImpl<$Res,
        _$DetailRestaurantModelImpl>
    implements _$$DetailRestaurantModelImplCopyWith<$Res> {
  __$$DetailRestaurantModelImplCopyWithImpl(_$DetailRestaurantModelImpl _value,
      $Res Function(_$DetailRestaurantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? restaurant = null,
  }) {
    return _then(_$DetailRestaurantModelImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailRestaurantModelImpl implements _DetailRestaurantModel {
  const _$DetailRestaurantModelImpl(
      {required this.error, required this.message, required this.restaurant});

  factory _$DetailRestaurantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailRestaurantModelImplFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'DetailRestaurantModel(error: $error, message: $message, restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailRestaurantModelImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, restaurant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailRestaurantModelImplCopyWith<_$DetailRestaurantModelImpl>
      get copyWith => __$$DetailRestaurantModelImplCopyWithImpl<
          _$DetailRestaurantModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailRestaurantModelImplToJson(
      this,
    );
  }
}

abstract class _DetailRestaurantModel implements DetailRestaurantModel {
  const factory _DetailRestaurantModel(
      {required final bool error,
      required final String message,
      required final Restaurant restaurant}) = _$DetailRestaurantModelImpl;

  factory _DetailRestaurantModel.fromJson(Map<String, dynamic> json) =
      _$DetailRestaurantModelImpl.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  Restaurant get restaurant;
  @override
  @JsonKey(ignore: true)
  _$$DetailRestaurantModelImplCopyWith<_$DetailRestaurantModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
mixin _$Restaurant {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get pictureID => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  Menus get menus => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  List<CustomerReview> get customerReviews =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String city,
      String address,
      String pictureID,
      List<Category> categories,
      Menus menus,
      double rating,
      List<CustomerReview> customerReviews});

  $MenusCopyWith<$Res> get menus;
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? city = null,
    Object? address = null,
    Object? pictureID = null,
    Object? categories = null,
    Object? menus = null,
    Object? rating = null,
    Object? customerReviews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pictureID: null == pictureID
          ? _value.pictureID
          : pictureID // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      menus: null == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as Menus,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      customerReviews: null == customerReviews
          ? _value.customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReview>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenusCopyWith<$Res> get menus {
    return $MenusCopyWith<$Res>(_value.menus, (value) {
      return _then(_value.copyWith(menus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RestaurantImplCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$RestaurantImplCopyWith(
          _$RestaurantImpl value, $Res Function(_$RestaurantImpl) then) =
      __$$RestaurantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String city,
      String address,
      String pictureID,
      List<Category> categories,
      Menus menus,
      double rating,
      List<CustomerReview> customerReviews});

  @override
  $MenusCopyWith<$Res> get menus;
}

/// @nodoc
class __$$RestaurantImplCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$RestaurantImpl>
    implements _$$RestaurantImplCopyWith<$Res> {
  __$$RestaurantImplCopyWithImpl(
      _$RestaurantImpl _value, $Res Function(_$RestaurantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? city = null,
    Object? address = null,
    Object? pictureID = null,
    Object? categories = null,
    Object? menus = null,
    Object? rating = null,
    Object? customerReviews = null,
  }) {
    return _then(_$RestaurantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pictureID: null == pictureID
          ? _value.pictureID
          : pictureID // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      menus: null == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as Menus,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      customerReviews: null == customerReviews
          ? _value._customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReview>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantImpl implements _Restaurant {
  const _$RestaurantImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.city,
      required this.address,
      required this.pictureID,
      required final List<Category> categories,
      required this.menus,
      required this.rating,
      required final List<CustomerReview> customerReviews})
      : _categories = categories,
        _customerReviews = customerReviews;

  factory _$RestaurantImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String city;
  @override
  final String address;
  @override
  final String pictureID;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final Menus menus;
  @override
  final double rating;
  final List<CustomerReview> _customerReviews;
  @override
  List<CustomerReview> get customerReviews {
    if (_customerReviews is EqualUnmodifiableListView) return _customerReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerReviews);
  }

  @override
  String toString() {
    return 'Restaurant(id: $id, name: $name, description: $description, city: $city, address: $address, pictureID: $pictureID, categories: $categories, menus: $menus, rating: $rating, customerReviews: $customerReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pictureID, pictureID) ||
                other.pictureID == pictureID) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.menus, menus) || other.menus == menus) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._customerReviews, _customerReviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      city,
      address,
      pictureID,
      const DeepCollectionEquality().hash(_categories),
      menus,
      rating,
      const DeepCollectionEquality().hash(_customerReviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      __$$RestaurantImplCopyWithImpl<_$RestaurantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantImplToJson(
      this,
    );
  }
}

abstract class _Restaurant implements Restaurant {
  const factory _Restaurant(
      {required final String id,
      required final String name,
      required final String description,
      required final String city,
      required final String address,
      required final String pictureID,
      required final List<Category> categories,
      required final Menus menus,
      required final double rating,
      required final List<CustomerReview> customerReviews}) = _$RestaurantImpl;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$RestaurantImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get city;
  @override
  String get address;
  @override
  String get pictureID;
  @override
  List<Category> get categories;
  @override
  Menus get menus;
  @override
  double get rating;
  @override
  List<CustomerReview> get customerReviews;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl({required this.name});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Category(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category({required final String name}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerReview _$CustomerReviewFromJson(Map<String, dynamic> json) {
  return _CustomerReview.fromJson(json);
}

/// @nodoc
mixin _$CustomerReview {
  String get name => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerReviewCopyWith<CustomerReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerReviewCopyWith<$Res> {
  factory $CustomerReviewCopyWith(
          CustomerReview value, $Res Function(CustomerReview) then) =
      _$CustomerReviewCopyWithImpl<$Res, CustomerReview>;
  @useResult
  $Res call({String name, String review, String date});
}

/// @nodoc
class _$CustomerReviewCopyWithImpl<$Res, $Val extends CustomerReview>
    implements $CustomerReviewCopyWith<$Res> {
  _$CustomerReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? review = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerReviewImplCopyWith<$Res>
    implements $CustomerReviewCopyWith<$Res> {
  factory _$$CustomerReviewImplCopyWith(_$CustomerReviewImpl value,
          $Res Function(_$CustomerReviewImpl) then) =
      __$$CustomerReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String review, String date});
}

/// @nodoc
class __$$CustomerReviewImplCopyWithImpl<$Res>
    extends _$CustomerReviewCopyWithImpl<$Res, _$CustomerReviewImpl>
    implements _$$CustomerReviewImplCopyWith<$Res> {
  __$$CustomerReviewImplCopyWithImpl(
      _$CustomerReviewImpl _value, $Res Function(_$CustomerReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? review = null,
    Object? date = null,
  }) {
    return _then(_$CustomerReviewImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerReviewImpl implements _CustomerReview {
  const _$CustomerReviewImpl(
      {required this.name, required this.review, required this.date});

  factory _$CustomerReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerReviewImplFromJson(json);

  @override
  final String name;
  @override
  final String review;
  @override
  final String date;

  @override
  String toString() {
    return 'CustomerReview(name: $name, review: $review, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerReviewImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, review, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerReviewImplCopyWith<_$CustomerReviewImpl> get copyWith =>
      __$$CustomerReviewImplCopyWithImpl<_$CustomerReviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerReviewImplToJson(
      this,
    );
  }
}

abstract class _CustomerReview implements CustomerReview {
  const factory _CustomerReview(
      {required final String name,
      required final String review,
      required final String date}) = _$CustomerReviewImpl;

  factory _CustomerReview.fromJson(Map<String, dynamic> json) =
      _$CustomerReviewImpl.fromJson;

  @override
  String get name;
  @override
  String get review;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$CustomerReviewImplCopyWith<_$CustomerReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Menus _$MenusFromJson(Map<String, dynamic> json) {
  return _Menus.fromJson(json);
}

/// @nodoc
mixin _$Menus {
  List<Category> get foods => throw _privateConstructorUsedError;
  List<Category> get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenusCopyWith<Menus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenusCopyWith<$Res> {
  factory $MenusCopyWith(Menus value, $Res Function(Menus) then) =
      _$MenusCopyWithImpl<$Res, Menus>;
  @useResult
  $Res call({List<Category> foods, List<Category> drinks});
}

/// @nodoc
class _$MenusCopyWithImpl<$Res, $Val extends Menus>
    implements $MenusCopyWith<$Res> {
  _$MenusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? drinks = null,
  }) {
    return _then(_value.copyWith(
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      drinks: null == drinks
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenusImplCopyWith<$Res> implements $MenusCopyWith<$Res> {
  factory _$$MenusImplCopyWith(
          _$MenusImpl value, $Res Function(_$MenusImpl) then) =
      __$$MenusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> foods, List<Category> drinks});
}

/// @nodoc
class __$$MenusImplCopyWithImpl<$Res>
    extends _$MenusCopyWithImpl<$Res, _$MenusImpl>
    implements _$$MenusImplCopyWith<$Res> {
  __$$MenusImplCopyWithImpl(
      _$MenusImpl _value, $Res Function(_$MenusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? drinks = null,
  }) {
    return _then(_$MenusImpl(
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      drinks: null == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenusImpl implements _Menus {
  const _$MenusImpl(
      {required final List<Category> foods,
      required final List<Category> drinks})
      : _foods = foods,
        _drinks = drinks;

  factory _$MenusImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenusImplFromJson(json);

  final List<Category> _foods;
  @override
  List<Category> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<Category> _drinks;
  @override
  List<Category> get drinks {
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinks);
  }

  @override
  String toString() {
    return 'Menus(foods: $foods, drinks: $drinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenusImpl &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenusImplCopyWith<_$MenusImpl> get copyWith =>
      __$$MenusImplCopyWithImpl<_$MenusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenusImplToJson(
      this,
    );
  }
}

abstract class _Menus implements Menus {
  const factory _Menus(
      {required final List<Category> foods,
      required final List<Category> drinks}) = _$MenusImpl;

  factory _Menus.fromJson(Map<String, dynamic> json) = _$MenusImpl.fromJson;

  @override
  List<Category> get foods;
  @override
  List<Category> get drinks;
  @override
  @JsonKey(ignore: true)
  _$$MenusImplCopyWith<_$MenusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
