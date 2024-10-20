// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/models/SuggestedProfileModel.dart';
import 'package:siyaha_plus_mobile/core/network/DioClient.dart';

class SuggestedProfileController extends GetxController {
  var SuggestedProfile = Rxn<SuggestedProfileModel>();

  Future<void> fetchProfile() async {
    try {
      var response = await DioClient().getInstance().get("/Profile");
      if (response.statusCode == 200) {
        SuggestedProfile.value = SuggestedProfileModel.fromJson(response.data);
      } else {
        print('Failed to fetch profile');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
