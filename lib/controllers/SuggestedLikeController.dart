// ignore_for_file: file_names, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/models/SuggestedLikeModel.dart';
import 'package:siyaha_plus_mobile/core/network/DioClient.dart';

class SuggestedLikeController extends GetxController {
  var likesByCountry = <SuggestedLikeModel>[].obs;

  Future<void> fetchLikes() async {
    try {
      var response = await DioClient().getInstance().get("/Likes");
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        likesByCountry.value =
            data.map((json) => SuggestedLikeModel.fromJson(json)).toList();
      } else {
        print('Failed to fetch likes');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
