part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupSucces extends SignupState {
  final String message;

  SignupSucces({required this.message});
}

final class SignupLoading extends SignupState {}

final class SignupFaliure extends SignupState {
  final String errMSg;

  SignupFaliure({required this.errMSg});
}
final class UploadProfilePic extends SignupState {}
