import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trendspot_newes_app/core/utils/app_router.dart';
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
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kSeeMoreView);
          },
          child: Text(
            'See More',
            style: AppStyles.interStyleSemiBold16(context),
          ),
        )
      ],
    );
  }
}
