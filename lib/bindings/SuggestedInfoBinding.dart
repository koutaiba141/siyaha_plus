// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/SuggestedInfoController.dart';

class SuggestedInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuggestedInfoController());
  }
}
