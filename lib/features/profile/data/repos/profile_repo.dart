import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/features/profile/data/models/profile_model.dart';

abstract class ProfileRepo {
  Future<Either<String, UserModel>> fetchProfileData();

}
