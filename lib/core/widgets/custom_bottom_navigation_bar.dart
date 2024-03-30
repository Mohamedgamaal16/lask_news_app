import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';

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
      body: Stack(
        fit: StackFit.expand,
        children: [
          _widgetsOptions.elementAt(_currentIndex),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 10),
                child: Container(
                  color: Colors.transparent, // Set to transparent
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: GNav(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      activeColor: Colors.white,
                      textStyle: AppStyles.interStyleSemiBold12(context),
                      gap: 8,
                      tabBackgroundColor: const Color(0xFF231F20),
                      backgroundColor: Colors.transparent,
                      onTabChange: _changePages,
                      tabs: const [
                        GButton(
                          icon: FontAwesomeIcons.house,
                          text: 'Home',
                          iconColor: Colors.black,
                        ),
                        GButton(
                          icon: FontAwesomeIcons.earthAsia,
                          text: 'Explore',
                          iconColor: Colors.black,
                        ),
                        GButton(
                          icon: FontAwesomeIcons.bookmark,
                          text: 'Bookmark',
                          iconColor: Colors.black,
                        ),
                        GButton(
                          icon: FontAwesomeIcons.user,
                          text: 'Profile',
                          iconColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _changePages(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
