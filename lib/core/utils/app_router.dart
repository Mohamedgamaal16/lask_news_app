import 'package:go_router/go_router.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/presention/single_item_display.dart';
import 'package:trendspot_newes_app/features/home/presention/home_view.dart';
import 'package:trendspot_newes_app/features/explore/presention/explore_view.dart';
import 'package:trendspot_newes_app/features/signin/presention/login_view.dart';
import 'package:trendspot_newes_app/features/signup/presention/signup_view.dart';
import 'package:trendspot_newes_app/features/splash/presention/splash.dart';

abstract class AppRouter {
  static const kLogInView = '/logIn';
  static const kSignUp = '/signUp';
  static const kHomeView = '/homeView';
  static const kSeeMoreView = '/SeeMoreView';
  static const kExpolreSingleItemDiplay = '/expolreSingleItemDiplay';

  static final GoRouter router = GoRouter(routes: [
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const SplashView(),
    // ),
    GoRoute(
      path: kLogInView,
      builder: (context, state) => const LogInView(),
    ),
    GoRoute(
      path: kSignUp,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: '/',
      // path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kSeeMoreView,
      builder: (context, state) => const ExploreView(),
    ),
    // GoRoute(
    //   path: '/expolreSingleItemDiplay',
    //   // path: kExpolreSingleItemDiplay,
    //   builder: (context, state) => ExpolreSingleItemDisplay(
    //     title: state.uri.queryParameters['title']!,
    //     detailes: state.uri.queryParameters['detailes']!,
    //     date: state.uri.queryParameters['date']!,
    //     authorName: state.uri.queryParameters['authorName']!,
    //     image: state.uri.queryParameters['image']!,
    //   ),
    // ),
  ]);
}
