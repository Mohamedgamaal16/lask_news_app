part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

final class CategorySuccess extends CategoryState {
  final List<CategoryModel> news;

  CategorySuccess({required this.news});
}

final class CategoryFaliure extends CategoryState {
  final String errMsg;

  CategoryFaliure({required this.errMsg});
}

final class CategoryLoading extends CategoryState {}
