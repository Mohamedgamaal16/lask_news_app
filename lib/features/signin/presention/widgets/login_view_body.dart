import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trendspot_newes_app/core/utils/app_router.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/core/widgets/custom_button.dart';
import 'package:trendspot_newes_app/core/widgets/custom_input_field.dart';
import 'package:trendspot_newes_app/features/signin/presention/widgets/sign_in_header.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SignInHeader(),
          SizedBox(
            height: 32,
          ),
          CustomInputField(
            labelText: 'Email',
            hintText: 'Write your email',
            prefixIcon: Icon(Icons.email_outlined),
          ),
          SizedBox(
            height: 16,
          ),
          CustomInputField(
            labelText: 'Password',
            hintText: 'Write your password',
            prefixIcon: Icon(Icons.lock_outline),
            suffixIcon: true,
            obscureText: true,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                  child: CustomButton(
                color: Color(0xFF96A0A6), labeName: 'Sign in',
              )),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          CustomFooter(),
          SizedBox(
            height: 55,
          )
        ]);
  }
}

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: AppStyles.interStyleRegular16(context)
              .copyWith(color: const Color(0xFF999999)),
        ),
        GestureDetector(onTap: () {
           GoRouter.of(context).push(AppRouter.kSignUp);
        },
          child: Text(
            'Sign Up',
            style: AppStyles.interStyleSemiBold16(context)
                .copyWith(color: Colors.black),
          ),
        )
      ],
    );
  }
}
