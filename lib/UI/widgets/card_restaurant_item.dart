import 'package:depd_bloc/common/common.dart';
import 'package:flutter/material.dart';

class CardDetailsRestaurant extends StatelessWidget {
  const CardDetailsRestaurant({super.key, required this.foodName});
  final String foodName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: yellowColor,
        borderRadius: BorderRadius.circular(10),
        // color: Colors.black,
      ),
      child: Text(
        foodName,
        style: blackTextStyle.copyWith(
          fontSize: 16,
          fontWeight: bold,
        ),
      ),
    );
  }
}
