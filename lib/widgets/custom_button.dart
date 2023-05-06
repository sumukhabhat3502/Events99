import 'package:eventss/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonChildWidget(),
      ),
    );
  }

  _buildButtonChildWidget() {
    if (checkGradient()) {
      return Container(
        width: width ?? double.maxFinite,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: _buildButtonWithOrWithoutIcon(),
      );
    } else {
      return _buildButtonWithOrWithoutIcon();
    }
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildDecoration() {
    return BoxDecoration(
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _buildTextButtonStyle() {
    if (checkGradient()) {
      return TextButton.styleFrom(
        padding: EdgeInsets.zero,
      );
    } else {
      return TextButton.styleFrom(
        fixedSize: Size(
          width ?? double.maxFinite,
          height ?? getVerticalSize(40),
        ),
        padding: _setPadding(),
        backgroundColor: _setColor(),
        side: _setTextButtonBorder(),
        shape: RoundedRectangleBorder(
          borderRadius: _setBorderRadius(),
        ),
      );
    }
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT19:
        return getPadding(
          top: 19,
          right: 19,
          bottom: 19,
        );
      case ButtonPadding.PaddingT12:
        return getPadding(
          top: 12,
          right: 12,
          bottom: 12,
        );
      case ButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      default:
        return getPadding(
          all: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90099:
        return ColorConstant.blueGray50;
      case ButtonVariant.FillBlack90033:
        return ColorConstant.black90033;
      case ButtonVariant.GradientDeeppurpleA200Purple900:
      case ButtonVariant.OutlineBlack90099_1:
      case ButtonVariant.OutlineOrange500:
      case ButtonVariant.Outline:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90099:
        return BorderSide(
          color: ColorConstant.black90099,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack90099_1:
        return BorderSide(
          color: ColorConstant.black90099,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineOrange500:
        return BorderSide(
          color: ColorConstant.orange500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.GradientDeeppurpleA200Purple900:
      case ButtonVariant.FillBlack90033:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder21:
        return BorderRadius.circular(
          getHorizontalSize(
            21.00,
          ),
        );
      case ButtonShape.CircleBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      case ButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.OpenSauceOneRegular14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sauce One',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.OpenSauceOneMedium14:
        return TextStyle(
          color: ColorConstant.blueGray50,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sauce One',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.OpenSauceOneSemiBold20:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Open Sauce One',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.OpenSauceOneMedium16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Open Sauce One',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.OpenSauceOneRegular10:
        return TextStyle(
          color: ColorConstant.orange500,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Open Sauce One',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.OpenSauceOneRegular16:
        return TextStyle(
          color: ColorConstant.deepPurpleA200,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Open Sauce One',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray50,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Open Sauce One',
          fontWeight: FontWeight.w500,
        );
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90099:
        return Border.all(
          color: ColorConstant.black90099,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack90099_1:
        return Border.all(
          color: ColorConstant.black90099,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineOrange500:
        return Border.all(
          color: ColorConstant.orange500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.GradientDeeppurpleA200Purple900:
      case ButtonVariant.FillBlack90033:
        return null;
      default:
        return null;
    }
  }

  checkGradient() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90099:
      case ButtonVariant.OutlineBlack90099_1:
      case ButtonVariant.FillBlack90033:
      case ButtonVariant.OutlineOrange500:
      case ButtonVariant.Outline:
        return false;
      default:
        return true;
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90099:
      case ButtonVariant.OutlineBlack90099_1:
      case ButtonVariant.FillBlack90033:
      case ButtonVariant.OutlineOrange500:
      case ButtonVariant.Outline:
        return null;
      default:
        return LinearGradient(
          begin: Alignment(
            0,
            0,
          ),
          end: Alignment(
            1,
            1,
          ),
          colors: [
            ColorConstant.deepPurpleA200,
            ColorConstant.purple900,
          ],
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder28,
  CircleBorder21,
  CircleBorder14,
  CircleBorder24,
}

enum ButtonPadding {
  PaddingAll18,
  PaddingT19,
  PaddingT12,
  PaddingAll12,
  PaddingAll7,
}

enum ButtonVariant {
  GradientDeeppurpleA200Purple900,
  OutlineBlack90099,
  OutlineBlack90099_1,
  FillBlack90033,
  OutlineOrange500,
  Outline,
}

enum ButtonFontStyle {
  OpenSauceOneMedium16,
  OpenSauceOneRegular14,
  OpenSauceOneMedium14,
  OpenSauceOneSemiBold20,
  OpenSauceOneMedium16Black900,
  OpenSauceOneRegular10,
  OpenSauceOneRegular16,
}
