// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';
import 'package:siyaha_plus_mobile/bindings/SuggestedCommentBinding.dart';
import 'package:siyaha_plus_mobile/bindings/SuggestedInfoBinding.dart';
import 'package:siyaha_plus_mobile/bindings/SuggestedLikeBinding.dart';
import 'package:siyaha_plus_mobile/bindings/SuggestedProfileBinding.dart';
import 'package:siyaha_plus_mobile/views/CompanyTripsPage.dart';
import 'package:siyaha_plus_mobile/views/CompanyUserProfilePage.dart';
import 'package:siyaha_plus_mobile/views/LoginBusinessPage.dart';
import 'package:siyaha_plus_mobile/views/LoginPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedProfilePage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedCommentPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedLikePage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedInfoPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedUserProfilePage.dart';
//accepted work
import 'package:siyaha_plus_mobile/views/UserProfilePage.dart';
import 'package:siyaha_plus_mobile/views/UserMainPage.dart';
import 'package:siyaha_plus_mobile/views/TravelTourDetailsPage.dart';
import 'package:siyaha_plus_mobile/views/LocalTourDetailsPage.dart';
import 'package:siyaha_plus_mobile/views/CompanyProfilePage.dart';
import 'package:siyaha_plus_mobile/views/CompanyHomePage.dart';
//testing
import 'package:siyaha_plus_mobile/views/AddTripsPage.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(name: AppRoute.LoginPage, page: () => const LoginPage()),
    GetPage(
        name: AppRoute.LoginBusinessPage,
        page: () => const LoginBusinessPage()),
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
    // accepted some work
    GetPage(
        name: AppRoute.UserProfilePage, page: () => const UserProfilePage()),
    GetPage(name: AppRoute.UserMainPage, page: () => const UserMainPage()),
    GetPage(
        name: AppRoute.TravelTourDetailsPage,
        page: () => TravelTourDetailsPage()),
    GetPage(
        name: AppRoute.LocalTourDetailsPage,
        page: () => LocalTourDetailsPage()),

    GetPage(
        name: AppRoute.CompanyProfilePage, page: () => CompanyProfilePage()),
    GetPage(
        name: AppRoute.CompanyUserProfilePage,
        page: () => CompanyUserProfilePage()),
    GetPage(name: AppRoute.CompanyHomePage, page: () => CompanyHomePage()),
    GetPage(name: AppRoute.AddTripsPage, page: () => AddTripsPage()),

    //testing work
    GetPage(name: AppRoute.CompanyTripsPage, page: () => CompanyTripsPage()),
  ];
}
