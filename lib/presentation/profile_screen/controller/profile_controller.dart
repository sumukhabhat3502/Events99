import 'package:eventss/core/app_export.dart';
import 'package:eventss/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobilenumberController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  Rx<bool> isCheckbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullnameController.dispose();
    emailController.dispose();
    mobilenumberController.dispose();
  }
}
