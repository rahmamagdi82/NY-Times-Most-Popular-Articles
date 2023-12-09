import 'package:go_router/go_router.dart';
import 'package:ny_times_most_popular_articles/features/home/views/home_view.dart';

import '../../features/home/views/article_details_view.dart';



abstract class AppRouter {
  static const articleDetailsViewPath = '/articleDetailsView';

  static final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: articleDetailsViewPath,
        builder: (context, state) => const ArticleDetailsView(),
      ),
    ],
  );
}
