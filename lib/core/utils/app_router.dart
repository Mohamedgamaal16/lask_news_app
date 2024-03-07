
import 'package:go_router/go_router.dart';
import 'package:trendspot_newes_app/features/login/presention/login_view.dart';
import 'package:trendspot_newes_app/features/splash/presention/splash.dart';

abstract class AppRouter {
  static const kLogInView = '/logIn';
  static const kBookDetailesView = '/bookDetailesView';
  static const kSearchView = '/searchView';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kLogInView,
      builder: (context, state) => const LogInView(),
    ),
    
  ]);
}
