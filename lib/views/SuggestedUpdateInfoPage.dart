// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';

class SuggestedUpdateInfoPage extends StatelessWidget {
  const SuggestedUpdateInfoPage({super.key});
  final double LabelFontSize = 15;
  final double LabelPadding = 20;
  final double SixedBoxHeight = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Updating profile",
            selectionColor: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Profile text
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      const Text(
                        "Add a profile picture",
                        selectionColor: Colors.blue,
                        style: TextStyle(fontFamily: "Caveat", fontSize: 20),
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Profile picture
                      ClipOval(
                        child: SvgPicture.asset(
                          'images/ProfileImage.svg',
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                      ),
                      // Company name
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Company name',
                            labelStyle: TextStyle(fontSize: LabelFontSize),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: LabelPadding)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a company name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Company type
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Store type',
                          labelStyle: TextStyle(fontSize: LabelFontSize),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: LabelPadding, horizontal: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        items: <String>[
                          'Restaurant',
                          'Store',
                          'entertainment venues'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {},
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),

                      // Company number
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Company phone number',
                            labelStyle: TextStyle(fontSize: LabelFontSize),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: LabelPadding,
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a company phone number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Company GPS location
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Company GPS location',
                            labelStyle: TextStyle(fontSize: LabelFontSize),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: LabelPadding,
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a company GPS location';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Facebook link
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Facebook link',
                            labelStyle: TextStyle(fontSize: LabelFontSize),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: LabelPadding,
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a Facebook link';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Instagram link
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Instagram link',
                            labelStyle: TextStyle(fontSize: LabelFontSize),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: LabelPadding,
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an Instagram link';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Tiktok link
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Tiktok link',
                            labelStyle: TextStyle(fontSize: LabelFontSize),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: LabelPadding,
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a Tiktok link';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Submit button
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.grey,
                              minimumSize: Size.fromHeight(50)),
                          onPressed: () {
                            Get.toNamed(AppRoute.SuggestedProfilePage);
                          },
                          child: const Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          )),
                    ]))));
  }
}
