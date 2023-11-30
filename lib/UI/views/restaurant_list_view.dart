import 'package:depd_bloc/common/common.dart';
import 'package:flutter/material.dart';

class RestaurantListView extends StatelessWidget {
  static const routeName = '/restaurant_list_view';

  const RestaurantListView({super.key});

  @override
  Widget build(BuildContext context) {
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
                          const SizedBox(
                            height: 36,
                          ),
                        ]),
                  )),
                  Expanded(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.only(left: 12, right: 12, top: 48),
                        color: whiteColor,
                        child: Column(children: [
                          Row(children: [
                            Text("Popular Restaurants",
                                style: blackTextStyle.copyWith(
                                    fontWeight: bold, fontSize: 18))
                          ],)
                        ]),
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
