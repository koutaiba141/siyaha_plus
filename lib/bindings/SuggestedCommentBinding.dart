// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/SuggestedCommentController.dart';

class SuggestedCommentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuggestedCommentController());
  }
}
