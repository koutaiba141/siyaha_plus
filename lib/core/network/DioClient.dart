// ignore_for_file: file_names

import 'package:dio/dio.dart';

class DioClient {
  Dio getInstance() {
    return Dio(BaseOptions(
        baseUrl: "http//:127.0.0.1:8000",
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json));
  }
}
