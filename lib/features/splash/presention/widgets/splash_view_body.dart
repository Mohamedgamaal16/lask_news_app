import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trendspot_newes_app/core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kLogInView);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/Logo.png');
  }
}
