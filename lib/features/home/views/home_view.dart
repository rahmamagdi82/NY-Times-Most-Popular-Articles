import 'package:flutter/material.dart';
import 'package:ny_times_most_popular_articles/features/home/views/widgets/home_view_body.dart';

import '../../../core/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'NY Times Most Popular',
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: const HomeViewBody(),
      drawer: const Drawer(),
    );
  }
}
