import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:trendspot_newes_app/features/home/data/models/just_for_you_model.dart';
import 'package:trendspot_newes_app/features/home/data/repos/home_repos.dart';

part 'just_for_you_state.dart';

class JustForYouCubit extends Cubit<JustForYouState> {
  JustForYouCubit(this.justForYouRepo) : super(JustForYouInitial());
  final HomeRepos justForYouRepo;
  Future<void> displayJustForYouData() async {
    emit(JustForYouLoading());
    var response = await justForYouRepo.fetchJustForYouNews();
    response.fold(
      (errMsg) => emit(JustForYouFaliure(errMsg: errMsg)),
      (news) => emit(JustForYouSuccess(news: news)),
    );
  }
}
