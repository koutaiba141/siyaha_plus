// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  final double TextButtonHeight = 30;
  final double IconHeight = 30;
  final double IconWidth = 30;
  final double TextButtonBorder = 1;
  final double TextButtonFontSize = 25;
  final double IconTextSpace = 20;
  final double SizedBoxHeight = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SafeArea(
                child: SingleChildScrollView(
                    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Circle avatar
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('images/AppLogo.jpg'),
          ),
          // Login text
          const Text(
            "Login and start your journey:",
            style: TextStyle(
                fontFamily: "Caveat",
                fontSize: 27,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          // Google login
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.red,
                side: BorderSide(color: Colors.red, width: TextButtonBorder),
                minimumSize: Size.fromHeight(TextButtonHeight)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SvgPicture.asset(
                  "images/Google.svg",
                  height: IconHeight,
                  width: IconWidth,
                ),
                SizedBox(width: IconTextSpace),
                Text(
                  "Google",
                  style: TextStyle(
                      color: Colors.red, fontSize: TextButtonFontSize),
                )
              ],
            ),
            onPressed: () {},
          ),
          SizedBox(height: SizedBoxHeight),
          // Facebook login
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              side: BorderSide(color: Colors.blue, width: TextButtonBorder),
              minimumSize: Size.fromHeight(TextButtonHeight),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SvgPicture.asset(
                  "images/Facebook.svg",
                  height: IconHeight,
                  width: IconWidth,
                ),
                SizedBox(width: IconTextSpace),
                Text(
                  "Facebook",
                  style: TextStyle(
                      color: Colors.blue, fontSize: TextButtonFontSize),
                )
              ],
            ),
            onPressed: () {},
          ),
          SizedBox(height: SizedBoxHeight),
          // Microsoft login
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.green,
                side: BorderSide(color: Colors.green, width: TextButtonBorder),
                minimumSize: Size.fromHeight(TextButtonHeight)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SvgPicture.asset(
                  "images/Microsoft.svg",
                  height: IconHeight,
                  width: IconWidth,
                ),
                SizedBox(width: IconTextSpace),
                Text(
                  "Microsoft",
                  style: TextStyle(
                      color: Colors.green, fontSize: TextButtonFontSize),
                )
              ],
            ),
            onPressed: () {},
          ),
          SizedBox(height: SizedBoxHeight),
          // Apple login
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                side: BorderSide(color: Colors.black, width: TextButtonBorder),
                minimumSize: Size.fromHeight(TextButtonHeight)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SvgPicture.asset(
                  "images/Apple.svg",
                  height: IconHeight,
                  width: IconWidth,
                ),
                SizedBox(width: IconTextSpace),
                Text(
                  "Apple",
                  style: TextStyle(
                      color: Colors.black, fontSize: TextButtonFontSize),
                )
              ],
            ),
            onPressed: () {},
          ),
          SizedBox(height: SizedBoxHeight),
          // Guest mode
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.yellow,
                side: BorderSide(color: Colors.yellow, width: TextButtonBorder),
                minimumSize: Size.fromHeight(TextButtonHeight)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SvgPicture.asset(
                  "images/ProfileIcon.svg",
                  height: IconHeight,
                  width: IconWidth,
                ),
                SizedBox(width: IconTextSpace),
                Text(
                  "Guest",
                  style: TextStyle(
                      color: Colors.yellow, fontSize: TextButtonFontSize),
                )
              ],
            ),
            onPressed: () {
              Get.toNamed(AppRoute.UserMainPage);
            },
          ),
          SizedBox(height: SizedBoxHeight),
          // divider
          const Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("or"),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: SizedBoxHeight),
          // Business login
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.grey,
                  side:
                      BorderSide(color: Colors.black, width: TextButtonBorder),
                  minimumSize: Size.fromHeight(TextButtonHeight)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(
                      Icons.corporate_fare,
                      color: Colors.black,
                      size: IconWidth,
                    ),
                    SizedBox(width: IconTextSpace),
                    Text(
                      "buisness owner",
                      style: TextStyle(
                          color: Colors.black, fontSize: TextButtonFontSize),
                    ),
                  ]),
              onPressed: () {
                Get.toNamed(AppRoute.LoginBusinessPage);
              }),
        ],
      ),
    )))));
  }
}
