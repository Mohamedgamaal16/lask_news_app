import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/features/explore/data/models/article_model.dart';

abstract class ExploreRepo {
  Future<Either<String, List<ArticleModel>>> fetchExploreArticles();

}



