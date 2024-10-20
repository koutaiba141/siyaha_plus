// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/SuggestedController.dart';

class SuggestedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuggestedController());
  }
}
