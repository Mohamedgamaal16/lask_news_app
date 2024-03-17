import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/constants.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_app_bar.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_scroll_item.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/items_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 32.0,),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.only( right: 32, bottom: 24, top: 24),
              child: CustomAppBar(),
            ),
          ),
          SliverToBoxAdapter(
              child: AspectRatio(aspectRatio: 1, child: ItemsList())),
        ],
      ),
    );
  }
}
