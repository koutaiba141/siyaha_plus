// ignore_for_file: file_names, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';

class LocalTourPage extends StatelessWidget {
  const LocalTourPage({super.key});
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final double TextPadding = ScreenHeight * 0.02;
    final double SizedBoxHeight = ScreenHeight * 0.03;
    const double TitleTextFont = 20;
    const double TextFont = 12;

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
            InkWell(
                onTap: () {
                  Get.toNamed(AppRoute.LocalTourDetailsPage);
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
                            fontSize: TitleTextFont,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                'start date: 1/5/2020',
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                "end date: 4/5/2020",
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                'Price: 100 USD',
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                "Saida",
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                )),
            SizedBox(height: SizedBoxHeight),
            InkWell(
                onTap: () {
                  Get.toNamed(AppRoute.LocalTourDetailsPage);
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
                            fontSize: TitleTextFont,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                'start date: 1/5/2020',
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                "end date: 4/5/2020",
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                'Price: 100 USD',
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                "Mount-lebanon",
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                )),
            SizedBox(height: SizedBoxHeight),
            InkWell(
                onTap: () {
                  Get.toNamed(AppRoute.LocalTourDetailsPage);
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
                            fontSize: TitleTextFont,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                'start date: 1/5/2020',
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                "end date: 4/5/2020",
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                'Price: 100 USD',
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: TextPadding),
                              child: const Text(
                                "Baalbak",
                                style: TextStyle(
                                  fontSize: TextFont,
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
