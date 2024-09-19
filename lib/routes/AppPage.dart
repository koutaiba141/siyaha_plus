import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/views/LaunchPage.dart';
import 'package:siyaha_plus_mobile/views/LoginPage.dart';
import 'package:siyaha_plus_mobile/views/MainPage.dart';
import 'package:siyaha_plus_mobile/views/FavoritePage.dart';

class AppPage {
  static final List<GetPage> routes = [
    GetPage(name: '/launch', page: () => LaunchPage()),
    GetPage(name: '/login', page: () => LoginPage()),
    GetPage(name: '/main', page: () => MainPage()),
    GetPage(name: '/favorite', page: () => FavoritePage()),
  ];
}
