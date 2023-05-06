import 'controller/otp_controller.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/widgets/custom_button.dart';
import 'package:eventss/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class OtpScreen extends GetWidget<OtpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgFrame86,
                          height: getVerticalSize(227),
                          width: getHorizontalSize(328),
                          radius: BorderRadius.circular(getHorizontalSize(32))),
                      Padding(
                          padding: getPadding(top: 35),
                          child: Text("lbl_verify_with_otp".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOpenSauceOneBold24)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_we_have_sent_an2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black90099,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "msg_99events_gmail_com".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left)),
                      GestureDetector(
                          onTap: () {
                            onTapTxtChangeemailid();
                          },
                          child: Padding(
                              padding: getPadding(top: 15),
                              child: Text("lbl_change_email_id".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSauceOneMedium14))),
                      Spacer(),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.enterotpController,
                          hintText: "lbl_enter_otp".tr,
                          variant: TextFormFieldVariant.OutlineBlack90099,
                          textInputAction: TextInputAction.done),
                      CustomButton(
                          text: "lbl_verify".tr,
                          margin: getMargin(top: 16),
                          onTap: () {
                            onTapVerify();
                          }),
                      Padding(
                          padding: getPadding(top: 31, bottom: 46),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_d".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black90099,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_id".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black90099,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "msg_n_t_receive_the".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black90099,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_re_send".tr,
                                    style: TextStyle(
                                        color: ColorConstant.deepPurpleA200,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left))
                    ]))));
  }

  onTapTxtChangeemailid() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }

  onTapVerify() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
