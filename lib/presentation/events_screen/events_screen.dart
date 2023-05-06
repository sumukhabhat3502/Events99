import '../events_screen/widgets/slidablelistbac_item_widget.dart';
import 'controller/events_controller.dart';
import 'models/slidablelistbac_item_model.dart';
import 'package:eventss/core/app_export.dart';
import 'package:eventss/presentation/category_page/category_page.dart';
import 'package:eventss/presentation/home_page/home_page.dart';
import 'package:eventss/presentation/profile_one_page/profile_one_page.dart';
import 'package:eventss/widgets/app_bar/appbar_iconbutton.dart';
import 'package:eventss/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:eventss/widgets/app_bar/appbar_title.dart';
import 'package:eventss/widgets/app_bar/custom_app_bar.dart';
import 'package:eventss/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EventsScreen extends GetWidget<EventsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            88,
          ),
          title: Padding(
            padding: getPadding(
              left: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarTitle(
                  text: "lbl_all_events".tr,
                  margin: getMargin(
                    right: 51,
                  ),
                ),
                AppbarSubtitle2(
                  text: "msg_bengaluru_26_events".tr,
                  margin: getMargin(
                    top: 3,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgSearchBlack900,
              margin: getMargin(
                left: 16,
                top: 16,
                right: 16,
                bottom: 24,
              ),
            ),
          ],
          styleType: Style.bgFillBluegray50cc,
        ),
        body: Padding(
          padding: getPadding(
            left: 16,
            top: 16,
            right: 16,
          ),
          child: Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: getVerticalSize(
                    16,
                  ),
                );
              },
              itemCount: controller
                  .eventsModelObj.value.slidablelistbacItemList.value.length,
              itemBuilder: (context, index) {
                SlidablelistbacItemModel model = controller
                    .eventsModelObj.value.slidablelistbacItemList.value[index];
                return SlidablelistbacItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
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
}
