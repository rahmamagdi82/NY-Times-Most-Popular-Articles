import 'package:dio/dio.dart';
import 'package:ny_times_most_popular_articles/core/utils/resources/constants.dart';

class ApiServices{

  final Dio _dio = Dio(BaseOptions(baseUrl: AppConstants.baseUrl));

  Future<Map<String,dynamic>> get({required String endPoint}) async {
    final result = await _dio.get(endPoint);
    return result.data;
  }
}