import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ny_times_most_popular_articles/core/errors/failure.dart';
import 'package:ny_times_most_popular_articles/features/home/data/data_source/remote_data_source.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/repository/repository.dart';

class HomeRepositoryImp extends HomeRepository{
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImp({required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<ArticleEntity>>> getArticles() async {
    try {
      List<ArticleEntity> result = await homeRemoteDataSource.getArticles();
      return right(result);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(message: e.toString(), ));
    }
  }
}