import '../home_page/widgets/listtime1_item_widget.dart';
import '../home_page/widgets/listtime_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/listtime1_item_model.dart';
import 'models/listtime_item_model.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/widgets/app_bar/appbar_image.dart';
import 'package:eventss/widgets/app_bar/appbar_subtitle.dart';
import 'package:eventss/widgets/app_bar/custom_app_bar.dart';
import 'package:eventss/widgets/custom_button.dart';
import 'package:eventss/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray50,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    imagePath: ImageConstant.imgLocationon,
                    margin: getMargin(left: 16, top: 15, bottom: 16)),
                title: Padding(
                    padding: getPadding(left: 8),
                    child: Row(children: [
                      AppbarSubtitle(
                          text: "lbl_bengaluru".tr, margin: getMargin(top: 2)),
                      AppbarImage(
                          height: getSize(24),
                          width: getSize(24),
                          svgPath: ImageConstant.imgArrowdown,
                          margin: getMargin(left: 8, bottom: 1))
                    ]))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomSearchView(
                                  focusNode: FocusNode(),
                                  controller: controller.searchController,
                                  hintText: "msg_search_your_event".tr,
                                  margin: getMargin(right: 16),
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 16,
                                          right: 12,
                                          bottom: 16),
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
                                              color: Colors.grey.shade600)))),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 32),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        CustomButton(
                                            width: getHorizontalSize(134),
                                            text: "lbl_trending".tr,
                                            shape: ButtonShape.CircleBorder21,
                                            padding: ButtonPadding.PaddingT12,
                                            fontStyle: ButtonFontStyle
                                                .OpenSauceOneMedium14,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 8),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgMail))),
                                        CustomButton(
                                            height: getVerticalSize(42),
                                            width: getHorizontalSize(174),
                                            text: "lbl_comedy_show".tr,
                                            margin: getMargin(left: 12),
                                            variant: ButtonVariant
                                                .OutlineBlack90099_1,
                                            shape: ButtonShape.CircleBorder21,
                                            padding: ButtonPadding.PaddingT12,
                                            fontStyle: ButtonFontStyle
                                                .OpenSauceOneRegular14,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 8),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSignal))),
                                        Container(
                                            height: getVerticalSize(42),
                                            width: getHorizontalSize(12),
                                            margin: getMargin(left: 12),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(6)),
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .black90099,
                                                    width:
                                                        getHorizontalSize(1)))),
                                        Spacer(flex: 52),
                                        Container(
                                            width: getHorizontalSize(140),
                                            padding: getPadding(
                                                left: 24,
                                                top: 12,
                                                right: 24,
                                                bottom: 12),
                                            decoration: AppDecoration
                                                .txtOutlineBlack90099
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtCircleBorder21),
                                            child: Text("lbl_open_mic".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOpenSauceOneRegular14Black900)),
                                        Spacer(flex: 48),
                                        Container(
                                            width: getHorizontalSize(143),
                                            padding:
                                                getPadding(top: 12, bottom: 12),
                                            decoration: AppDecoration
                                                .outlineBlack90099
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder21),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMusic,
                                                  height: getSize(18),
                                                  width: getSize(18)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgComputer,
                                                  height: getSize(18),
                                                  width: getSize(18),
                                                  margin: getMargin(left: 434)),
                                              Padding(
                                                  padding: getPadding(left: 8),
                                                  child: Text(
                                                      "lbl_adventure".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSauceOneRegular14Black900))
                                            ]))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 32, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("lbl_near_by_you".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOpenSauceOneSemiBold20)),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 2))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(313),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 21),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .listtimeItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            ListtimeItemModel model = controller
                                                .homeModelObj
                                                .value
                                                .listtimeItemList
                                                .value[index];
                                            return ListtimeItemWidget(model,
                                                onTapColumntime: () {
                                              onTapColumntime();
                                            });
                                          })))),
                              Padding(
                                  padding: getPadding(top: 32, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("lbl_popular".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOpenSauceOneSemiBold20)),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 2))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(313),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 21),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .listtime1ItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            Listtime1ItemModel model =
                                                controller
                                                    .homeModelObj
                                                    .value
                                                    .listtime1ItemList
                                                    .value[index];
                                            return Listtime1ItemWidget(model);
                                          }))))
                            ]))))));
  }

  onTapColumntime() {
    Get.toNamed(
      AppRoutes.showScreen,
    );
  }
}
