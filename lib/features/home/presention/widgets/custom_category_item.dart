import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/features/home/data/just_for_you_model.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/custom_text.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/just_for_you_item_list.dart';

class CustomCategoryScrollItem extends StatelessWidget {
  const CustomCategoryScrollItem({
    super.key,
    required this.title,
    required this.author,
  });
  final String title, author;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 269 / 385,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 269 / 269,
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
          CustomText(
            title: title,
            author: author,
          )
        ],
      ),
    );
  }
}
