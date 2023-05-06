import '../controller/booking_two_controller.dart';
import 'package:get/get.dart';

class BookingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingTwoController());
  }
}
