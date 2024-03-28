part of 'explore_article_cubit.dart';

@immutable
sealed class ExploreArticleState {}

final class ExploreArticleInitial extends ExploreArticleState {}

final class ExploreArticleSuccess extends ExploreArticleState {
  final List<ArticleModel> news;

  ExploreArticleSuccess({required this.news});
}

final class ExploreArticleFaliure extends ExploreArticleState {
  final String errMsg;

  ExploreArticleFaliure({required this.errMsg});
}

final class ExploreArticleLoading extends ExploreArticleState {}
