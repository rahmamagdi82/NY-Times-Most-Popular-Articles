import 'package:dio/dio.dart';

import '../resources/constants.dart';

class ApiServices{

  final Dio dio;

  ApiServices({required  this.dio});

  Future<Map<String,dynamic>> get({required String endPoint}) async {
    final result = await dio.get( '${AppConstants.baseUrl}$endPoint');
    return result.data;
  }
}