import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 13,
        ),
        Text(
          'Sign In',
          style: AppStyles.interStyleSemiBold24(context),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Stay informed effortlessly. Sign in and explore a world of news',
          style: AppStyles.interStyleRegular16(context),
        )
      ],
    );
  }
}
