import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NetworkInfo{
  static Future<bool> isConnected() => InternetConnection().hasInternetAccess;

}