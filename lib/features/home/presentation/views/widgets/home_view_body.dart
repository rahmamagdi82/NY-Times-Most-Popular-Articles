import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_times_most_popular_articles/core/resources/values_manager.dart';
import 'package:ny_times_most_popular_articles/features/home/presentation/controllers/home_bloc.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/widgets/custom_fading_widget.dart';
import 'article_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (BuildContext context, state) {
        if (state is GetArticlesSuccess) {
          return ListView.separated(
            padding: const EdgeInsets.all(AppPadding.p16),
            itemBuilder: (context, index) {
              return ArticleItem(
                article: state.articles[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: AppSize.s30,
              );
            },
            itemCount: state.articles.length,
          );
        } else if (state is GetArticlesFailure) {
          return Center(child: Text('Error Message: ${state.message}'));
        } else {
          return ListView.separated(
            padding: const EdgeInsets.all(AppPadding.p16),
            itemBuilder: (context, index) {
              return CustomFadingWidget(
                  child: Container(
                height: AppSize.s105,
                width: double.infinity,
                color: ColorManager.gray,
              ));
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: AppSize.s30,
              );
            },
            itemCount: 7,
          );
        }
      },
    );
  }
}
