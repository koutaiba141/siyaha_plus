// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/bindings/SuggestedCommentBinding.dart';
import 'package:siyaha_plus_mobile/bindings/SuggestedInfoBinding.dart';
import 'package:siyaha_plus_mobile/bindings/SuggestedLikeBinding.dart';
import 'package:siyaha_plus_mobile/bindings/SuggestedProfileBinding.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';
import 'package:siyaha_plus_mobile/views/LaunchPage.dart';
import 'package:siyaha_plus_mobile/views/LoginBusinessPage.dart';
import 'package:siyaha_plus_mobile/views/LoginPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedProfilePage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedCommentPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedLikePage.dart';
import 'package:siyaha_plus_mobile/views/UserMainPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedInfoPage.dart';
import 'package:siyaha_plus_mobile/views/TourismInfoPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedUserProfilePage.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(name: AppRoute.LaunchPage, page: () => const LaunchPage()),
    GetPage(name: AppRoute.LoginPage, page: () => const LoginPage()),
    GetPage(
        name: AppRoute.LoginBusinessPage,
        page: () => const LoginBusinessPage()),
    GetPage(name: AppRoute.UserMainPage, page: () => const UserMainPage()),
    GetPage(
        name: AppRoute.TourismInfoPage, page: () => const TourismInfoPage()),
    GetPage(
        name: AppRoute.SuggestedInfoPage,
        page: () => const SuggestedInfoPage(),
        binding: SuggestedInfoBinding()),
    GetPage(
        name: AppRoute.SuggestedProfilePage,
        page: () => const SuggestedProfilePage(),
        binding: SuggestedProfileBinding()),
    GetPage(
        name: AppRoute.SuggestedLikePage,
        page: () => const SuggestedLikePage(),
        binding: SuggestedLikeBinding()),
    GetPage(
        name: AppRoute.SuggestedCommentPage,
        page: () => const SuggestedCommentPage(),
        binding: SuggestedCommentBinding()),
    GetPage(
        name: AppRoute.SuggestedUserProfilePage,
        page: () => const SuggestedUserProfilePage(),
        binding: SuggestedProfileBinding()),
  ];
}
