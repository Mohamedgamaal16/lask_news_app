import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendspot_newes_app/core/api/dio_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/features/profile/data/repos/profile_repo_implemntion.dart';
import 'package:trendspot_newes_app/features/profile/presention/manager/cubit/getprofile_data_cubit.dart';
import 'package:trendspot_newes_app/features/profile/presention/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: BlocProvider(
                create: (context) => GetprofileDataCubit(ProfileRepoImplemntion(
                    api: DioConsumer(
                        dio: Dio(),
                        exceptionType: 'sign',
                        baseUrl: EndPoint.regestrionBaseUrl)))
                  ..displayUserData(),
                child: const ProfileViewBody(),
              ),
            )));
  }
}
