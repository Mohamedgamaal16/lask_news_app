import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_category_item.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_for_you_scroll_item.dart';

class CategoriesItemsList extends StatelessWidget {
  const CategoriesItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 269 / 385,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: CustomCategoryScrollItem(
                title: "Experience the Serenity of Japan's Traditional Countryside",
                author: 'Technology',
              ),
            );
          }),
    );
  }
}
