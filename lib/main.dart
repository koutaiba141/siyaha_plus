import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/Controllers/ThemeController.dart';
import 'package:siyaha_plus_mobile/views/MainPage.dart'; // Import MainPage

void main() {
  // Initialize the ThemeController here
  Get.put(ThemeController());  // Inject the ThemeController into memory
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>(); // Retrieve the ThemeController

    return Obx(() {
      return GetMaterialApp(
        title: 'Siyaha Plus',
        theme: ThemeData.light(),  // Define your light theme here
        darkTheme: ThemeData.dark(), // Define your dark theme here
        themeMode: themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light, // Use ThemeController
        home: MainPage(),  // Set MainPage as the starting page
      );
    });
  }
}
