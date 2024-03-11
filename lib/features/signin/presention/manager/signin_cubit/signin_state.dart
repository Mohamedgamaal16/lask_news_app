part of 'signin_cubit.dart';

@immutable
abstract class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninSucsess extends SigninState {}

final class SigninFaliure extends SigninState {
  final String errMsg;

  SigninFaliure({required this.errMsg});
}
