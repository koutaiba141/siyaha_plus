// ignore_for_file: non_constant_identifier_names, file_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/models/SuggestedCommentModel.dart';
import 'package:siyaha_plus_mobile/core/network/DioClient.dart';

class SuggestedCommentController extends GetxController {
  var comments = <SuggestedCommentModel>[].obs;

  Future<void> fetchComments() async {
    try {
      var response = await DioClient().getInstance().get("/Comments");
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        comments.value =
            data.map((json) => SuggestedCommentModel.fromJson(json)).toList();
      } else {
        print('Failed to fetch comments');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
