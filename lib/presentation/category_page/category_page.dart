import '../category_page/widgets/list_item_widget.dart';
import '../category_page/widgets/listshare_item_widget.dart';
import 'controller/category_controller.dart';
import 'models/category_model.dart';
import 'models/list_item_model.dart';
import 'models/listshare_item_model.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/widgets/app_bar/appbar_iconbutton.dart';
import 'package:eventss/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:eventss/widgets/app_bar/appbar_title.dart';
import 'package:eventss/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CategoryPage extends StatelessWidget {
  CategoryController controller =
      Get.put(CategoryController(CategoryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray50,
            appBar: CustomAppBar(
                height: getVerticalSize(88),
                leadingWidth: 64,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 20, bottom: 20),
                    onTap: () {
                      onTapArrowleft1();
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
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgSearchBlack900,
                      margin:
                          getMargin(left: 16, top: 20, right: 16, bottom: 20))
                ],
                styleType: Style.bgFillBluegray50cc),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 16, bottom: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(42),
                          child: Obx(() => ListView.separated(
                              padding: getPadding(left: 16),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(12));
                              },
                              itemCount: controller.categoryModelObj.value
                                  .listItemList.value.length,
                              itemBuilder: (context, index) {
                                ListItemModel model = controller
                                    .categoryModelObj
                                    .value
                                    .listItemList
                                    .value[index];
                                return ListItemWidget(model);
                              }))),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: Obx(() => ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: controller.categoryModelObj.value
                                      .listshareItemList.value.length,
                                  itemBuilder: (context, index) {
                                    ListshareItemModel model = controller
                                        .categoryModelObj
                                        .value
                                        .listshareItemList
                                        .value[index];
                                    return ListshareItemWidget(model,
                                        onTapColumnshare: () {
                                      onTapColumnshare();
                                    });
                                  }))))
                    ]))));
  }

  onTapColumnshare() {
    Get.toNamed(AppRoutes.showScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
