import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/constants.dart';
import 'package:trendspot_newes_app/features/login/presention/widgets/login_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.kPrimaryColor, body: LogInViewBody()),
    );
  }
}
