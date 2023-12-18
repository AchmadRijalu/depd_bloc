part of 'restaurant_bloc.dart';

@immutable
sealed class RestaurantState {}

final class RestaurantInitial extends RestaurantState {}

class RestaurantLoading extends RestaurantState {}

class RestaurantFailed extends RestaurantState {
  final String message;

  RestaurantFailed(this.message);
}

class RestaurantListGetSuccess extends RestaurantState {
  final List<Restaurant> restaurants;

  RestaurantListGetSuccess(this.restaurants);

  
}

class RestaurantDetailGetSuccess extends RestaurantState {
  final DetailRestaurant detailRestaurant;

  RestaurantDetailGetSuccess(this.detailRestaurant);

  
}
