import '../controller/events_controller.dart';
import '../models/slidablelistbac_item_model.dart';
import 'package:eventss/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class SlidablelistbacItemWidget extends StatelessWidget {
  SlidablelistbacItemWidget(this.slidablelistbacItemModelObj);

  SlidablelistbacItemModel slidablelistbacItemModelObj;

  var controller = Get.find<EventsController>();

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        extentRatio: 0.67,
        dragDismissible: false,
        children: [
          Container(
            margin: getMargin(
              left: 16,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray300,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16,
                ),
              ),
            ),
            height: getVerticalSize(
              156,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBackviewcrowd,
                  height: getSize(
                    156,
                  ),
                  width: getSize(
                    156,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      16,
                    ),
                  ),
                ),
                Container(
                  padding: getPadding(
                    left: 16,
                    top: 15,
                    right: 16,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.fillGray300cc,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_others".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOpenSauceOneMedium16,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 5,
                        ),
                        child: Text(
                          "msg_bengaluru_8_events".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOpenSauceOneRegular12,
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
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: ColorConstant.gray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Container(
          height: getVerticalSize(
            156,
          ),
          width: getHorizontalSize(
            328,
          ),
          decoration: AppDecoration.fillGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAfricanamerica,
                height: getVerticalSize(
                  156,
                ),
                width: getHorizontalSize(
                  328,
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
                    left: 16,
                    top: 15,
                    right: 16,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.fillGray300cc,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Obx(
                          () => Text(
                            slidablelistbacItemModelObj.comedyshowTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOpenSauceOneMedium16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 4,
                        ),
                        child: Obx(
                          () => Text(
                            slidablelistbacItemModelObj.pricetwoTxt.value,
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
            ],
          ),
        ),
      ),
    );
  }
}
