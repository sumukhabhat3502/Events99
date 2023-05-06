import '../controller/show_controller.dart';
import 'package:get/get.dart';

class ShowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShowController());
  }
}
