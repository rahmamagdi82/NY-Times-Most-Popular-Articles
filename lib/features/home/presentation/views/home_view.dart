import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_times_most_popular_articles/features/home/presentation/controllers/home_bloc.dart';
import 'package:ny_times_most_popular_articles/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/resources/font_manager.dart';
import '../../../../core/utils/dependancy_injection.dart';
import '../../../../core/widgets/custom_app_bar.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getItInstance<HomeBloc>()..add(GetArticlesEvent()),
      child: Scaffold(
        appBar: customAppBar(
          title: 'NY Times Most Popular',
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ], fontSize: FontSize.s16,
        ),
        body: const HomeViewBody(),
        drawer: const Drawer(),
      ),
    );
  }
}
