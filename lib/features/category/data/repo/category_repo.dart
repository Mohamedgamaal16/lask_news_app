import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/features/category/data/models/category_model.dart';

abstract class CategoryRepo {
  Future<Either<String, List<CategoryModel>>> fectchCategoriesNews(
      {required String category});
}
