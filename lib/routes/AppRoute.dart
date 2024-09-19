import 'package:get/get.dart';

// Import your custom page widgets here
import 'package:siyaha_plus_mobile/views/LaunchPage.dart';
import 'package:siyaha_plus_mobile/views/LoginPage.dart';
import 'package:siyaha_plus_mobile/views/MainPage.dart';
import 'package:siyaha_plus_mobile/views/FavoritePage.dart'; // Assuming this is where FavoritePage is located

class AppRoutes {
  // Define your routes as static constants 
  static const String launchPage = '/';
  static const String loginPage = '/login';
  static const String mainPage = '/main';
  static const String favoritePage = '/favorite';

  // Create a list of GetPage objects to define your routes
  static final List<GetPage> routes = [
    GetPage(name: launchPage, page: () => LaunchPage()),
    GetPage(name: loginPage, page: () => LoginPage()),
    GetPage(name: mainPage, page: () => MainPage()),
    GetPage(name: favoritePage, page: () => FavoritePage()),
  ];
}