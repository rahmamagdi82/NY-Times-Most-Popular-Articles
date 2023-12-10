import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ny_times_most_popular_articles/core/errors/failure.dart';
import 'package:ny_times_most_popular_articles/core/utils/network_info.dart';
import 'package:ny_times_most_popular_articles/features/home/data/data_source/remote_data_source.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/repository/repository.dart';

import '../data_source/local_data_source.dart';

class HomeRepositoryImp extends HomeRepository{
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepositoryImp({required this.homeRemoteDataSource,required this.homeLocalDataSource,});

  @override
  Future<Either<Failure, List<ArticleEntity>>> getArticles() async {
    try{
      if(await NetworkInfo.isConnected()){
        List<ArticleEntity> result = await homeRemoteDataSource.getArticles();
        homeLocalDataSource.storeArticles(result);
        return right(result);
      }
      else{
        List<ArticleEntity> result = homeLocalDataSource.getArticles();
        if(result.isNotEmpty){
          return right(result);
        }
        else{
          return Left(ServerFailure(message: 'No Internet Connection',));
        }
      }
    }catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(message: e.toString(),));
    }
  }
}