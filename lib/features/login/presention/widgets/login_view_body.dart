import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/features/login/presention/widgets/sign_in_header.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [SignInHeader(),]);
  }
}
