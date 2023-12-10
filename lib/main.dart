import 'package:flutter/material.dart';
import 'package:ny_times_most_popular_articles/core/utils/router_manager.dart';

import 'core/utils/dependancy_injection.dart';

Future<void> main() async {
  await initAppModule();
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
