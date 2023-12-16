import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_restaurant_model.freezed.dart';
part 'detail_restaurant_model.g.dart';

@freezed
class DetailRestaurantModel with _$DetailRestaurantModel {
  const factory DetailRestaurantModel({
    required bool error,
    required String message,
    required Restaurant restaurant,
  }) = _DetailRestaurantModel;

  factory DetailRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$DetailRestaurantModelFromJson(json);
}

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required String id,
    required String name,
    required String description,
    required String city,
    required String address,
    required String pictureID,
    required List<Category> categories,
    required Menus menus,
    required double rating,
    required List<CustomerReview> customerReviews,
  }) = _Restaurant;

  factory Restaurant.fromJson(Map<String, dynamic> json) => _$RestaurantFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class CustomerReview with _$CustomerReview {
  const factory CustomerReview({
    required String name,
    required String review,
    required String date,
  }) = _CustomerReview;

  factory CustomerReview.fromJson(Map<String, dynamic> json) => _$CustomerReviewFromJson(json);
}

@freezed
class Menus with _$Menus {
  const factory Menus({
    required List<Category> foods,
    required List<Category> drinks,
  }) = _Menus;

  factory Menus.fromJson(Map<String, dynamic> json) => _$MenusFromJson(json);
}
