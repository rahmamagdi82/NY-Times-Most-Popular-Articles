import 'package:fpdart/fpdart.dart';
import 'package:ny_times_most_popular_articles/core/errors/failure.dart';
import 'package:ny_times_most_popular_articles/core/use_cases/use_case.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/repository/repository.dart';

class GetArticlesUseCase extends UseCase<List<ArticleEntity>,void>{
  final HomeRepository homeRepository;

  GetArticlesUseCase({required this.homeRepository});
  @override
  Future<Either<Failure, List<ArticleEntity>>> call([void params]) {
    return homeRepository.getArticles();
  }
}