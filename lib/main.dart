import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/FavoriteController.dart';
import 'package:siyaha_plus_mobile/routes/AppPage.dart';
import 'package:siyaha_plus_mobile/routes/approute.dart';

void main() {
  // Register the controller here
  Get.put(FavoriteController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
 debugShowCheckedModeBanner: false,
      title: 'Siyaha Plus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: AppRoute.LaunchPage,
      getPages: AppPage.pages,
    );
  }
}
