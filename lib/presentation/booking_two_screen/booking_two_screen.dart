import 'controller/booking_two_controller.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:eventss/widgets/app_bar/appbar_title.dart';
import 'package:eventss/widgets/app_bar/custom_app_bar.dart';
import 'package:eventss/widgets/custom_button.dart';
import 'package:eventss/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class BookingTwoScreen extends GetWidget<BookingTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray50,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 64,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 4, bottom: 4),
                    onTap: () {
                      onTapArrowleft5();
                    }),
                title: AppbarTitle(
                    text: "msg_zakir_khan_haq".tr,
                    margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 12, bottom: 12),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 15, right: 16, bottom: 15),
                              decoration: AppDecoration.fillBluegray50,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_leela_palace".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneSemiBold20),
                                    Padding(
                                        padding: getPadding(top: 13),
                                        child: Text("msg_friday_10_feb_2023".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneRegular14)),
                                    Container(
                                        width: getHorizontalSize(298),
                                        margin: getMargin(top: 12, right: 29),
                                        child: Text("msg_the_leela_palace".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneRegular14)),
                                    CustomButton(
                                        height: getVerticalSize(28),
                                        width: getHorizontalSize(84),
                                        text: "lbl_filling_fast".tr,
                                        margin: getMargin(top: 10),
                                        variant: ButtonVariant.OutlineOrange500,
                                        shape: ButtonShape.CircleBorder14,
                                        padding: ButtonPadding.PaddingAll7,
                                        fontStyle: ButtonFontStyle
                                            .OpenSauceOneRegular10)
                                  ]))),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.black90033,
                              indent: getHorizontalSize(16),
                              endIndent: getHorizontalSize(16))),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 7),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillBluegray50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_back_row".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtOpenSauceOneMedium18),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_399".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSauceOneRegular14))
                                    ]),
                                Spacer(),
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    margin: getMargin(top: 3, bottom: 3),
                                    variant:
                                        IconButtonVariant.OutlineBlack90099,
                                    shape: IconButtonShape.CircleBorder20,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgMenu)),
                                Padding(
                                    padding: getPadding(
                                        left: 12, top: 11, bottom: 10),
                                    child: Text("lbl_1".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneRegular20)),
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    margin:
                                        getMargin(left: 14, top: 3, bottom: 3),
                                    variant:
                                        IconButtonVariant.OutlineBlack90099,
                                    shape: IconButtonShape.CircleBorder20,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgPlus))
                              ])),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.black90033,
                              indent: getHorizontalSize(16),
                              endIndent: getHorizontalSize(16))),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 7, bottom: 5),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillBluegray50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_front_row".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSauceOneMedium18),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("lbl_599".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSauceOneRegular14))
                                        ])),
                                OutlineGradientButton(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(1),
                                        top: getVerticalSize(1),
                                        right: getHorizontalSize(1),
                                        bottom: getVerticalSize(1)),
                                    strokeWidth: getHorizontalSize(1),
                                    gradient: LinearGradient(
                                        begin: Alignment(0, 0),
                                        end: Alignment(1, 1),
                                        colors: [
                                          ColorConstant.deepPurpleA200,
                                          ColorConstant.purple900
                                        ]),
                                    corners: Corners(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                        bottomLeft: Radius.circular(24),
                                        bottomRight: Radius.circular(24)),
                                    child: CustomButton(
                                        height: getVerticalSize(48),
                                        width: getHorizontalSize(103),
                                        text: "lbl_add".tr,
                                        variant: ButtonVariant.Outline,
                                        shape: ButtonShape.CircleBorder24,
                                        padding: ButtonPadding.PaddingAll12,
                                        fontStyle: ButtonFontStyle
                                            .OpenSauceOneRegular16))
                              ]))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 28),
                decoration: AppDecoration.outlineGray300,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 4, bottom: 3),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_399".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSauceOneMedium20),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 4),
                                        child: Text("lbl_1_ticket".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneRegular14)))
                              ])),
                      CustomButton(
                          width: getHorizontalSize(196),
                          text: "lbl_proceed_to_pay".tr)
                    ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
