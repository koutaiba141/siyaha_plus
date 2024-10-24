// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({super.key});

  @override
  State<LaunchPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LaunchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage('images/AppLogo.jpg'),
          ),
          // Temporaty button start
          ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoute.LoginPage);
              },
              child: const Text("Login page"))
          // Temporary button end
        ],
      ),
    ));
  }
}
