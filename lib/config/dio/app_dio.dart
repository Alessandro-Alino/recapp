import 'package:dio/dio.dart';

class AppDio {
  static final AppDio _instance = AppDio._internal();

  static AppDio get instance => _instance;

  final Dio dio;

  AppDio._internal() : dio = Dio();
}