import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

import 'package:trendspot_newes_app/features/signup/data/repos/signup_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.signUpRepo) : super(SignupInitial());
  XFile? profilePic;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController signUpconfirmPassword = TextEditingController();
  TextEditingController signUpName = TextEditingController();
  TextEditingController signUpPhoneNumber = TextEditingController();
  final SignUpRepo signUpRepo;
  signUp() async {
    emit(SignupLoading());
    final response = await signUpRepo.signUp(
        signUpName: signUpName.text,
        signUpPhoneNumber: signUpPhoneNumber.text,
        signUpEmail: signUpEmail.text,
        signUpPassword: signUpPassword.text,
        signUpconfirmPassword: signUpconfirmPassword.text,
        profilePic: profilePic!);
    response.fold((errMsg) => emit(SignupFaliure(errMSg: errMsg)),
        (SignUpModel) => emit(SignupSucces(message: SignUpModel.message)));
  }

  uploadProfilePic(XFile image) {
    profilePic = image;
    emit(UploadProfilePic());
  }
}
