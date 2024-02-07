import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:ny_times_most_popular_articles/core/resources/values_manager.dart';

import '../../../../../core/utils/router_manager.dart';
import '../../../../../gen/assets.gen.dart';


class SplashViewWidget extends StatefulWidget {
  const SplashViewWidget({super.key});

  @override
  State<SplashViewWidget> createState() => _SplashViewWidgetState();
}

class _SplashViewWidgetState extends State<SplashViewWidget> {
  @override
  void initState() {
    super.initState();
    navigationTo();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
      child: Image.asset(Assets.images.logo.path,height: AppSize.s200,),
    ));
  }

  void navigationTo(){
    Future.delayed(const Duration(seconds: 3),(){
      GoRouter.of(context).go(AppRouter.homeViewPath);
    });
  }

}
