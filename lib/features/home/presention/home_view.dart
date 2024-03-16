import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: HomeViewBody());
  }
}