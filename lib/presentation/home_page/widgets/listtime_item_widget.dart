import '../controller/home_controller.dart';
import '../models/listtime_item_model.dart';
import 'package:eventss/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtimeItemWidget extends StatelessWidget {
  ListtimeItemWidget(this.listtimeItemModelObj, {this.onTapColumntime});

  ListtimeItemModel listtimeItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapColumntime;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapColumntime?.call();
          },
          child: Padding(
            padding: getPadding(
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: ColorConstant.gray300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Container(
                    height: getVerticalSize(
                      216,
                    ),
                    width: getHorizontalSize(
                      144,
                    ),
                    decoration: AppDecoration.fillGray300.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage2,
                          height: getVerticalSize(
                            216,
                          ),
                          width: getHorizontalSize(
                            144,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              16,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: getPadding(
                              left: 8,
                              top: 7,
                              right: 8,
                              bottom: 7,
                            ),
                            decoration: AppDecoration.fillGray300cc,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    90,
                                  ),
                                  child: Text(
                                    "msg_date_26_jan_23_time".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtOpenSauceOneMedium12Black900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Obx(
                    () => Text(
                      listtimeItemModelObj.facilisiarcunonTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOpenSauceOneMedium16,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: Text(
                    "msg_leela_palace_bengaluru".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOpenSauceOneRegular12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Obx(
                    () => Text(
                      listtimeItemModelObj.priceTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOpenSauceOneRegular12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
