import 'package:dio/dio.dart';

import '../resources/constants.dart';

class ApiServices{

  final Dio _dio;

  ApiServices({required Dio dio}) : _dio = dio;

  Future<Map<String,dynamic>> get({required String endPoint}) async {
    final result = await _dio.get( '${AppConstants.baseUrl}$endPoint');
    return result.data;
  }
}