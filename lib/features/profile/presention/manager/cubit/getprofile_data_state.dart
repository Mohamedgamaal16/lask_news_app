part of 'getprofile_data_cubit.dart';

@immutable
sealed class GetprofileDataState {}

final class GetprofileDataInitial extends GetprofileDataState {}

final class GetprofileDataSucces extends GetprofileDataState {
  final UserModel user;

  GetprofileDataSucces({required this.user});
}

final class GetprofileDataLoading extends GetprofileDataState {}

final class GetprofileDataFaliure extends GetprofileDataState {
  final String errMsg;

  GetprofileDataFaliure({required this.errMsg});
}
