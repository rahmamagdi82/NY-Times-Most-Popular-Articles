import 'package:flutter/material.dart';
import 'package:ny_times_most_popular_articles/features/home/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const HomeViewBody(),
    );
  }
}
