import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/features/home/data/models/just_for_you_model.dart';

class CustomArticleItemText extends StatelessWidget {
  const CustomArticleItemText({
    super.key,
    required this.title,
    required this.author,
  });
  final String title, author;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.interStyleSemiBold18(context),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          author,
          style: AppStyles.interStyleRegular12(context),
           maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
