import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_scroll_item.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: CustomScrollItem(),
          );
        });
  }
}
