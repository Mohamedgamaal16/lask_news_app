import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendspot_newes_app/core/api/dio_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/features/home/data/repos/home_repos_implemntion.dart';
import 'package:trendspot_newes_app/features/home/presention/manager/just_for_you_cubit/just_for_you_cubit.dart';
import 'package:trendspot_newes_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:trendspot_newes_app/features/home/presention/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: SafeArea(
            child: BlocProvider(
          create: (context) => JustForYouCubit(HomeRepoimplemntion(
              api: DioConsumer(
                  baseUrl: EndPoint.newsBaseUrl,
                  dio: Dio(),
                  exceptionType: 'News')))
            ..displayJustForYouData(),
          child: const HomeViewBody(),
        )));
  }
}
