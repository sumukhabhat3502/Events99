import 'package:eventss/core/app_export.dart';
import 'package:eventss/presentation/filter_screen/models/filter_model.dart';
import 'package:eventss/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class FilterController extends GetxController {
  TextEditingController groupthirtysixController = TextEditingController();

  TextEditingController groupthirtyeighController = TextEditingController();

  TextEditingController groupfortyController = TextEditingController();

  TextEditingController groupfortytwoController = TextEditingController();

  TextEditingController groupfortyfourController = TextEditingController();

  TextEditingController groupfortysixController = TextEditingController();

  Rx<FilterModel> filterModelObj = FilterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupthirtysixController.dispose();
    groupthirtyeighController.dispose();
    groupfortyController.dispose();
    groupfortytwoController.dispose();
    groupfortyfourController.dispose();
    groupfortysixController.dispose();
  }
}
