import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendspot_newes_app/core/api/dio_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:trendspot_newes_app/features/category/data/repo/category_repos_implemntion.dart';
import 'package:trendspot_newes_app/features/category/presention/manager/category_cubit/category_cubit.dart';
import 'package:trendspot_newes_app/features/category/presention/widgets/category_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SafeArea(
          child: BlocProvider(
        create: (context) => CategoryCubit(CategoryRpoImplemntion(
            api: DioConsumer(
                dio: Dio(),
                exceptionType: 'News',
                baseUrl: EndPoint.justForYouBaseUrl)))
          ..displayCategoryData(category: title),
        child: CategoryViewBody(
          title: title,
        ),
      )),
    );
  }
}
