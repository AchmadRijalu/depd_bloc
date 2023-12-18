import 'package:depd_bloc/UI/widgets/card_restaurant_item.dart';
import 'package:depd_bloc/common/common.dart';
import 'package:depd_bloc/models/detail_restaurant_model.dart';
import 'package:depd_bloc/models/restaurant_model.dart';
import 'package:depd_bloc/repositories/restaurant_repository.dart';
import 'package:flutter/material.dart';

class RestaurantDetailView extends StatelessWidget {
  final Restaurant? restaurant;
  static const routeName = '/restaurant_detail_view';
  RestaurantRepository restaurantRepository = RestaurantRepository();
  RestaurantDetailView({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(centerTitle: true),
      body: FutureBuilder(
        future: restaurantRepository?.restaurantDetailGet(restaurant!.id),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          } else {
            DetailRestaurantModel detailRestaurantModel = snapshot.data;
            return Center(
                child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.zero,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://restaurant-api.dicoding.dev/images/large/${detailRestaurantModel.restaurant.pictureId}"))),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              detailRestaurantModel.restaurant.name,
                              style: Theme.of(context)!
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                      fontSize: 25),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Flexible(
                              child: Row(children: [
                                Icon(
                                  Icons.star_half_rounded,
                                  color: redColor,
                                ),
                                Text(
                                  detailRestaurantModel.restaurant.rating.toString(),
                                  style: TextStyle(color: blackColor),
                                )
                              ]))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.location_on_rounded,
                                color: blackColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              flex: 5,
                              child: Text(
                                "${detailRestaurantModel.restaurant.address}, ${detailRestaurantModel.restaurant.city}",
                                style: Theme.of(context)!
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: blackColor),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Column(children: [
                        Row(
                          children: [
                            Text(
                              "About",
                              style: Theme.of(context)!
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w800,
                                      color: blackColor,
                                      fontSize: 25),
                            )
                          ],
                        ),
                       const  SizedBox(
                          height: 12,
                        ),
                        Wrap(
                          children: [
                            Text(
                              detailRestaurantModel.restaurant.description,
                              style: Theme.of(context)!
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: blackColor),
                            )
                          ],
                        )
                      ]),
                      const SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 40,

                          // padding: const EdgeInsets.all(12),
                          // color: Colors.amber,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: whiteColor),
                                height: double.infinity,
                                child: Text(
                                  " Categories: ",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: blackColor),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Flexible(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: detailRestaurantModel
                                      .restaurant.categories.length,
                                  // scrollDirection: Axis.horizontal,
                                  itemBuilder: ((context, index) {
                                    final Category restCategories =
                                        detailRestaurantModel
                                            .restaurant.categories[index];
                                    return Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Colors.amber,
                                        ),
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        padding: const EdgeInsets.all(8),
                                        child: Row(
                                          children: [
                                            Text(
                                              restCategories.name,
                                              style: Theme.of(context)!
                                                  .textTheme
                                                  .titleSmall!
                                                  .copyWith(
                                                      color: blackColor,
                                                      fontWeight:
                                                          FontWeight.w600),
                                            ),
                                          ],
                                        ));
                                  }),
                                ),
                              ),
                            ],
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: double.infinity,
                        child: Text(
                          "Foods : ",
                          style: Theme.of(context)!
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Expanded(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: detailRestaurantModel
                                          .restaurant.menus.foods.length,
                                      itemBuilder: ((context, index) {
                                        var menus = detailRestaurantModel
                                            .restaurant.menus.foods[index];
                                        return Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CardDetailsRestaurant(
                                                  foodName: menus.name),
                                            ]);
                                      }))),
                            ],
                          )),
                      const SizedBox(
                        height: 36,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Beverages : ",
                          style: Theme.of(context)!
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Expanded(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: detailRestaurantModel
                                          .restaurant.menus.drinks.length,
                                      itemBuilder: ((context, index) {
                                        var menus = detailRestaurantModel
                                            .restaurant.menus.drinks[index];
                                        return Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CardDetailsRestaurant(
                                                  foodName: menus.name),
                                            ]);
                                      }))),
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ));
          }
        },
      ),
    );
  }
}
