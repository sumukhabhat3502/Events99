import 'package:eventss/core/app_export.dart';
import 'package:eventss/presentation/events_screen/models/events_model.dart';
import 'package:eventss/widgets/custom_bottom_bar.dart';

class EventsController extends GetxController {
  Rx<EventsModel> eventsModelObj = EventsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
