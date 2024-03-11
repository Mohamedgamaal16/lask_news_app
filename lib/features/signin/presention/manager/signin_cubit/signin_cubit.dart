// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/cache/cahche_helper.dart';
import 'package:trendspot_newes_app/core/errors/exceptions.dart';
import 'package:trendspot_newes_app/features/signin/data/models/signin_model.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.api) : super(SigninInitial());
  GlobalKey<FormState> signInFormKey = GlobalKey();
  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();
  SignInModel? user;
  final ApiConsumer api;
  signIn() async {
    emit(SigninLoading());
    try {
      final response = await api.post(EndPoint.signIn, data: {
        ApiKey.email = signInEmail.text,
        ApiKey.password = signInPassword.text
      });
      user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user!.token);
      CacheHelper().saveData(key: ApiKey.token, value: user!.token);
      CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);

      emit(SigninSucsess());
    } on ServerExceptions catch (e) {
      emit(SigninFaliure(errMsg: e.errorModel.errorMessage));
    }
  }
}
