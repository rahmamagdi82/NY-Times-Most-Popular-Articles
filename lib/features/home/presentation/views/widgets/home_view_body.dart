import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_times_most_popular_articles/core/resources/values_manager.dart';
import 'package:ny_times_most_popular_articles/features/home/presentation/controllers/home_bloc.dart';

import 'article_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc,HomeState>(
      builder: (BuildContext context, state) {
        if(state is GetArticlesSuccess){
          return ListView.separated(
            padding: const EdgeInsets.all(AppPadding.p16),
            itemBuilder: (context,index){
              return ArticleItem(article: state.articles[index],);
            },
            separatorBuilder: (context,index){
              return const SizedBox(height: AppSize.s20,);
            },
            itemCount: state.articles.length,
          );
        }
        else if(state is GetArticlesFailure){
          return Text(state.message);
        }
        else{
          return CircularProgressIndicator();
        }
      },
    );
  }
}
