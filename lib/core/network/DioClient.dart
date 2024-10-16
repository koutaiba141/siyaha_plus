// ignore_for_file: file_names

import 'package:dio/dio.dart';

class DioClient {
  Dio getInstance() {
    return Dio(BaseOptions(
        baseUrl: "https://music.xpertbotacademy.online/api",
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json));
  }
}
