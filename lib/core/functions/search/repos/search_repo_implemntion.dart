// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/errors/exceptions.dart';
import 'package:trendspot_newes_app/core/functions/search/repos/search_repo.dart';
import 'package:trendspot_newes_app/core/models/article_model.dart';

class SeacrhRepoImplemntion implements SearchRepos {
  final ApiConsumer api;
  SeacrhRepoImplemntion({
    required this.api,
  });
  @override
  Future<Either<String, List<ArticleModel>>> fetchSearchNews(
      {required String search}) async {
    try {
  final response = await api.get(EndPoint.search(search), queryParamters: {
    // 'country': 'us',
    'apiKey': '61af8e89ce75458f81a0ddeab9824a9d'
  });
  List<ArticleModel> articles = [];
  for (var element in response['articles']) {
    articles.add(ArticleModel.fromJson(element));
  }return Right(articles);
    } on ServerNewsExceptions catch (e) {
      return Left(e.errModel.message);
    }
  }
}
