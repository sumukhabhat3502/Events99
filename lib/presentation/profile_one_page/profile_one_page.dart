import 'controller/profile_one_controller.dart';
import 'models/profile_one_model.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/widgets/app_bar/appbar_image.dart';
import 'package:eventss/widgets/app_bar/appbar_title.dart';
import 'package:eventss/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ProfileOnePage extends StatelessWidget {
  ProfileOneController controller =
      Get.put(ProfileOneController(ProfileOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            64,
          ),
          leadingWidth: 80,
          leading: CustomImageView(
            imagePath: ImageConstant.imgFrame89,
            height: getSize(
              64,
            ),
            width: getSize(
              64,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                32,
              ),
            ),
            margin: getMargin(
              left: 16,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarTitle(
                  text: "lbl_hello_emilla".tr,
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                    right: 20,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_edit_profile".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOpenSauceOneRegular14Black900,
                        ),
                      ),
                      AppbarImage(
                        height: getSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        svgPath: ImageConstant.imgArrowrightGray900,
                        margin: getMargin(
                          left: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 34,
            ),
            child: Padding(
              padding: getPadding(
                left: 15,
                right: 15,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 9,
                    ),
                    child: Text(
                      "lbl_upcoming_event".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOpenSauceOneRegular14,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      199,
                    ),
                    width: getHorizontalSize(
                      330,
                    ),
                    margin: getMargin(
                      top: 15,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage2443x360,
                          height: getVerticalSize(
                            199,
                          ),
                          width: getHorizontalSize(
                            330,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 14,
                              top: 18,
                              right: 16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "msg_zakir_khan_haq".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtOpenSauceOneMedium18WhiteA700,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 23,
                                  ),
                                  child: Text(
                                    "lbl_location".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtOpenSauceOneMedium12WhiteA700,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 2,
                                    top: 6,
                                  ),
                                  child: Text(
                                    "msg_leela_palace_bengaluru".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtOpenSauceOneMedium12WhiteA700,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 11,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_1_ticket".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneSemiBold12WhiteA700,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                top: 5,
                                              ),
                                              child: Text(
                                                "lbl_399".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOpenSauceOneMedium20Bluegray50,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          bottom: 6,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "msg_date_10_feb_2023".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSauceOneMedium12Bluegray50,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 9,
                                              ),
                                              child: Text(
                                                "lbl_time_9_00_pm".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOpenSauceOneMedium12Bluegray50,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        top: 2,
                      ),
                      padding: getPadding(
                        left: 105,
                        top: 32,
                        right: 105,
                        bottom: 32,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup10,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_your_qr_code".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOpenSauceOneMedium14Black90001,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgH1,
                            height: getSize(
                              120,
                            ),
                            width: getSize(
                              120,
                            ),
                            margin: getMargin(
                              top: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 40,
                      right: 1,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgBag,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 2,
                          ),
                          child: Text(
                            "lbl_your_bookings".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOpenSauceOneRegular14Black900,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightGray900,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.black90033,
                      indent: getHorizontalSize(
                        1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 15,
                      right: 1,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgQuestion,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 2,
                          ),
                          child: Text(
                            "msg_help_and_support".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOpenSauceOneRegular14Black900,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightGray900,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.black90033,
                      indent: getHorizontalSize(
                        1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 15,
                      right: 1,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgOffer,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_offers".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOpenSauceOneRegular14Black900,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightGray900,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
