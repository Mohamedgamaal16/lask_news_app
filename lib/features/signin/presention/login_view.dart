import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/api/dio_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/features/signin/data/repos/signin_repo.dart';
import 'package:trendspot_newes_app/features/signin/presention/manager/signin_cubit/signin_cubit.dart';
import 'package:trendspot_newes_app/features/signin/presention/widgets/login_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: BlocProvider(
              create: (context) => SigninCubit(SignInRepo(
                  api: DioConsumer(
                      dio: Dio(), baseUrl: EndPoint.regestrionBaseUrl))),
              child: const SingleChildScrollView(child: LogInViewBody()),
            ),
          )),
    );
  }
}
