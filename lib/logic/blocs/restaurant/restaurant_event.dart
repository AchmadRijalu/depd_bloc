part of 'restaurant_bloc.dart';

@immutable
sealed class RestaurantEvent {
  const RestaurantEvent();

  List<Object> get props => [];
}

class RestaurantListGet extends RestaurantEvent {

}

class RestaurantDetailGet extends RestaurantEvent {
  final String id;

  const RestaurantDetailGet(this.id);
  
}
