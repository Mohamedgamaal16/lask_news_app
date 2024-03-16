import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/constants.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.kPrimaryColor,
        child: const Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 32.0, right: 32, bottom: 24, top: 24),
              child: CustomAppBar(),
            ),
            
          ],
        ));
  }
}
