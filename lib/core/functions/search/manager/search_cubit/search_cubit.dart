import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trendspot_newes_app/core/functions/search/repos/search_repo.dart';
import 'package:trendspot_newes_app/core/models/article_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepos) : super(SearchInitial());
   SearchRepos searchRepos;

  Future<void> displaySearchData({required String search}) async {
    var response = await searchRepos.fetchSearchNews(search: search);
    response.fold(
      (errMsg) => emit(SearchFaliure(errMsg: errMsg)),
      (news) => emit(SearchSuccess(news: news)),
    );
  }
}
