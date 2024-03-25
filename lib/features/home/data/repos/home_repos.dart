import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/features/home/data/models/just_for_you_model.dart';

abstract class HomeRepos {
  Future<Either<String, List<JustForYouModel>>> fetchJustForYouNews();
    Future<Either<String, List<JustForYouModel>>> fectchCategoriesNews({required String category});

}
