import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/core/utils/constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
      child: Container(
        color: AppColors.kBlueColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ClipRRect(
            child: GNav(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              activeColor: Colors.white,
              textStyle: AppStyles.interStyleSemiBold12(context),
              gap: 8,
              tabBackgroundColor: Colors.white24,
              backgroundColor: Colors.transparent,
              tabs: const [
                GButton(
                  icon: FontAwesomeIcons.house,
                  text: 'Home',
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: FontAwesomeIcons.earthAsia,
                  text: 'Explore',
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: FontAwesomeIcons.bookmark,
                  text: 'Bookmark',
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: FontAwesomeIcons.user,
                  text: 'Profile',
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
