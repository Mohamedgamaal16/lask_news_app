import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/constants.dart';
import 'package:trendspot_newes_app/features/splash/presention/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: SplashViewBody()),
      backgroundColor: AppColors.kPrimaryColor,
    );
  }
}
