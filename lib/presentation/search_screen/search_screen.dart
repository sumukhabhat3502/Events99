import 'controller/search_controller.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/widgets/custom_icon_button.dart';
import 'package:eventss/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends GetWidget<SearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 16, bottom: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 48,
                          width: 48,
                          margin: getMargin(left: 16),
                          variant: IconButtonVariant.FillGray300,
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Align(
                          alignment: Alignment.center,
                          child: CustomSearchView(
                              focusNode: FocusNode(),
                              controller: controller.searchController,
                              hintText: "msg_search_your_event".tr,
                              margin: getMargin(left: 16, top: 16, right: 16),
                              alignment: Alignment.center,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 12, bottom: 16),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgSearchBlack900)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              suffix: Padding(
                                  padding: EdgeInsets.only(
                                      right: getHorizontalSize(15)),
                                  child: IconButton(
                                      onPressed: () {
                                        controller.searchController.clear();
                                      },
                                      icon: Icon(Icons.clear,
                                          color: Colors.grey.shade600))))),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(left: 16, top: 40, bottom: 5),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Container(
                                    width: getHorizontalSize(148),
                                    padding: getPadding(
                                        left: 24,
                                        top: 10,
                                        right: 24,
                                        bottom: 10),
                                    decoration: AppDecoration
                                        .txtOutlineBlack90099
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder21),
                                    child: Text("lbl_comedy_show".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSauceOneRegular14Black900)),
                                Container(
                                    width: getHorizontalSize(130),
                                    margin: getMargin(left: 12),
                                    padding: getPadding(
                                        left: 24,
                                        top: 11,
                                        right: 24,
                                        bottom: 11),
                                    decoration: AppDecoration
                                        .txtOutlineBlack90099
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder21),
                                    child: Text("lbl_music_show".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSauceOneRegular14Black900)),
                                Container(
                                    width: getHorizontalSize(114),
                                    margin: getMargin(left: 12),
                                    padding: getPadding(
                                        left: 24,
                                        top: 10,
                                        right: 24,
                                        bottom: 10),
                                    decoration: AppDecoration
                                        .txtOutlineBlack90099
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder21),
                                    child: Text("lbl_open_mic".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSauceOneRegular14Black900)),
                                Spacer(),
                                Container(
                                    width: getHorizontalSize(117),
                                    padding: getPadding(
                                        left: 24,
                                        top: 12,
                                        right: 24,
                                        bottom: 12),
                                    decoration: AppDecoration
                                        .txtOutlineBlack90099
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder21),
                                    child: Text("lbl_adventure".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSauceOneRegular14Black900))
                              ])))
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
