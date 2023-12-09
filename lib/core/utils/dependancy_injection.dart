
import 'package:get_it/get_it.dart';

final getItInstance = GetIt.instance;

Future<void> initAppModule() async{


  // // api service
  // getItInstance.registerLazySingleton<ApiServices>(() => ApiServices());
  //
  // // remote data source
  // getItInstance.registerLazySingleton<HomeRemoteDataSource>(() => HomeRemoteDataSourceImp(getItInstance()));
  //
  // // local data source
  // getItInstance.registerLazySingleton<HomeLocalDataSource>(() => HomeLocalDataSourceImp());
  //
  // // repository
  // getItInstance.registerLazySingleton<HomeRepository>(() => HomeRepositoryImp(homeRemoteDataSource: getItInstance(), homeLocalDataSource: getItInstance()));
  //
  // // use case
  // getItInstance.registerFactory<GetBooksUseCase>(() => GetBooksUseCase(getItInstance()));
  // getItInstance.registerFactory<GetNewestBooksUseCase>(() => GetNewestBooksUseCase(getItInstance()));
  //
  //
  // getItInstance.registerFactory(() => GetBooksCubit(getItInstance()));
  // getItInstance.registerFactory(() => GetNewestBooksCubit(getItInstance()));


}