import 'package:flutter/material.dart';
import 'package:ny_times_most_popular_articles/core/resources/values_manager.dart';

import 'article_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(AppPadding.p16),
        itemBuilder: (context,index){
          return const ArticleItem();
        },
        separatorBuilder: (context,index){
          return const SizedBox(height: AppSize.s20,);
        },
        itemCount: 20,
    );
  }
}
