import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';

import 'package:trendspot_newes_app/core/utils/constants.dart';
import 'package:trendspot_newes_app/features/explore/presention/explore_view.dart';
import 'package:trendspot_newes_app/features/home/presention/home_view.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _widgetsOptions = [const HomeView(), const ExploreView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetsOptions.elementAt(_currentIndex),
        bottomNavigationBar: ClipRRect(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  activeColor: Colors.white,
                  textStyle: AppStyles.interStyleSemiBold12(context),
                  gap: 8,
                  tabBackgroundColor: Colors.white24,
                  backgroundColor: Colors.transparent,
                  onTabChange: _changePages,
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
        ));
  }

  // );
  void _changePages(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}

 
// }


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




            //   GNav(
            //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            //   activeColor: Colors.white,
            //   textStyle: AppStyles.interStyleSemiBold12(context),
            //   gap: 8,
            //   tabBackgroundColor: Colors.white24,
            //   backgroundColor: Colors.transparent,
            //   tabs: [
            //     GButton(
            //       icon: FontAwesomeIcons.house,
            //       text: 'Home',
            //       iconColor: Colors.white,
            //       onPressed: () {
            //         GoRouter.of(context).push('/');
            //       },
            //     ),
            //     GButton(
            //       icon: FontAwesomeIcons.earthAsia,
            //       text: 'Explore',
            //       iconColor: Colors.white,
            //       onPressed: () {
            //         GoRouter.of(context).push(AppRouter.kSeeMoreView);
            //       },
            //     ),
            //      GButton(
            //       icon: FontAwesomeIcons.bookmark,
            //       text: 'Bookmark',
            //       iconColor: Colors.white,
            //        onPressed: () {
            //         GoRouter.of(context).push(AppRouter.kExpolreSingleItemDiplay);
            //       },
            //     ),
            //     const GButton(
            //       icon: FontAwesomeIcons.user,
            //       text: 'Profile',
            //       iconColor: Colors.white,
            //     ),
            //   ],
            // ),