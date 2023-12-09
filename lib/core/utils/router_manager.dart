import 'package:go_router/go_router.dart';



abstract class AppRouter {
  static const homeViewPath = '/homeView';
  static const bookDetailsPath = '/bookDetails';
  static const searchPath = '/search';

  static final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const SplashView(),
      // ),
      // GoRoute(
      //   path: homeViewPath,
      //   builder: (context, state) => const HomeView(),
      // ),
      // GoRoute(
      //     path: bookDetailsPath,
      //     builder: (context, state) => const BookDetailsView()
      // ),
      // GoRoute(
      //     path: searchPath,
      //     builder: (context, state) => const SearchView()
      // )
    ],
  );
}
