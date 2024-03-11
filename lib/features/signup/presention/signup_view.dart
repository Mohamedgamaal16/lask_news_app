import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/features/signup/presention/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.all(18.0),
            child: SingleChildScrollView(child: SignUpViewBody()),
          )),
    );
    
  }
}
