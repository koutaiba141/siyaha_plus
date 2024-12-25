// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/SuggestedLikeController.dart';

class SuggestedLikeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuggestedLikeController());
  }
}
