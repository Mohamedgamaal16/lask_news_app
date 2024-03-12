// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/cache/cahche_helper.dart';
import 'package:trendspot_newes_app/core/errors/exceptions.dart';
import 'package:trendspot_newes_app/features/signin/data/models/signin_model.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:trendspot_newes_app/features/signin/data/repos/signin_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.signInRepo) : super(SigninInitial());
  GlobalKey<FormState> signInFormKey = GlobalKey();
  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();
  SignInModel? user;
  final SignInRepo signInRepo;
  signIn() async {
    emit(SigninLoading());
    final response = await signInRepo.signIn(
        email: signInEmail.text, password: signInPassword.text);
    response.fold((errMsg) => emit(SigninFaliure(errMsg: errMsg)),
        (SignInModel) => emit(SigninSucsess()));
  }
}
