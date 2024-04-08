import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/features/profile/presention/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.all(18.0),
              child: ProfileViewBody(),
            )));
  }
}
