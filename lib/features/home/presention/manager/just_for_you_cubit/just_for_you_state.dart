part of 'just_for_you_cubit.dart';

@immutable
sealed class JustForYouState {}

final class JustForYouInitial extends JustForYouState {}

final class JustForYouSuccess extends JustForYouState {
  final List<ArticleModel> news;

  JustForYouSuccess({required this.news});
}

final class JustForYouFaliure extends JustForYouState {
  final String errMsg;

  JustForYouFaliure({required this.errMsg});
}

final class JustForYouLoading extends JustForYouState {}
