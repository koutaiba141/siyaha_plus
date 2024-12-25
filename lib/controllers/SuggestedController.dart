// ignore_for_file: non_constant_identifier_names, file_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/models/SuggestedModel.dart';
import 'package:siyaha_plus_mobile/core/network/DioClient.dart';

class SuggestedController extends GetxController {
  var Suggested = <SuggestedModel>[].obs;

  Future<void> fetchSuggestedPlaces() async {
    try {
      var response = await DioClient().getInstance().get("/Suggested");
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        Suggested.value =
            data.map((json) => SuggestedModel.fromJson(json)).toList();
      } else {
        print('Failed to fetch suggested');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
