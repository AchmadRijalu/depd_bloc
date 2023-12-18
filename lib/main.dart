import 'package:depd_bloc/UI/views/restaurant_detail_view.dart';
import 'package:depd_bloc/UI/views/restaurant_list_view.dart';
import 'package:depd_bloc/models/detail_restaurant_model.dart';
import 'package:depd_bloc/models/restaurant_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      initialRoute: RestaurantListView.routeName,
      routes: {
        RestaurantListView.routeName: (context) => const RestaurantListView(),
        RestaurantDetailView.routeName: (context) => RestaurantDetailView(
            restaurant:
                ModalRoute.of(context)!.settings.arguments as Restaurant),
      },
    );
  }
}
