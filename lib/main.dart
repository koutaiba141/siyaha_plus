import 'package:flutter/material.dart';
import 'package:siyaha_plus_mobile/routes/approute.dart';
import 'package:siyaha_plus_mobile/views/LaunchPage.dart';
import 'package:siyaha_plus_mobile/routes/AppPage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
        initialRoute: AppRoute.LaunchPage,
        getPages: AppPage.pages,
        home: LaunchPage());
  }
}
