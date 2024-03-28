part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchSuccess extends SearchState {
   List<ArticleModel> news;

  SearchSuccess({required this.news});
}

final class SearchLoading extends SearchState {}

final class SearchFaliure extends SearchState {
  final String errMsg;

  SearchFaliure({required this.errMsg});
}
