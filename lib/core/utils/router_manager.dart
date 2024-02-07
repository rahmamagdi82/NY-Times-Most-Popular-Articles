import 'package:go_router/go_router.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';
import 'package:ny_times_most_popular_articles/features/splash/presentation/view/splash_view.dart';

import '../../features/home/presentation/views/article_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';




abstract class AppRouter {
  static const articleDetailsViewPath = '/articleDetailsView';
  static const homeViewPath = '/homeView';


  static final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: articleDetailsViewPath,
        builder: (context, state) => ArticleDetailsView(article: state.extra as ArticleEntity,),
      ),
    ],
  );
}
