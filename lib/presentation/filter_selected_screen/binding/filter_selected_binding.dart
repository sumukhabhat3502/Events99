import '../controller/filter_selected_controller.dart';
import 'package:get/get.dart';

class FilterSelectedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterSelectedController());
  }
}
