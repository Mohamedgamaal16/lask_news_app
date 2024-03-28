import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/errors/exceptions.dart';
import 'package:trendspot_newes_app/core/models/article_model.dart';
import 'package:trendspot_newes_app/features/home/data/repos/home_repos.dart';

class HomeRepoimplemntion implements HomeRepos {
  final ApiConsumer api;

  HomeRepoimplemntion({required this.api});
  @override
  Future<Either<String, List<ArticleModel>>> fetchJustForYouNews() async {
    try {
      final response = await api.get(EndPoint.topHeadlines, queryParamters: {
        'country': 'us',
        'apiKey': '61af8e89ce75458f81a0ddeab9824a9d'
      });

      List<ArticleModel> articles = [];
      for (var item in response['articles']) {
        articles.add(ArticleModel.fromJson(item));
      }
      return Right(articles);
    } on ServerNewsExceptions catch (e) {
      return Left(e.errModel.message);
    }
  }

  @override
  Future<Either<String, List<ArticleModel>>> fectchCategoriesNews(
      {required String category}) async {
    try {
      final response = await api.get(EndPoint.categories(category),
          queryParamters: {
            'country': 'us',
            'apiKey': '61af8e89ce75458f81a0ddeab9824a9d'
          });
      List<ArticleModel> articles = [];

      for (var item in response['articles']) {
        articles.add(ArticleModel.fromJson(item));
      }
      return Right(articles);
    } on ServerNewsExceptions catch (e) {
      return Left(e.errModel.message);
    }
  }
}
