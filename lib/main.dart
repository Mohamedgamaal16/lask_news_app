import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendspot_newes_app/core/api/dio_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/cache/cahche_helper.dart';
import 'package:trendspot_newes_app/core/utils/app_router.dart';
import 'package:trendspot_newes_app/features/explore/data/repos/explore_repo_implemntion.dart';
import 'package:trendspot_newes_app/features/explore/presention/manager/explore%20article%20cubit/explore_article_cubit.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(
    BlocProvider(
      create: (context) => ExploreArticleCubit(ExploreRepoImplemntion(
          api: DioConsumer(
              dio: Dio(),
              exceptionType: 'News',
              baseUrl: EndPoint.justForYouBaseUrl)))..displayExploreData(),
      child: const LaskNewsApp(),
    ),
  );
  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => const LaskNewsApp(),
  //   ),
  // );
}

class LaskNewsApp extends StatelessWidget {
  const LaskNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
