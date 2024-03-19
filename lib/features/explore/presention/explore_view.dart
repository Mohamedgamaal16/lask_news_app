import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/custom_bottom_navigation_bar.dart';
import 'package:trendspot_newes_app/features/explore/presention/widgets/see_more_view_body.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: ExploreViewBody(),
    );
  }
}
