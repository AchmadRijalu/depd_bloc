import 'package:depd_bloc/common/common.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RestaurantListItem extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? description;
  final String? city;
  final double? rating;
  final VoidCallback? onTap;
  const RestaurantListItem(
      {super.key,
      this.onTap,
      required this.imageUrl,
      this.name,
      this.description,
      this.city,
      this.rating});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      "https://restaurant-api.dicoding.dev/images/medium/$imageUrl",
                      fit: BoxFit.fill,
                    ))),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name ?? "Restaurant Name",
                        style: blackTextStyle.copyWith(
                            fontWeight: medium, fontSize: 14),
                      ),
                      Row(children: [
                        Icon(Icons.star_half, color: redColor),
                        const Gap(2),
                        Text(
                          "${rating ?? 0}",
                          style: blackTextStyle.copyWith(
                              fontWeight: medium, fontSize: 14),
                        ),
                      ])
                    ],
                  ),
                  Column(children: [
                    Text(
                      description ?? "Restaurant Description",
                      style: greyTextStyle.copyWith(
                          fontWeight: light, fontSize: 10),
                      maxLines:
                          3, // Adjust the number of lines you want to display
                      overflow: TextOverflow
                          .ellipsis, // Show ellipsis (...) for overflow
                    ),
                  ]),
                  Row(
                    children: [
                      Text(city ?? "Restaurant City",
                          style: blueTextStyle.copyWith(
                              fontWeight: bold, fontSize: 12)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
