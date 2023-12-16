import 'package:depd_bloc/UI/views/restaurant_detail_view.dart';
import 'package:depd_bloc/UI/widgets/restaurant_list_item.dart';
import 'package:depd_bloc/common/common.dart';
import 'package:depd_bloc/models/restaurant_model.dart';
import 'package:depd_bloc/repositories/restaurant_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RestaurantListView extends StatelessWidget {
  static const routeName = '/restaurant_list_view';

  const RestaurantListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RestaurantRepository restaurantRepository = RestaurantRepository();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.amber,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
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
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/image_person.jpeg"))),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  child: CupertinoTextField(),
                                )
                              ],
                            ),
                          )
                        ]),
                  )),
                  Expanded(
                      flex: 5,
                      child: Container(
                        padding:
                            const EdgeInsets.only(left: 12, right: 12, top: 48),
                        color: whiteColor,
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
                          FutureBuilder<RestaurantModelGenerator>(
                            future: restaurantRepository
                                .restaurantGet(), // Your future function
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                // While the Future is still running, show a loading indicator
                                return CircularProgressIndicator();
                              } else if (snapshot.hasError) {
                                // If the Future throws an error, display an error message
                                return Text('Error: ${snapshot.error}');
                              } else {
                                // If the Future is complete and successful, display the data
                                RestaurantModelGenerator restaurantModel =
                                    snapshot.data!;
                                return Expanded(
                                  child: ListView.builder(
                                    itemCount: restaurantModel.count,
                                    itemBuilder: (context, index) {
                                      Restaurant restaurant =
                                          restaurantModel.restaurants[index];
                                      return RestaurantListItem(
                                          onTap: () {
                                            Navigator.pushNamed(context,
                                                RestaurantDetailView.routeName,
                                                arguments: restaurant.id);
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
                            },
                          )
                        ]),
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
