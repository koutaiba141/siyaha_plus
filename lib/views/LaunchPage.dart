import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';
class LaunchPage extends StatefulWidget {
  const LaunchPage({super.key});

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('images/logo.jpg'),
              backgroundColor: Colors.grey, // Placeholder color
            ),
            const SizedBox(height: 20), // Spacing between widgets
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Updated property
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Button shape
                ),
              ),
              onPressed: () {
                try {
                  Get.toNamed(AppRoute.LoginPage);
                } catch (e) {
                  print('Error navigating to login page: $e');
                }
              },
              child: const Text("Login page"),
            ),
          ],
        ),
      ),
    );
  }
}
