import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/core/models/article_model.dart';

abstract class SearchRepos {
  Future<Either<String, List<ArticleModel>>> fetchSearchNews({required String search});

}
