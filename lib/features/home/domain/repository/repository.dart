import 'package:fpdart/fpdart.dart';
import 'package:ny_times_most_popular_articles/core/errors/failure.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';

abstract class HomeRepository{
  Future<Either<Failure,List<ArticleEntity>>> getArticles();
}