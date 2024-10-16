// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/bindings/SuggestedInfoBinding.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';
import 'package:siyaha_plus_mobile/views/LaunchPage.dart';
import 'package:siyaha_plus_mobile/views/LoginBusinessPage.dart';
import 'package:siyaha_plus_mobile/views/LoginPage.dart';
import 'package:siyaha_plus_mobile/views/SuggesteProfilePage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedCommentPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedLikePage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedUpdateInfoPage.dart';
import 'package:siyaha_plus_mobile/views/UserMainPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedInfoPage.dart';
import 'package:siyaha_plus_mobile/views/TourismInfoPage.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(name: AppRoute.LaunchPage, page: () => LaunchPage()),
    GetPage(name: AppRoute.LoginPage, page: () => LoginPage()),
    GetPage(name: AppRoute.LoginBusinessPage, page: () => LoginBusinessPage()),
    GetPage(name: AppRoute.UserMainPage, page: () => UserMainPage()),
    GetPage(name: AppRoute.TourismInfoPage, page: () => TourismInfoPage()),
    GetPage(
        name: AppRoute.SuggestedInfoPage,
        page: () => SuggestedInfoPage(),
        binding: SuggestedInfoBinding()),
    GetPage(
        name: AppRoute.SuggestedProfilePage,
        page: () => SuggestedProfilePage()),
    GetPage(name: AppRoute.SuggestedLikePage, page: () => SuggestedLikePage()),
    GetPage(
        name: AppRoute.SuggestedCommentPage,
        page: () => SuggestedCommentPage()),
    GetPage(
        name: AppRoute.SuggestedUpdateInfoPage,
        page: () => SuggestedUpdateInfoPage()),
  ];
}
