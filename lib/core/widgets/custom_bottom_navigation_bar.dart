import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:trendspot_newes_app/core/utils/app_router.dart';
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
              tabs: [
                GButton(
                  icon: FontAwesomeIcons.house,
                  text: 'Home',
                  iconColor: Colors.white,
                  onPressed: () {
                    GoRouter.of(context).push('/');
                  },
                ),
                GButton(
                  icon: FontAwesomeIcons.earthAsia,
                  text: 'Explore',
                  iconColor: Colors.white,
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSeeMoreView);
                  },
                ),
                 GButton(
                  icon: FontAwesomeIcons.bookmark,
                  text: 'Bookmark',
                  iconColor: Colors.white,
                   onPressed: () {
                    GoRouter.of(context).push(AppRouter.kExpolreSingleItemDiplay);
                  },
                ),
                const GButton(
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


 // onTabChange: (value) {
              //   if (value == 0) {
              //     setState(() {
              //       GoRouter.of(context).push('/');
              //     });
              //   } else if (value == 1) {
              //     setState(() {
              //       GoRouter.of(context).push(AppRouter.kSeeMoreView);
              //     });
              //   } else {
              //     setState(() {
              //       GoRouter.of(context).push(AppRouter.kSeeMoreView);
              //     });
              //   }
              // },