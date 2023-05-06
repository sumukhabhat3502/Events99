import '../controller/select_city_controller.dart';
import 'package:get/get.dart';

class SelectCityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectCityController());
  }
}
