import 'package:depd_bloc/common/common.dart';
import 'package:flutter/material.dart';

class RestaurantDetailView extends StatelessWidget {
  final int? id;
  static const routeName = '/restaurant_detail_view';
  const RestaurantDetailView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(centerTitle: true),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.zero,
            height: 150,
            color: Colors.amber,
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
                        "name",
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
                        child: Container(
                      child: Row(children: [
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.yellow,
                        ),
                        Text(
                          "rating",
                          style: TextStyle(color: blackColor),
                        )
                      ]),
                    ))
                  ],
                ),
                SizedBox(
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
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        flex: 5,
                        child: Text(
                          "address" + ", " + "city",
                          style: Theme.of(context)!
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                        )),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  child: Column(children: [
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
                    SizedBox(
                      height: 12,
                    ),
                    Wrap(
                      children: [
                        Container(
                          child: Text(
                            "description",
                            style: Theme.of(context)!
                                .textTheme
                                .subtitle2!
                                .copyWith(color: blackColor),
                          ),
                        )
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
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
                              color: blackColor),
                          height: double.infinity,
                          child: Text(
                            " Categories: ",
                            style: Theme.of(context)!
                                .textTheme
                                .subtitle2!
                                .copyWith(color: blackColor),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        // Container(
                        //   child: Flexible(
                        //     child: ListView.builder(
                        //       shrinkWrap: true,
                        //       scrollDirection: Axis.horizontal,
                        //       itemCount: restDetail
                        //           .detailRestaurantElement.categories.length,
                        //       // scrollDirection: Axis.horizontal,
                        //       itemBuilder: ((context, index) {
                        //         final Category restCategories = restDetail
                        //             .detailRestaurantElement.categories[index];
                        //         return Container(
                        //             decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(5),
                        //               color: secondaryColors,
                        //             ),
                        //             margin: const EdgeInsets.only(right: 10),
                        //             padding: const EdgeInsets.all(8),
                        //             child: Row(
                        //               children: [
                        //                 Text(
                        //                   restCategories.name,
                        //                   style: Theme.of(context)!
                        //                       .textTheme
                        //                       .subtitle2!
                        //                       .copyWith(
                        //                           color: blackColor,
                        //                           fontWeight: FontWeight.w600),
                        //                 ),
                        //               ],
                        //             ));
                        //       }),
                        //     ),
                        //   ),
                        // ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: Text(
                    "Foods : ",
                    style: Theme.of(context)!.textTheme.titleLarge!.copyWith(
                        color: blackColor, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                    height: 150,
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        // Expanded(
                        //     child: ListView.builder(
                        //         shrinkWrap: true,
                        //         scrollDirection: Axis.horizontal,
                        //         itemCount: restDetail
                        //             .detailRestaurantElement.menus.foods.length,
                        //         itemBuilder: ((context, index) {
                        //           var menus = restDetail
                        //               .detailRestaurantElement.menus.foods[index];
                        //           return Container(
                        //             child: Column(
                        //                 mainAxisAlignment:
                        //                     MainAxisAlignment.center,
                        //                 children: [
                        //                   CardDetailsRestaurant(
                        //                       foodName: menus.name),
                        //                 ]),
                        //           );
                        //         }))),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: Text(
                    "Beverages : ",
                    style: Theme.of(context)!.textTheme.titleLarge!.copyWith(
                        color: blackColor, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                    height: 150,
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        // Expanded(
                        //     child: ListView.builder(
                        //         shrinkWrap: true,
                        //         scrollDirection: Axis.horizontal,
                        //         itemCount: restDetail
                        //             .detailRestaurantElement.menus.drinks.length,
                        //         itemBuilder: ((context, index) {
                        //           var menus = restDetail.detailRestaurantElement
                        //               .menus.drinks[index];
                        //           return Container(
                        //             child: Column(
                        //                 mainAxisAlignment:
                        //                     MainAxisAlignment.center,
                        //                 children: [
                        //                   CardDetailsRestaurant(
                        //                       foodName: menus.name),
                        //                 ]),
                        //           );
                        //         }))),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: blackColor,
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.amber,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Review",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          color: blackColor,
                                          fontWeight: FontWeight.w700),
                                ),
                                Container(child: Icon(Icons.arrow_drop_down)),
                              ]),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // ListView.builder(
                        //     physics: NeverScrollableScrollPhysics(),
                        //     shrinkWrap: true,
                        //     itemCount: restDetail
                        //         .detailRestaurantElement.customerReviews.length,
                        //     itemBuilder: ((context, index) {
                        //       var getReview = restDetail
                        //           .detailRestaurantElement.customerReviews[index];
                        //       return CardReview(
                        //         name: getReview.name,
                        //         review: getReview.review,
                        //       );
                        //     })),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
