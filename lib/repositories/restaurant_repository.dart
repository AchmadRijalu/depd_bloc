import 'dart:convert';

import 'package:depd_bloc/models/detail_restaurant_model.dart';
import 'package:depd_bloc/models/restaurant_model.dart';
import 'package:depd_bloc/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class RestaurantRepository {
  //api service untuk list restaurant
  Future<RestaurantModelGenerator> restaurantGet() async {
    final response = await http.get(Uri.parse(baseUrl + "/list"));
    if (response.statusCode == 200) {
      return RestaurantModelGenerator.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load the data");
    }
  }

  //api service untuk detail restaurant
  Future<DetailRestaurantModel> restaurantDetailGet(String? id) async {
    final response = await http.get(Uri.parse(baseUrl + "/detail/${id}"));
    if (response.statusCode == 200) {
      return DetailRestaurantModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Faild to load the data");
    }
  }
}
