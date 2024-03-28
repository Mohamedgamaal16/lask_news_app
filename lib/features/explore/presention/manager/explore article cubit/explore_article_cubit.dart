import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trendspot_newes_app/features/explore/data/models/article_model.dart';
import 'package:trendspot_newes_app/features/explore/data/repos/explore_repo.dart';

part 'explore_article_state.dart';

class ExploreArticleCubit extends Cubit<ExploreArticleState> {
  ExploreArticleCubit(this.exploreRepo) : super(ExploreArticleInitial());
  final ExploreRepo exploreRepo;
  
  Future<void> displayExploreData() async {
    emit(ExploreArticleLoading());
    var response = await exploreRepo.fetchExploreArticles();
    response.fold(
      (errMsg) => emit(ExploreArticleFaliure(errMsg: errMsg)),
      (news) => emit(ExploreArticleSuccess(news: news)),
    );
  }
}
