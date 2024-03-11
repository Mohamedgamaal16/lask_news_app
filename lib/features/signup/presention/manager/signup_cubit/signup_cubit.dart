import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/errors/exceptions.dart';
import 'package:trendspot_newes_app/features/signup/data/signup_model.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.apiConsumer) : super(SignupInitial());
  XFile? profilePic;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController signUpconfirmPassword = TextEditingController();
  TextEditingController signUpName = TextEditingController();
  TextEditingController signUpPhoneNumber = TextEditingController();
  final ApiConsumer apiConsumer;
  signUp() async {
    emit(SignupLoading());
    try {
      final response = await apiConsumer.post(EndPoint.signUp, data: {
        ApiKey.name: signUpName.text,
        ApiKey.phone: signUpPhoneNumber.text,
        ApiKey.email: signUpEmail.text,
        ApiKey.password: signUpPassword.text,
        ApiKey.confirmPassword: signUpconfirmPassword.text,
      });
      final signUpModel = SignUpModel.fromJson(response);
      emit(SignupSucces(message: signUpModel.message));
    } on ServerExceptions catch (e) {
      emit(SignupFaliure(errMSg: e.errorModel.errorMessage));
    }
  }

  uploadProfilePic(XFile image) {
    profilePic = image;
    emit(UploadProfilePic());
  }
}
