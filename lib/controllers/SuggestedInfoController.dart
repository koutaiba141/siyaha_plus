// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/models/SuggestedInfoModel.dart';
import 'package:siyaha_plus_mobile/core/network/DioClient.dart';

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

  // insert to the database function
  void InsertSuggestedInfo() async {
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

    String RequestBody = Suggested.SuggestedInfoToJson();
    var post =
        await DioClient().getInstance().post("/Suggested", data: RequestBody);
    if (post.statusCode == 200) {
      print(post.data);
    } else {
      print('Insert failed');
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
    var put = await DioClient()
        .getInstance()
        .put("/Suggested/$id", data: RequestBody);
    if (put.statusCode == 200) {
      print('Updated successfully');
    } else {
      print('Update failed');
    }
  }

  // This function will either insert or update based on the value of `isUpdating`
  void SaveSuggestedInfo() {
    if (isUpdating.value) {
      UpdateSuggestedInfo();
    } else {
      InsertSuggestedInfo();
    }
  }
}
