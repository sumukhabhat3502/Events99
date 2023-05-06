import 'package:eventss/core/app_export.dart';
import 'package:eventss/presentation/booking_screen/models/booking_model.dart';

class BookingController extends GetxController {
  Rx<BookingModel> bookingModelObj = BookingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
