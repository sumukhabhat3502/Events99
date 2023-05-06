import 'controller/splash_controller.dart';
import 'package:eventss/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, 0),
                        end: Alignment(1, 1),
                        colors: [
                      ColorConstant.deepPurpleA200,
                      ColorConstant.purple900
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 32, bottom: 32),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Spacer(),
                          CustomImageView(
                              svgPath: ImageConstant.imgSubtractBlueGray50,
                              height: getVerticalSize(120),
                              width: getHorizontalSize(105)),
                          Padding(
                              padding: getPadding(top: 254),
                              child: Text("lbl_events_99".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSauceOneBold24Bluegray50)),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Container(
                                  height: getVerticalSize(6),
                                  width: getHorizontalSize(120),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.blueGray5033,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(3))),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(3)),
                                      child: LinearProgressIndicator(
                                          value: 0.33,
                                          backgroundColor:
                                              ColorConstant.blueGray5033,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  ColorConstant.blueGray50)))))
                        ])))));
  }
}
