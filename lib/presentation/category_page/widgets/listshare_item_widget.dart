import '../controller/category_controller.dart';
import '../models/listshare_item_model.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListshareItemWidget extends StatelessWidget {
  ListshareItemWidget(this.listshareItemModelObj, {this.onTapColumnshare});

  ListshareItemModel listshareItemModelObj;

  var controller = Get.find<CategoryController>();

  VoidCallback? onTapColumnshare;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapColumnshare?.call();
        },
        child: Container(
          decoration: AppDecoration.fillGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  184,
                ),
                width: getHorizontalSize(
                  328,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage3,
                      height: getVerticalSize(
                        184,
                      ),
                      width: getHorizontalSize(
                        328,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomIconButton(
                      height: 48,
                      width: 48,
                      margin: getMargin(
                        top: 12,
                        right: 12,
                      ),
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgShare,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 13,
                ),
                child: Obx(
                  () => Text(
                    listshareItemModelObj.zakirkhanhaqTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOpenSauceOneMedium16,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 3,
                ),
                child: Text(
                  "msg_date_26_jan_23".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSauceOneRegular12,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 6,
                  bottom: 14,
                ),
                child: Text(
                  "msg_leela_palace_bengaluru".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSauceOneRegular12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
