import 'package:depd_bloc/UI/views/restaurant_detail_view.dart';
import 'package:depd_bloc/UI/widgets/restaurant_list_item.dart';
import 'package:depd_bloc/common/common.dart';
import 'package:depd_bloc/logic/blocs/restaurant/restaurant_bloc.dart';
import 'package:depd_bloc/models/restaurant_model.dart';
import 'package:depd_bloc/repositories/restaurant_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantListView extends StatelessWidget {
  static const routeName = '/restaurant_list_view';

  const RestaurantListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
                child: Container(
              color: Colors.amber,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Restaurants",
                          style: blackTextStyle.copyWith(
                              fontWeight: extraBold, fontSize: 32)),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/image_person.jpeg"))),
                      )
                    ],
                  ),
                ),
              ]),
            )),
            Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 36),
                  color: lightBackgroundColor,
                  child: Column(children: [
                    Row(
                      children: [
                        Text("Popular Restaurants",
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 18))
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    BlocProvider(
                      create: (context) =>
                          RestaurantBloc()..add(RestaurantListGet()),
                      child: BlocConsumer<RestaurantBloc, RestaurantState>(
                        builder: (context, state) {
                          if (state is RestaurantLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is RestaurantFailed) {
                            return Center(
                              child: Text(state.message),
                            );
                          } else if (state is RestaurantListGetSuccess) {
                            return Expanded(
                              child: ListView.builder(
                                itemCount: state.restaurants.length,
                                itemBuilder: (context, index) {
                                  var restaurant = state.restaurants[index];
                                  return RestaurantListItem(
                                      onTap: () {
                                        Navigator.pushNamed(context,
                                            RestaurantDetailView.routeName,
                                            arguments: restaurant);
                                      },
                                      imageUrl: restaurant.pictureId,
                                      name: restaurant.name,
                                      description: restaurant.description,
                                      city: restaurant.city,
                                      rating: restaurant.rating);
                                },
                              ),
                            );
                          }
                          return const Center(
                            child: Text(""),
                          );
                        },
                        listener: (context, state) {},
                      ),
                    ),
                  ]),
                ))
          ]),
        ),
      ),
    );
  }
}
