import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';

class JustForYouHeader extends StatelessWidget {
  const JustForYouHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Just For You',
          style: AppStyles.interStyleSemiBold24(context),
        ),
        const Spacer(),
        Text(
          'See More',
          style: AppStyles.interStyleSemiBold16(context),
        )
      ],
    );
  }
}
