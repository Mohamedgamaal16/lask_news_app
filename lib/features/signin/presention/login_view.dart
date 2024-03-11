import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/features/signin/presention/widgets/login_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white, 
          body: Padding(
            padding: EdgeInsets.all(18.0),
            child: LogInViewBody(),
          )),
    );
  }
}
