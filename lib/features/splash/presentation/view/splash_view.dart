import 'package:flutter/material.dart';
import 'package:ny_times_most_popular_articles/features/splash/presentation/view/widgets/splash_view_widget.dart';


class SplashView extends StatelessWidget{
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewWidget(),
    );
  }
}