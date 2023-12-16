
import 'package:freezed_annotation/freezed_annotation.dart';
part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';


@freezed
class RestaurantModel with _$RestaurantModel {
  //START THE CONSTRUCTOR
  const factory RestaurantModel({
    required String id,
    required String name,
    required String description,
    required String pictureId,
    required String city,
    required double rating,
    @Default(true) bool isImportant,
  }) = _RestaurantModel;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}


class RestaurantModelGenerator {
    bool error;
    String message;
    int count;
    List<Restaurant> restaurants;

    RestaurantModelGenerator({
        required this.error,
        required this.message,
        required this.count,
        required this.restaurants,
    });

    factory RestaurantModelGenerator.fromJson(Map<String, dynamic> json) => RestaurantModelGenerator(
        error: json["error"],
        message: json["message"],
        count: json["count"],
        restaurants: List<Restaurant>.from(json["restaurants"].map((x) => Restaurant.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "count": count,
        "restaurants": List<dynamic>.from(restaurants.map((x) => x.toJson())),
    };
}

class Restaurant {
    String id;
    String name;
    String description;
    String pictureId;
    String city;
    double rating;

    Restaurant({
        required this.id,
        required this.name,
        required this.description,
        required this.pictureId,
        required this.city,
        required this.rating,
    });

    factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        pictureId: json["pictureId"],
        city: json["city"],
        rating: json["rating"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "pictureId": pictureId,
        "city": city,
        "rating": rating,
    };
}