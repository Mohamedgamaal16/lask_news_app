import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_text.dart';

class CustomScrollItem extends StatelessWidget {
  const CustomScrollItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 269 / 385,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/images/language-studies-japan-1220x732.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomText()
        ],
      ),
    );
  }
}
