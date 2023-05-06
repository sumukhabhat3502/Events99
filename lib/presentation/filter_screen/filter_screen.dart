import '../filter_screen/widgets/filter_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/filter_item_model.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/presentation/category_page/category_page.dart';
import 'package:eventss/presentation/home_page/home_page.dart';
import 'package:eventss/presentation/profile_one_page/profile_one_page.dart';
import 'package:eventss/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:eventss/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:eventss/widgets/app_bar/appbar_title.dart';
import 'package:eventss/widgets/app_bar/custom_app_bar.dart';
import 'package:eventss/widgets/custom_bottom_bar.dart';
import 'package:eventss/widgets/custom_button.dart';
import 'package:eventss/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FilterScreen extends GetWidget<FilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray50,
            appBar: CustomAppBar(
                height: getVerticalSize(88),
                leadingWidth: 72,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleft2();
                    }),
                title: Padding(
                    padding: getPadding(left: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarTitle(text: "lbl_comedy_show".tr),
                          AppbarSubtitle2(
                              text: "msg_bengaluru_5_events".tr,
                              margin: getMargin(top: 1, right: 5))
                        ])),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgSearchBlack900,
                      margin: getMargin(all: 16))
                ],
                styleType: Style.bgFillBluegray50cc),
            body: Container(
                height: getVerticalSize(587),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(left: 16, top: 82, right: 16),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller.filterModelObj.value
                                  .filterItemList.value.length,
                              itemBuilder: (context, index) {
                                FilterItemModel model = controller
                                    .filterModelObj
                                    .value
                                    .filterItemList
                                    .value[index];
                                return FilterItemWidget(model);
                              })))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 24,
                                        top: 10,
                                        right: 24,
                                        bottom: 10),
                                    decoration: AppDecoration
                                        .gradientDeeppurpleA200Purple900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder21),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("lbl_today".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSauceOneMedium14Bluegray50))
                                        ])),
                                CustomButton(
                                    height: getVerticalSize(42),
                                    width: getHorizontalSize(116),
                                    text: "lbl_tomorrow".tr,
                                    margin: getMargin(left: 12),
                                    variant: ButtonVariant.OutlineBlack90099_1,
                                    shape: ButtonShape.CircleBorder21,
                                    padding: ButtonPadding.PaddingAll12,
                                    fontStyle:
                                        ButtonFontStyle.OpenSauceOneRegular14),
                                Container(
                                    width: getHorizontalSize(115),
                                    margin: getMargin(left: 12),
                                    padding: getPadding(top: 11, bottom: 11),
                                    decoration: AppDecoration
                                        .txtOutlineBlack90099
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder21),
                                    child: Text("lbl_this_weekend".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSauceOneRegular14Black900))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillGray300.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    width: getHorizontalSize(189),
                                    text: "lbl_filter".tr,
                                    shape: ButtonShape.Square,
                                    fontStyle:
                                        ButtonFontStyle.OpenSauceOneSemiBold20,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 30),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgClose))),
                                Padding(
                                    padding: getPadding(top: 31),
                                    child: Text("lbl_date".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneMedium16)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.groupthirtysixController,
                                    hintText: "lbl_today".tr,
                                    margin: getMargin(top: 26)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.groupthirtyeighController,
                                    hintText: "lbl_tomorrow".tr,
                                    margin: getMargin(top: 12)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: controller.groupfortyController,
                                    hintText: "msg_day_after_tomorrow".tr,
                                    margin: getMargin(top: 13)),
                                Padding(
                                    padding: getPadding(top: 11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_select_date".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSauceOneRegular14)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCalendar,
                                              height: getSize(20),
                                              width: getSize(20))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 43),
                                    child: Text("lbl_price".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneMedium16)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.groupfortytwoController,
                                    hintText: "lbl_free".tr,
                                    margin: getMargin(top: 24)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.groupfortyfourController,
                                    hintText: "lbl_1_249".tr,
                                    margin: getMargin(top: 12)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.groupfortysixController,
                                    hintText: "lbl_250_499".tr,
                                    margin: getMargin(top: 12),
                                    textInputAction: TextInputAction.done),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Text("lbl_500_and_above".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneRegular14)),
                                CustomButton(
                                    height: getVerticalSize(56),
                                    text: "lbl_apply".tr,
                                    margin: getMargin(top: 168, bottom: 16),
                                    variant: ButtonVariant.FillBlack90033,
                                    fontStyle: ButtonFontStyle
                                        .OpenSauceOneMedium16Black900)
                              ])))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Events:
        return AppRoutes.categoryPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileOnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.categoryPage:
        return CategoryPage();
      case AppRoutes.profileOnePage:
        return ProfileOnePage();
      default:
        return DefaultWidget();
    }
  }

  onTapArrowleft2() {
    Get.back();
  }
}
