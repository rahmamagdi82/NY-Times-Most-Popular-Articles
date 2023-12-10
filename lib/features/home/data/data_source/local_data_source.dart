import 'package:hive/hive.dart';
import 'package:ny_times_most_popular_articles/features/home/data/models/article_model.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';

import '../../../../core/resources/constants.dart';

abstract class HomeLocalDataSource{
  List<ArticleEntity> getArticles();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource{

  @override
  List<ArticleEntity> getArticles() {
    var box = Hive.box<ArticleEntity>(AppConstants.getArticlesBox);
    return box.values.toList();
  }
}