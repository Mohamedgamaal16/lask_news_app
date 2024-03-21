import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendspot_newes_app/core/api/dio_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/features/signup/data/repos/signup_repo.dart';
import 'package:trendspot_newes_app/features/signup/presention/manager/signup_cubit/signup_cubit.dart';
import 'package:trendspot_newes_app/features/signup/presention/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
                child: BlocProvider(
              create: (context) => SignupCubit(SignUpRepo(
                  api: DioConsumer(
                      baseUrl: EndPoint.regestrionBaseUrl, dio: Dio(), exceptionType: 'sign'))),
              child: const SignUpViewBody(),
            )),
          )),
    );
  }
}
