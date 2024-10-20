// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';

class SuggestedPage extends StatelessWidget {
  const SuggestedPage({super.key});
  final double TextPadding = 10;
  final double SizedBoxHeight = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SafeArea(
        child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
          InkWell(
              onTap: () {
                Get.toNamed(AppRoute.SuggestedUserProfilePage);
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'images/AppLogo.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: TextPadding),
                      child: const Text(
                        'Siyaha plus',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: TextPadding),
                      child: const Text(
                        'Store',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: TextPadding),
                      child: const Text(
                        "We offer personalized travel experiences and unforgettable adventures, showcasing top destinations worldwide.",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(height: SizedBoxHeight),
          InkWell(
              onTap: () {
                Get.toNamed(AppRoute.SuggestedUserProfilePage);
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'images/AppLogo.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: TextPadding),
                      child: const Text(
                        'Siyaha plus',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: TextPadding),
                      child: const Text(
                        'Store',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: TextPadding),
                      child: const Text(
                        "We offer personalized travel experiences and unforgettable adventures, showcasing top destinations worldwide.",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(height: SizedBoxHeight),
          InkWell(
              onTap: () {
                Get.toNamed(AppRoute.SuggestedUserProfilePage);
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'images/AppLogo.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: TextPadding),
                      child: const Text(
                        'Siyaha plus',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: TextPadding),
                      child: const Text(
                        'Store',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: TextPadding),
                      child: const Text(
                        "We offer personalized travel experiences and unforgettable adventures, showcasing top destinations worldwide",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ]),
      ),
    ));
  }
}
