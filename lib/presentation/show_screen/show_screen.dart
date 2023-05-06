import '../show_screen/widgets/show_item_widget.dart';
import 'controller/show_controller.dart';
import 'models/show_item_model.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/widgets/custom_button.dart';
import 'package:eventss/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ShowScreen extends GetWidget<ShowController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray50,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(443),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage2443x360,
                                            height: getVerticalSize(443),
                                            width: getHorizontalSize(360),
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgFrame46,
                                            height: getVerticalSize(80),
                                            width: getHorizontalSize(360),
                                            alignment: Alignment.topCenter)
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      width: double.maxFinite,
                                      padding: getPadding(
                                          left: 16,
                                          top: 15,
                                          right: 16,
                                          bottom: 15),
                                      decoration: AppDecoration.fillBluegray50,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text(
                                                    "msg_zakir_khan_haq".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOpenSauceOneSemiBold20)),
                                            Padding(
                                                padding: getPadding(top: 5),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCalendar,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8, top: 1),
                                                      child: Text(
                                                          "msg_fri_10_feb_2023"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSauceOneRegular14))
                                                ])),
                                            Padding(
                                                padding: getPadding(top: 8),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8, top: 2),
                                                      child: Text(
                                                          "msg_leela_palace_bengaluru"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSauceOneRegular14))
                                                ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 8),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.black90033,
                                          indent: getHorizontalSize(16),
                                          endIndent: getHorizontalSize(16)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 23),
                                  child: Text("msg_more_information".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSauceOneMedium16)),
                              CustomTextFormField(
                                  width: getHorizontalSize(109),
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.framefiftytwoController,
                                  hintText: "lbl_comedy_show".tr,
                                  margin: getMargin(left: 16, top: 8),
                                  variant: TextFormFieldVariant.None,
                                  fontStyle: TextFormFieldFontStyle
                                      .OpenSauceOneRegular12,
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: getMargin(right: 8, bottom: 1),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgCategory)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(17))),
                              Padding(
                                  padding: getPadding(left: 16, top: 6),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgUserBlack900,
                                        height: getSize(16),
                                        width: getSize(16)),
                                    Padding(
                                        padding: getPadding(left: 8),
                                        child: Text("lbl_1_hr_20mins".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneRegular12))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCut,
                                        height: getSize(16),
                                        width: getSize(16)),
                                    Padding(
                                        padding: getPadding(left: 8),
                                        child: Text("lbl_hindi".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneRegular12))
                                  ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 24),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.black90033,
                                          indent: getHorizontalSize(16),
                                          endIndent: getHorizontalSize(16)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 23),
                                  child: Text("lbl_artist".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSauceOneMedium16)),
                              Padding(
                                  padding: getPadding(left: 16, top: 12),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage4,
                                        height: getSize(64),
                                        width: getSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(32))),
                                    Padding(
                                        padding: getPadding(
                                            left: 12, top: 21, bottom: 22),
                                        child: Text("lbl_zakir_khan".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneMedium16))
                                  ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 24),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.black90033,
                                          indent: getHorizontalSize(16),
                                          endIndent: getHorizontalSize(16)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 25),
                                  child: Text("lbl_description".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSauceOneMedium16)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(318),
                                      margin: getMargin(top: 7),
                                      child: ReadMoreText(
                                          "msg_ligula_massa_laoreet".tr,
                                          trimLines: 4,
                                          colorClickableText:
                                              ColorConstant.deepPurpleA200,
                                          trimMode: TrimMode.Line,
                                          trimCollapsedText: "lbl_read_more".tr,
                                          moreStyle: TextStyle(
                                              color: ColorConstant.black90099,
                                              fontSize: getFontSize(12),
                                              fontFamily: 'Open Sauce One',
                                              fontWeight: FontWeight.w400),
                                          lessStyle: TextStyle(
                                              color: ColorConstant.black90099,
                                              fontSize: getFontSize(12),
                                              fontFamily: 'Open Sauce One',
                                              fontWeight: FontWeight.w400)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 24),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.black90033,
                                          indent: getHorizontalSize(16),
                                          endIndent: getHorizontalSize(16)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 41),
                                  child: Text("lbl_location_on_map".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSauceOneMedium16)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: getMargin(top: 6),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder16),
                                      child: Container(
                                          height: getVerticalSize(184),
                                          width: getHorizontalSize(328),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMapsiclemap,
                                                    height:
                                                        getVerticalSize(184),
                                                    width:
                                                        getHorizontalSize(328),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                16)),
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgLocationon,
                                                    height: getSize(40),
                                                    width: getSize(40),
                                                    alignment: Alignment.center)
                                              ])))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 24),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.black90033,
                                          indent: getHorizontalSize(16),
                                          endIndent: getHorizontalSize(16)))),
                              Padding(
                                  padding: getPadding(left: 15, top: 25),
                                  child: Text("msg_you_may_also_like".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtOpenSauceOneSemiBold20)),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(313),
                                      child: Obx(() => ListView.separated(
                                          padding:
                                              getPadding(left: 16, top: 21),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: controller.showModelObj
                                              .value.showItemList.value.length,
                                          itemBuilder: (context, index) {
                                            ShowItemModel model = controller
                                                .showModelObj
                                                .value
                                                .showItemList
                                                .value[index];
                                            return ShowItemWidget(model);
                                          }))))
                            ])))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 28),
                decoration: AppDecoration.outlineGray300,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 18, bottom: 17),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_399".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(20),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_onwards".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black90099,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.left)),
                      CustomButton(
                          width: getHorizontalSize(156),
                          text: "lbl_book".tr,
                          onTap: () {
                            onTapBook();
                          })
                    ]))));
  }

  onTapBook() {
    Get.toNamed(
      AppRoutes.bookingScreen,
    );
  }
}
