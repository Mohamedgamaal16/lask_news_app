import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/errors/exceptions.dart';
import 'package:trendspot_newes_app/features/category/data/models/category_model.dart';
import 'package:trendspot_newes_app/features/category/data/repo/category_repo.dart';

class CategoryRpoImplemntion implements CategoryRepo {
  final ApiConsumer api;

  CategoryRpoImplemntion({required this.api});
  @override
  Future<Either<String, List<CategoryModel>>> fectchCategoriesNews(
      {required String category}) async {
    try {
      final response = await api.get(EndPoint.categories(category),
          queryParamters: {
            'country': 'us',
            'apiKey': '61af8e89ce75458f81a0ddeab9824a9d'
          });
      List<CategoryModel> articles = [];

      for (var item in response['articles']) {
        articles.add(CategoryModel.fromJson(item));
      }
      return Right(articles);
    } on ServerNewsExceptions catch (e) {
      return Left(e.errModel.message);
    }
  }
}
