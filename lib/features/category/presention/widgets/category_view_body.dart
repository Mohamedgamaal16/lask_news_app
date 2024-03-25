import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/widgets/custom_app_bar.dart';
import 'package:trendspot_newes_app/features/category/presention/widgets/category_item_list.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 32.0,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 32, bottom: 24, top: 24),
              child: CustomAppBar(
                title: title,
              ),
            ),
          ),
          const SliverFillRemaining(child: CategoryItemList()),
        ],
      ),
    );
  }
}
