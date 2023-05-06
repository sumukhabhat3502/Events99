import 'package:eventss/core/app_export.dart';
import 'package:eventss/presentation/otp_screen/models/otp_model.dart';
import 'package:flutter/material.dart';

class OtpController extends GetxController {
  TextEditingController enterotpController = TextEditingController();

  Rx<OtpModel> otpModelObj = OtpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    enterotpController.dispose();
  }
}
