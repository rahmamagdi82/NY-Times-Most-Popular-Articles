import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:ny_times_most_popular_articles/core/utils/router_manager.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';

import 'core/resources/constants.dart';
import 'core/utils/bloc_observe.dart';
import 'core/utils/dependancy_injection.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  Bloc.observer = MyBlocObserver();
  await initAppModule();
  await Hive.initFlutter();
  Hive.registerAdapter(ArticleEntityAdapter());
  await Hive.openBox<ArticleEntity>(AppConstants.getArticlesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(useMaterial3: false),
    );
  }
}
