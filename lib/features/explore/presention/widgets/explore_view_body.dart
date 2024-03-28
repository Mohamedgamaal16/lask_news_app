import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/widgets/custom_app_bar.dart';
import 'package:trendspot_newes_app/features/explore/presention/widgets/custom_articles_list.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 32.0,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.only(right: 32, bottom: 24, top: 24),
                  child: CustomAppBar(
                    title: 'Explore',
                  ))),
          SliverFillRemaining(child: CustomArticlesList()),
        ],
      ),
    );
  }
}
