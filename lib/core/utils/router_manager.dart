import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/article_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';




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
