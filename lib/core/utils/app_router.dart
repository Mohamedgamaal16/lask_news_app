import 'package:go_router/go_router.dart';
import 'package:trendspot_newes_app/features/signin/presention/login_view.dart';
import 'package:trendspot_newes_app/features/signup/presention/signup_view.dart';
import 'package:trendspot_newes_app/features/splash/presention/splash.dart';

abstract class AppRouter {
  static const kLogInView = '/logIn';
  static const kSignUp = '/signUp';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kLogInView,
      builder: (context, state) => const LogInView(),
    ),
    GoRoute(
      path: kSignUp,
      builder: (context, state) => const SignUpView(),
    ),
  ]);
}
