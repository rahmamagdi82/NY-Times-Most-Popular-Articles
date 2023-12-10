
import 'package:get_it/get_it.dart';
import 'package:ny_times_most_popular_articles/features/home/data/data_source/local_data_source.dart';
import 'package:ny_times_most_popular_articles/features/home/domain/use_cases/get_articles_use_case.dart';
import 'package:ny_times_most_popular_articles/features/home/presentation/controllers/home_bloc.dart';

import '../../features/home/data/data_source/remote_data_source.dart';
import '../../features/home/data/repository/repository_imp.dart';
import '../../features/home/domain/repository/repository.dart';
import 'api_services.dart';

final getItInstance = GetIt.instance;

Future<void> initAppModule() async{


  // api service
  getItInstance.registerLazySingleton<ApiServices>(() => ApiServices());

  // remote data source
  getItInstance.registerLazySingleton<HomeRemoteDataSource>(() => HomeRemoteDataSourceImp(apiServices: getItInstance()));


  // local data source
  getItInstance.registerLazySingleton<HomeLocalDataSource>(() => HomeLocalDataSourceImp());

  // repository
  getItInstance.registerLazySingleton<HomeRepository>(() => HomeRepositoryImp(homeRemoteDataSource: getItInstance(), homeLocalDataSource: getItInstance(),));

  // use case
  getItInstance.registerFactory<GetArticlesUseCase>(() => GetArticlesUseCase(homeRepository: getItInstance()));
  
  // bloc
  getItInstance.registerFactory(() => HomeBloc(getArticlesUseCase: getItInstance()));


}