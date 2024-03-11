import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trendspot_newes_app/core/utils/app_router.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/core/widgets/custom_button.dart';
import 'package:trendspot_newes_app/core/widgets/custom_input_field.dart';
import 'package:trendspot_newes_app/features/signin/presention/manager/signin_cubit/signin_cubit.dart';
import 'package:trendspot_newes_app/features/signin/presention/widgets/sign_in_header.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSucsess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("success"),
            ),
          );
          GoRouter.of(context).push(AppRouter.kHomeView);
        }else if (state is SigninFaliure){ ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errMsg),
              ),
            );}
      },
      builder: (context, state) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SignInHeader(),
              const SizedBox(
                height: 32,
              ),
              CustomInputField(
                controller: context.read<SigninCubit>().signInEmail,
                labelText: 'Email',
                hintText: 'Write your email',
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomInputField(
                controller: context.read<SigninCubit>().signInPassword,
                labelText: 'Password',
                hintText: 'Write your password',
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
                      child: state is SigninLoading
                                ? const CircularProgressIndicator() :CustomButton(
                        onPressed: () {
                          context.read<SigninCubit>().signIn();
                        },
                    color: const Color(0xFF96A0A6),
                    labeName: 'Sign in',
                  )),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const CustomFooter(),
              const SizedBox(
                height: 55,
              )
            ]);
      },
    );
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
        GestureDetector(
          onTap: () {
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
