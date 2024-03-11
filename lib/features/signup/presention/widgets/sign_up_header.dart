import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
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
          'Sign up',
          style: AppStyles.interStyleSemiBold24(context),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Join us ',
          style: AppStyles.interStyleRegular16(context),
        )
      ],
    );
  }
}
