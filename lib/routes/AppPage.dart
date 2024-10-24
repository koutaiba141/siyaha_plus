// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/bindings/SuggestedInfoBinding.dart';
import 'package:siyaha_plus_mobile/mock_data/localTourMockData.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';
import 'package:siyaha_plus_mobile/views/AddTripsPage.dart';
import 'package:siyaha_plus_mobile/views/CompanyProfile.dart';
import 'package:siyaha_plus_mobile/views/CompanyTripsPage.dart';
import 'package:siyaha_plus_mobile/views/LaunchPage.dart';
import 'package:siyaha_plus_mobile/views/LocalTourPage.dart';
import 'package:siyaha_plus_mobile/views/LoginBusinessPage.dart';
import 'package:siyaha_plus_mobile/views/LoginPage.dart';
import 'package:siyaha_plus_mobile/views/StatisticsPage.dart';
import 'package:siyaha_plus_mobile/views/SuggesteProfilePage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedCommentPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedLikePage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedUpdateInfoPage.dart';
import 'package:siyaha_plus_mobile/views/UserMainPage.dart';
import 'package:siyaha_plus_mobile/views/SuggestedInfoPage.dart';
 import 'package:siyaha_plus_mobile/views/LocalTourDetailsPage.dart';
import 'package:siyaha_plus_mobile/views/CompanyDetailsPage.dart';
import 'package:siyaha_plus_mobile/views/CompanyHomePage.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(name: AppRoute.LaunchPage, page: () => LaunchPage()),
    GetPage(name: AppRoute.LoginPage, page: () => LoginPage()),
    GetPage(name: AppRoute.LoginBusinessPage, page: () => LoginBusinessPage()),
        GetPage(name: AppRoute.CompanyHomePage, page: () => CompanyHomePage()),

    GetPage(name: AppRoute.UserMainPage, page: () => UserMainPage()),
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

        GetPage(name: AppRoute.companyProfilePage, page: () => CompanyProfilePage()),
    GetPage(name: AppRoute.companyTripsPage, page: () => CompanyTripsPage()),
    GetPage(name: AppRoute.statisticsPage, page: () => StatisticsPage()),
    GetPage(name: AppRoute.addTripPage, page: () => AddTripsPage()),
    GetPage(
      name: AppRoute.LocalTourDetailsPage,
      page: () => LocalTourDetailsPage(
        tour: Get.arguments, // Receive tour object from arguments
      ),
    ),
GetPage(
  name: AppRoute.LocalTourPage,
  page: () => LocalTourPage(localTours: mockLocalTours), // Pass mock data here
),
 GetPage(
      name: AppRoute.CompanyDetailsPage,
      page: () => CompanyDetailsPage(
        companyName: Get.arguments['companyName'], // Pass company name
        logoUrl: Get.arguments['logoUrl'], // Pass logo URL
        description: Get.arguments['description'], // Pass company description
      ),
    ),
  ];
}
