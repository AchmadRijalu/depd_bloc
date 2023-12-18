import 'package:bloc/bloc.dart';
import 'package:depd_bloc/models/detail_restaurant_model.dart';
import 'package:depd_bloc/models/restaurant_model.dart';
import 'package:depd_bloc/repositories/restaurant_repository.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'restaurant_event.dart';
part 'restaurant_state.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  RestaurantBloc() : super(RestaurantInitial()) {
    //Put Async here for get data from API
    on<RestaurantEvent>((event, emit) async {

      if(event is RestaurantListGet ) {
        emit(RestaurantLoading());
        try {
          final restaurants = await RestaurantRepository().restaurantGet();
          emit(RestaurantListGetSuccess(restaurants.restaurants));
        } catch (e) {
          emit(RestaurantFailed(e.toString()));
        }
      }

      if(event is RestaurantDetailGet) {
        emit(RestaurantLoading());
        try {
          final detailRestaurant = await RestaurantRepository().restaurantDetailGet(event.id);
          emit(RestaurantDetailGetSuccess(detailRestaurant.restaurant));
        } catch (e) {
          emit(RestaurantFailed(e.toString()));
        }
      }
    });
  }
}
