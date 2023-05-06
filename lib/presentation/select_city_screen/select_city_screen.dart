import 'controller/select_city_controller.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/widgets/app_bar/appbar_iconbutton.dart';
import 'package:eventss/widgets/app_bar/appbar_subtitle.dart';
import 'package:eventss/widgets/app_bar/custom_app_bar.dart';
import 'package:eventss/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SelectCityScreen extends GetWidget<SelectCityController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray50,
            appBar: CustomAppBar(
                height: getVerticalSize(68),
                leadingWidth: 64,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 4, bottom: 4),
                    onTap: () {
                      onTapArrowleft();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_bengaluru".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 12, right: 16, bottom: 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "msg_search_your_city".tr,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 16, right: 12, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearchBlack900)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    controller.searchController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600)))),
                      Padding(
                          padding: getPadding(top: 49),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalculator,
                                height: getSize(20),
                                width: getSize(20)),
                            Padding(
                                padding: getPadding(left: 12),
                                child: Text("lbl_mumbai".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSauceOneRegular16))
                          ])),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.black90033)),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalculator,
                                height: getSize(20),
                                width: getSize(20)),
                            Padding(
                                padding: getPadding(left: 12),
                                child: Text("lbl_delhi".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSauceOneRegular16))
                          ])),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.black90033)),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalculator,
                                height: getSize(20),
                                width: getSize(20)),
                            Padding(
                                padding: getPadding(left: 12),
                                child: Text("lbl_kolkata".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSauceOneRegular16))
                          ])),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.black90033)),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalculator,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(bottom: 1)),
                            Padding(
                                padding: getPadding(left: 12, top: 1),
                                child: Text("lbl_hyderabad".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSauceOneRegular16))
                          ])),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.black90033)),
                      Padding(
                          padding: getPadding(top: 23, bottom: 5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalculator,
                                height: getSize(20),
                                width: getSize(20)),
                            Padding(
                                padding: getPadding(left: 12),
                                child: Text("lbl_chennai".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSauceOneRegular16))
                          ]))
                    ]))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
