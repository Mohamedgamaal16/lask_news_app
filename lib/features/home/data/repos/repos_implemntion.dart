import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/errors/exceptions.dart';
import 'package:trendspot_newes_app/features/home/data/models/just_for_you_model.dart';
import 'package:trendspot_newes_app/features/home/data/repos/home_repos.dart';

class HomeRepoimplemntion implements HomeRepos {
  final ApiConsumer api;

  HomeRepoimplemntion({required this.api});
  @override
  Future<Either<String, List<JustForYouModel>>> fetchJustForYouNews() async {
    try {
      final response = await api.get(EndPoint.topHeadlines, queryParamters: {
        'country': 'us',
        'apiKey': '61af8e89ce75458f81a0ddeab9824a9d'
      });

           List<JustForYouModel> articles = [];
for (var item in response['articles']) {
        articles.add(JustForYouModel.fromJson(item));
      }
      return Right(articles);
    } on ServerRegesterException catch (e) {
      return  Left(e.errModel.errorMessage);
    }
  }
}

