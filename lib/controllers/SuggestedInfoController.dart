// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/models/SuggestedInfoModel.dart';
import 'package:siyaha_plus_mobile/core/network/DioClient.dart';
import 'package:dio/dio.dart';

class SuggestedInfoController extends GetxController {
  var SuggestedProfile = Rxn<Uint8List>();
  var SuggestedName = TextEditingController();
  var SuggestedDescription = TextEditingController();
  var SuggestedType = TextEditingController();
  var SuggestedNumber = TextEditingController();
  var SuggestedLocation = TextEditingController();
  var SuggestedFacebook = TextEditingController();
  var SuggestedInstagram = TextEditingController();
  var SuggestedTiktok = TextEditingController();

  var isUpdating = false.obs;
  var id = 0.obs; // if updating, this will hold the record ID

  // Insert to the database function
  void InsertSuggestedInfo() async {
    // Construct the SuggestedInfoModel instance
    SuggestedInfoModel Suggested = SuggestedInfoModel(
        SuggestedProfile: SuggestedProfile.value ?? Uint8List(0),
        SuggestedName: SuggestedName.text,
        SuggestedDescription: SuggestedDescription.text,
        SuggestedType: SuggestedType.text,
        SuggestedNumber: SuggestedNumber.text,
        SuggestedLocation: SuggestedLocation.text,
        SuggestedFacebook: SuggestedFacebook.text,
        SuggestedInstagram: SuggestedInstagram.text,
        SuggestedTiktok: SuggestedTiktok.text);

    // Convert the model to JSON
    String RequestBody = Suggested.SuggestedInfoToJson();
    print('Request Body: $RequestBody'); // Debugging output

    // Send POST request with headers
    try {
      var post = await DioClient().getInstance().post(
            "/api/Suggested",
            data: RequestBody,
            options: Options(headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            }),
          );

      if (post.statusCode == 200 || post.statusCode == 201) {
        print('Insert successful: ${post.data}');
      } else {
        print('Insert failed: ${post.statusCode} - ${post.statusMessage}');
      }
    } catch (e) {
      print('Error during insert: $e');
    }
  }

  // Update function
  void UpdateSuggestedInfo() async {
    SuggestedInfoModel Suggested = SuggestedInfoModel(
      SuggestedProfile: SuggestedProfile.value ?? Uint8List(0),
      SuggestedName: SuggestedName.text,
      SuggestedDescription: SuggestedDescription.text,
      SuggestedType: SuggestedType.text,
      SuggestedNumber: SuggestedNumber.text,
      SuggestedLocation: SuggestedLocation.text,
      SuggestedFacebook: SuggestedFacebook.text,
      SuggestedInstagram: SuggestedInstagram.text,
      SuggestedTiktok: SuggestedTiktok.text,
    );

    String RequestBody = Suggested.SuggestedInfoToJson();
    print('Request Body: $RequestBody'); // Debugging output

    try {
      var put = await DioClient().getInstance().put(
            "/api/Suggested/$id",
            data: RequestBody,
            options: Options(headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            }),
          );

      if (put.statusCode == 200) {
        print('Update successful: ${put.data}');
      } else {
        print('Update failed: ${put.statusCode} - ${put.statusMessage}');
      }
    } catch (e) {
      print('Error during update: $e');
    }
  }

  void SaveSuggestedInfo() {
    if (isUpdating.value) {
      UpdateSuggestedInfo();
    } else {
      InsertSuggestedInfo();
    }
  }
}
