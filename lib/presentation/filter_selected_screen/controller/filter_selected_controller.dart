import 'package:eventss/core/app_export.dart';
import 'package:eventss/presentation/filter_selected_screen/models/filter_selected_model.dart';
import 'package:eventss/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class FilterSelectedController extends GetxController {
  TextEditingController grouptwentyseveController = TextEditingController();

  TextEditingController grouptwentynineController = TextEditingController();

  TextEditingController groupthirtyoneController = TextEditingController();

  TextEditingController groupthirtythreController = TextEditingController();

  Rx<FilterSelectedModel> filterSelectedModelObj = FilterSelectedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    grouptwentyseveController.dispose();
    grouptwentynineController.dispose();
    groupthirtyoneController.dispose();
    groupthirtythreController.dispose();
  }
}
