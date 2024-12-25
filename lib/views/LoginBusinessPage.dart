// ignore_for_file: file_names, non_constant_identifier_names, constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/SuggestedInfoController.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';

class LoginBusinessPage extends StatefulWidget {
  const LoginBusinessPage({super.key});

  @override
  State<LoginBusinessPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginBusinessPage> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    final double TextButtonHeight = ScreenHeight * 0.07;
    final double IconHeight = TextButtonHeight;
    final double IconWidth = TextButtonHeight;
    const double TextButtonBorder = 5;
    final double TextButtonFontSize = TextButtonHeight * 0.5;
    final double IconTextSpace = ScreenWidth * 0.05;
    final double SizedBoxHeight = ScreenHeight * 0.03;
    String _CompantType = "Tourism";
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
                                backgroundImage:
                                    AssetImage('images/AppLogo.jpg'),
                              ),
                              // Login text
                              const Text(
                                "Login and start your business:",
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
                                    side: const BorderSide(
                                        color: Colors.red,
                                        width: TextButtonBorder),
                                    minimumSize:
                                        Size.fromHeight(TextButtonHeight)),
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
                                          color: Colors.red,
                                          fontSize: TextButtonFontSize),
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
                                  side: const BorderSide(
                                      color: Colors.blue,
                                      width: TextButtonBorder),
                                  minimumSize:
                                      Size.fromHeight(TextButtonHeight),
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
                                          color: Colors.blue,
                                          fontSize: TextButtonFontSize),
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
                                    side: const BorderSide(
                                        color: Colors.green,
                                        width: TextButtonBorder),
                                    minimumSize:
                                        Size.fromHeight(TextButtonHeight)),
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
                                          color: Colors.green,
                                          fontSize: TextButtonFontSize),
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
                                    side: const BorderSide(
                                        color: Colors.black,
                                        width: TextButtonBorder),
                                    minimumSize:
                                        Size.fromHeight(TextButtonHeight)),
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
                                          color: Colors.black,
                                          fontSize: TextButtonFontSize),
                                    )
                                  ],
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(height: SizedBoxHeight),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Tourism Radio Button
                                    Row(children: [
                                      Radio<String>(
                                        value: "Tourism",
                                        groupValue: _CompantType,
                                        activeColor: Colors.blue,
                                        onChanged: (String? value) {
                                          setState(() {
                                            _CompantType = value!;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Tourism",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: TextButtonFontSize),
                                      )
                                    ]),
                                    const SizedBox(width: 20),
                                    // Other Radio Button
                                    Row(children: [
                                      Radio<String>(
                                        value: "Other",
                                        groupValue: _CompantType,
                                        activeColor: Colors.blue,
                                        onChanged: (String? value) {
                                          setState(() {
                                            _CompantType = value!;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Other",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: TextButtonFontSize),
                                      )
                                    ]),
                                  ]),
                              SizedBox(height: SizedBoxHeight),
                              // Temporary buttons start
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Get.toNamed(AppRoute.CompanyHomePage);
                                      },
                                      child: const Text("Tourism")),
                                  const SizedBox(width: 20),
                                  ElevatedButton(
                                      onPressed: () {
                                        final controller =
                                            Get.put(SuggestedInfoController());
                                        controller.InsertSuggestedInfo();
                                        Get.toNamed(AppRoute.SuggestedInfoPage);
                                      },
                                      child: const Text("Other"))
                                ],
                              )
                              // Temporary buttons end
                            ]))))));
  }
}
