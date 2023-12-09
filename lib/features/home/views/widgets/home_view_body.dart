import 'package:flutter/material.dart';
import 'package:ny_times_most_popular_articles/features/home/views/widgets/article_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ArticleItem(),

        ],
      ),
    );
  }
}
