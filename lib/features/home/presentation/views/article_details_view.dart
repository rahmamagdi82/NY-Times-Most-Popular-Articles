import 'package:flutter/material.dart';
import 'package:ny_times_most_popular_articles/core/widgets/custom_app_bar.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';
import 'package:ny_times_most_popular_articles/features/home/presentation/views/widgets/article_details_view_body.dart';

class ArticleDetailsView extends StatelessWidget {
  const ArticleDetailsView({Key? key, required this.article}) : super(key: key);
  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'NY Times Most Popular'),
      body: ArticleDetailsViewBody(article: article,),
    );
  }
}
