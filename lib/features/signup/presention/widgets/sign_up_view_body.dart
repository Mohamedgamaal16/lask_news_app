import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trendspot_newes_app/core/utils/app_router.dart';
import 'package:trendspot_newes_app/core/widgets/custom_button.dart';
import 'package:trendspot_newes_app/core/widgets/custom_input_field.dart';
import 'package:trendspot_newes_app/features/signup/presention/manager/signup_cubit/signup_cubit.dart';
import 'package:trendspot_newes_app/features/signup/presention/widgets/pick_image_widget.dart';
import 'package:trendspot_newes_app/features/signup/presention/widgets/sign_up_header.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSucces) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.message),
          ));
          GoRouter.of(context).push(AppRouter.kBottomNavBar);
        } else if (state is SignupFaliure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errMSg),
          ));
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<SignupCubit>().signUpFormKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SignUpHeader(),
                const SizedBox(
                  height: 32,
                ),
                const Center(child: PickImageWidget()),
                const SizedBox(
                  height: 32,
                ),
                CustomInputField(
                  controller: context.read<SignupCubit>().signUpName,
                  labelText: 'Name',
                  hintText: 'Write your Name',
                  prefixIcon: const Icon(Icons.man_2_outlined),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomInputField(
                  controller: context.read<SignupCubit>().signUpEmail,
                  labelText: 'Email',
                  hintText: 'Write your email',
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomInputField(
                  controller: context.read<SignupCubit>().signUpPhoneNumber,
                  labelText: 'Phone Number',
                  hintText: 'Write your phone number',
                  prefixIcon: const Icon(Icons.phone_android_outlined),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomInputField(
                  controller: context.read<SignupCubit>().signUpPassword,
                  labelText: 'Password',
                  hintText: 'Write your password',
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: true,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomInputField(
                  controller: context.read<SignupCubit>().signUpconfirmPassword,
                  labelText: 'Confirm Password',
                  hintText: 'confirm your password',
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: true,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                        child: state is SignupLoading
                            ? const CircularProgressIndicator()
                            : CustomButton(
                                onPressed: () {
                                  context.read<SignupCubit>().signUp();
                                },
                                color: const Color(0xFF96A0A6),
                                labeName: 'Sign up',
                              )),
                  ],
                ),
              ]),
        );
      },
    );
  }
}
