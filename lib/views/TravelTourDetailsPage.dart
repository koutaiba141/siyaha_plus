// lib/views/TravelTourDetailsPage.dart

// ignore_for_file: prefer_const_constructors, constant_identifier_names, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';

class TravelTourDetailsPage extends StatelessWidget {
  const TravelTourDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    const double TextFontSize = 16;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(height: ScreenHeight * 0.03),
                    Text("Moutain hikers",
                        style: TextStyle(fontSize: TextFontSize * 2)),
                    SizedBox(height: ScreenHeight * 0.03),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Price: 300 USD',
                        style: TextStyle(fontSize: TextFontSize)),
                    SizedBox(height: ScreenHeight * 0.01),
                    Text('Start date: 1/5/2020',
                        style: TextStyle(fontSize: TextFontSize)),
                    SizedBox(height: ScreenHeight * 0.01),
                    Text('End date: 4/5/2020',
                        style: TextStyle(fontSize: TextFontSize)),
                    SizedBox(height: ScreenHeight * 0.01),
                    Text('End registration date: 20/4/2020',
                        style: TextStyle(fontSize: TextFontSize)),
                    SizedBox(height: ScreenHeight * 0.01),
                    Text('Country: Egypt \u{1F1EA}\u{1F1EC}',
                        style: TextStyle(fontSize: TextFontSize)),
                    SizedBox(height: ScreenHeight * 0.01),
                    Text("Locations: Pyramids - Sharm al-sheikh - Nile river",
                        style: TextStyle(fontSize: TextFontSize)),
                    SizedBox(height: ScreenHeight * 0.01),
                    Text('Transportations: Bus - Yacht',
                        style: TextStyle(fontSize: TextFontSize)),
                    SizedBox(height: ScreenHeight * 0.01),
                  ]),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.grey,
                      minimumSize: const Size.fromHeight(50)),
                  onPressed: () {
                    Get.toNamed(AppRoute.CompanyProfilePage);
                  },
                  child: const Text(
                    "Contact us",
                    style: TextStyle(color: Colors.white),
                  ))
            ]),
      ),
    );
  }
}
