import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/core/models/article_model.dart';

abstract class HomeRepos {
  Future<Either<String, List<ArticleModel>>> fetchJustForYouNews();
    Future<Either<String, List<ArticleModel>>> fectchCategoriesNews({required String category});

}
