import '../controller/category_controller.dart';
import '../models/list_item_model.dart';
import 'package:eventss/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(this.listItemModelObj);

  ListItemModel listItemModelObj;

  var controller = Get.find<CategoryController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          89,
        ),
        margin: getMargin(
          right: 12,
        ),
        padding: getPadding(
          left: 24,
          top: 12,
          right: 24,
          bottom: 12,
        ),
        decoration: AppDecoration.txtGradientDeeppurpleA200Purple900.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder21,
        ),
        child: Obx(
          () => Text(
            listItemModelObj.bigbuttonTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtOpenSauceOneMedium14Bluegray50,
          ),
        ),
      ),
    );
  }
}
