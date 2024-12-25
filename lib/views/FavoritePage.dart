// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/approute.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final double TextPadding = ScreenHeight * 0.02;
    final double SizedBoxHeight = ScreenHeight * 0.03;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "All what you love in one place",
          style: TextStyle(
            fontFamily: "Caveat",
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          SizedBox(height: SizedBoxHeight),
          const Center(
              child: Text("Travel companies: ",
                  style: TextStyle(
                    fontSize: 16,
                  ))),
          SizedBox(height: SizedBoxHeight),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoute.CompanyUserProfilePage);
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
                      "Do you want a five star trip, you know how to contact.",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: SizedBoxHeight),
          //Divider
          const Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  thickness: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: SizedBoxHeight),
          const Center(
              child: Text("Suggested companies: ",
                  style: TextStyle(
                    fontSize: 16,
                  ))),
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
            ),
          ),
          SizedBox(height: SizedBoxHeight),
        ],
      ),
    );
  }
}
