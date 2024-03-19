import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/errors/exceptions.dart';
import 'package:trendspot_newes_app/core/functions/upload_image_to_api.dart';
import 'package:trendspot_newes_app/features/signup/data/signup_model.dart';
import 'package:trendspot_newes_app/features/signup/presention/manager/signup_cubit/signup_cubit.dart';

class SignUpRepo {
  final ApiConsumer api;

  SignUpRepo({required this.api});

  Future<Either<String, SignUpModel>> signUp({
    required String signUpName,
    required String signUpPhoneNumber,
    required String signUpEmail,
    required String signUpPassword,
    required String signUpconfirmPassword,
    required XFile profilePic,
  }) async {
    try {
      final response = await api.post(EndPoint.signUp, isFormData: true, data: {
        RegestrionApiKey.name: signUpName,
        RegestrionApiKey.phone: signUpPhoneNumber,
        RegestrionApiKey.email: signUpEmail,
        RegestrionApiKey.password: signUpPassword,
        RegestrionApiKey.confirmPassword: signUpconfirmPassword,
        RegestrionApiKey.location:
            '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}',
        RegestrionApiKey.profilePic: await uploadImageToAPI(profilePic)
      });
      final signUpModel = SignUpModel.fromJson(response);

      return Right(signUpModel);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }
}
