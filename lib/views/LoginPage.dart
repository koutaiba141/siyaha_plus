import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const double textButtonHeight = 30;
  static const double iconHeight = 30;
  static const double iconWidth = 30;
  static const double textButtonBorder = 1;
  static const double textButtonFontSize = 25;
  static const double iconTextSpace = 20;
  static const double sizedBoxHeight = 20;

  TextButton _buildTextButton({
    required String assetName,
    required String label,
    required Color color,
    required Color borderColor,
    required VoidCallback onPressed,
  }) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: color,
        side: BorderSide(color: borderColor, width: textButtonBorder),
        minimumSize: Size.fromHeight(textButtonHeight),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SvgPicture.asset(
            assetName,
            height: iconHeight,
            width: iconWidth,
          ),
          SizedBox(width: iconTextSpace),
          Text(
            label,
            style: TextStyle(color: color, fontSize: textButtonFontSize),
          ),
        ],
      ),
    );
  }

  void _handleGoogleLogin() {
    // Add Google login logic here
  }

  void _handleFacebookLogin() {
    // Add Facebook login logic here
  }

  void _handleMicrosoftLogin() {
    // Add Microsoft login logic here
  }

  void _handleAppleLogin() {
    // Add Apple login logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/logo.jpg'),
                ),
                const Text(
                  "Login and start your journey:",
                  style: TextStyle(
                    fontFamily: "Caveat",
                    fontSize: 27,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                _buildTextButton(
                  assetName: "assets/images/google.svg",
                  label: "Google",
                  color: Colors.red,
                  borderColor: Colors.red,
                  onPressed: _handleGoogleLogin,
                ),
                const SizedBox(height: sizedBoxHeight),
                _buildTextButton(
                  assetName: "assets/images/facebook.svg",
                  label: "Facebook",
                  color: Colors.blue,
                  borderColor: Colors.blue,
                  onPressed: _handleFacebookLogin,
                ),
                const SizedBox(height: sizedBoxHeight),
                _buildTextButton(
                  assetName: "assets/images/microsoft.svg",
                  label: "Microsoft",
                  color: Colors.green,
                  borderColor: Colors.green,
                  onPressed: _handleMicrosoftLogin,
                ),
                const SizedBox(height: sizedBoxHeight),
                _buildTextButton(
                  assetName: "assets/images/apple.svg",
                  label: "Apple",
                  color: Colors.black,
                  borderColor: Colors.black,
                  onPressed: _handleAppleLogin,
                ),
                const SizedBox(height: sizedBoxHeight),
                _buildTextButton(
                  assetName: "assets/images/profile.svg",
                  label: "Guest",
                  color: Colors.yellow,
                  borderColor: Colors.yellow,
                  onPressed: () {
                    Get.toNamed(AppRoute.MainPage);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}