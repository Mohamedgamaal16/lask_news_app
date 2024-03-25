import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/dio_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/utils/custom_bottom_navigation_bar.dart';
import 'package:trendspot_newes_app/features/explore/data/repos/explore_repo_implemntion.dart';
import 'package:trendspot_newes_app/features/explore/presention/manager/explore%20article%20cubit/explore_article_cubit.dart';
import 'package:trendspot_newes_app/core/widgets/custom_app_bar.dart';
import 'package:trendspot_newes_app/features/explore/presention/widgets/explore_view_body.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: BlocProvider(
          create: (context) => ExploreArticleCubit(ExploreRepoImplemntion(
              api: DioConsumer(
                  exceptionType: 'News',
                  baseUrl: EndPoint.justForYouBaseUrl,
                  dio: Dio())))..displayExploreData(),
          child: const ExploreViewBody(),
        ),
      ),
    );
  }
}
