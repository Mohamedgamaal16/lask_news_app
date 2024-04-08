import 'package:dartz/dartz.dart';
import 'package:trendspot_newes_app/core/api/api_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/cache/cahche_helper.dart';
import 'package:trendspot_newes_app/core/errors/exceptions.dart';
import 'package:trendspot_newes_app/features/profile/data/models/profile_model.dart';
import 'package:trendspot_newes_app/features/profile/data/repos/profile_repo.dart';

class ProfileRepoImplemntion implements ProfileRepo {
  final ApiConsumer api;

  ProfileRepoImplemntion({required this.api});
  @override
  Future<Either<String, UserModel>> fetchProfileData() async {
    try {
      final response = await api.get(EndPoint.getUserDataEndPoint(
          CacheHelper().getData(key: RegestrionApiKey.id)));
      UserModel user = UserModel.fromJson(response);
      return Right(user);
    } on ServerRegesterException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }
}
