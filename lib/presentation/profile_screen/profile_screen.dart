import 'controller/profile_controller.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/core/utils/validation_functions.dart';
import 'package:eventss/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:eventss/widgets/app_bar/appbar_title.dart';
import 'package:eventss/widgets/app_bar/custom_app_bar.dart';
import 'package:eventss/widgets/custom_button.dart';
import 'package:eventss/widgets/custom_checkbox.dart';
import 'package:eventss/widgets/custom_icon_button.dart';
import 'package:eventss/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray50,
            appBar: CustomAppBar(
                height: getVerticalSize(80),
                leadingWidth: 64,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleft6();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_edit_profile".tr),
                styleType: Style.bgFillBluegray50),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(112),
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 140, top: 16, right: 140, bottom: 16),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgFrame8980x80,
                                        height: getSize(80),
                                        width: getSize(80),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(40)),
                                        alignment: Alignment.center),
                                    CustomIconButton(
                                        height: 28,
                                        width: 28,
                                        variant: IconButtonVariant
                                            .GradientDeeppurpleA200Purple900,
                                        shape: IconButtonShape.CircleBorder14,
                                        padding: IconButtonPadding.PaddingAll7,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgCamera))
                                  ])),
                          Padding(
                              padding: getPadding(left: 16, top: 15),
                              child: Text("lbl_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSauceOneMedium14Black900)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.fullnameController,
                              hintText: "msg_enter_your_full".tr,
                              margin: getMargin(left: 16, top: 8, right: 16),
                              variant: TextFormFieldVariant.OutlineBlack90099,
                              alignment: Alignment.center,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(left: 16, top: 31),
                              child: Text("lbl_email_address".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSauceOneMedium14Black900)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "msg_events99_gmail_com".tr,
                              margin: getMargin(left: 16, top: 8, right: 16),
                              variant: TextFormFieldVariant.OutlineBlack90099,
                              padding: TextFormFieldPadding.PaddingAll18,
                              fontStyle:
                                  TextFormFieldFontStyle.OpenSauceOneRegular16,
                              textInputType: TextInputType.emailAddress,
                              alignment: Alignment.center,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(left: 16, top: 31),
                              child: Text("lbl_phone_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSauceOneMedium14Black900)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.mobilenumberController,
                              hintText: "msg_enter_your_mobile".tr,
                              margin: getMargin(left: 16, top: 8, right: 16),
                              variant: TextFormFieldVariant.OutlineBlack90099,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone,
                              alignment: Alignment.center,
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "Please enter valid phone number";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(left: 32, top: 20, bottom: 5),
                              child: Row(children: [
                                Obx(() => CustomCheckbox(
                                    text: "msg_get_tickets_on_whatsapp".tr,
                                    iconSize: getHorizontalSize(20),
                                    value: controller.isCheckbox.value,
                                    fontStyle:
                                        CheckboxFontStyle.OpenSauceOneRegular14,
                                    onChange: (value) {
                                      controller.isCheckbox.value = value;
                                    })),
                                CustomImageView(
                                    imagePath: ImageConstant.imgHelp,
                                    height: getSize(16),
                                    width: getSize(16),
                                    margin:
                                        getMargin(left: 8, top: 2, bottom: 2))
                              ]))
                        ]))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 8, right: 16, bottom: 28),
                decoration: AppDecoration.outlineGray300,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CustomButton(text: "lbl_save_changes".tr)]))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
