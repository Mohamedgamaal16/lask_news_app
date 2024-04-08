import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/business.jpg"),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(78),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Dianne Russell',
              style: AppStyles.interStyleSemiBold24(context),
            ),
          )
        ],
      ),
    );
  }
}
