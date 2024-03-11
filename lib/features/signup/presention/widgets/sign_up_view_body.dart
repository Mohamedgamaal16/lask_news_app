import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/widgets/custom_button.dart';
import 'package:trendspot_newes_app/core/widgets/custom_input_field.dart';
import 'package:trendspot_newes_app/features/signup/presention/widgets/sign_up_header.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SignUpHeader(),
          SizedBox(
            height: 32,
          ),
          CustomInputField(
            labelText: 'Name',
            hintText: 'Write your Name',
            prefixIcon: Icon(Icons.email_outlined),
          ),
          SizedBox(
            height: 16,
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
            labelText: 'Phone Number',
            hintText: 'Write your password',
            prefixIcon: Icon(Icons.lock_outline),
            suffixIcon: true,
            obscureText: true,
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
            height: 16,
          ),
          CustomInputField(
            labelText: 'Confirm Password',
            hintText: 'confirm your password',
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
                color: Color(0xFF96A0A6),
                labeName: 'Sign up',
              )),
            ],
          ),
        ]);
  }
}
