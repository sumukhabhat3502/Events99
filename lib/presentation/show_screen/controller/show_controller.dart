import 'package:eventss/core/app_export.dart';
import 'package:eventss/presentation/show_screen/models/show_model.dart';
import 'package:flutter/material.dart';

class ShowController extends GetxController {
  TextEditingController framefiftytwoController = TextEditingController();

  Rx<ShowModel> showModelObj = ShowModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    framefiftytwoController.dispose();
  }
}
