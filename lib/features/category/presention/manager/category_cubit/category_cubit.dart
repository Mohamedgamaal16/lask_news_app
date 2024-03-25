import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trendspot_newes_app/features/category/data/models/category_model.dart';
import 'package:trendspot_newes_app/features/category/data/repo/category_repo.dart';
import 'package:trendspot_newes_app/features/home/data/repos/home_repos.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.categoryRepo) : super(CategoryInitial());

  final CategoryRepo categoryRepo;
  Future<void> displayCategoryData({required String category}) async {
    emit(CategoryLoading());
    var response = await categoryRepo.fectchCategoriesNews(category: category);
    response.fold(
      (errMsg) => emit(CategoryFaliure(errMsg: errMsg)),
      (news) => emit(CategorySuccess(news: news)),
    );
  }
}
