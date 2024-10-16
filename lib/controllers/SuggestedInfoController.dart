// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/models/SuggestedInfoModel.dart';
import 'package:siyaha_plus_mobile/core/network/DioClient.dart';

class SuggestedInfoController extends GetxController {
  var SuggestedProfile = Rxn<Uint8List>();
  var SuggestedName = TextEditingController();
  var SuggestedType = TextEditingController();
  var SuggestedNumber = TextEditingController();
  var SuggestedLocation = TextEditingController();

  void getSuggestedInfo() async {
    SuggestedInfoModel Suggested = SuggestedInfoModel(
      SuggestedProfile: SuggestedProfile.value ?? Uint8List(0),
      SuggestedName: SuggestedName.text,
      SuggestedType: SuggestedType.text,
      SuggestedNumber: SuggestedNumber.text,
      SuggestedLocation: SuggestedLocation.text,
    );
    String request_body = Suggested.SuggestedInfoToJson();
    var post =
        await DioClient().getInstance().post("/Suggested", data: request_body);
    if (post.statusCode == 200) {
      print(post.data);
    }
  }
}
