import 'package:eventss/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll20:
        return getPadding(
          all: 20,
        );
      case IconButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      case IconButtonPadding.PaddingAll24:
        return getPadding(
          all: 24,
        );
      case IconButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGray300:
        return ColorConstant.gray300;
      case IconButtonVariant.GradientDeeppurpleA200Purple900:
      case IconButtonVariant.OutlineBlack90099:
        return null;
      default:
        return ColorConstant.gray300Cc;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack90099:
        return Border.all(
          color: ColorConstant.black90099,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillGray300cc:
      case IconButtonVariant.FillGray300:
      case IconButtonVariant.GradientDeeppurpleA200Purple900:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder32:
        return BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        );
      case IconButtonShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      case IconButtonShape.CircleBorder36:
        return BorderRadius.circular(
          getHorizontalSize(
            36.00,
          ),
        );
      case IconButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case IconButtonShape.CircleBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.GradientDeeppurpleA200Purple900:
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
      case IconButtonVariant.FillGray300cc:
      case IconButtonVariant.FillGray300:
      case IconButtonVariant.OutlineBlack90099:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder24,
  CircleBorder32,
  CircleBorder28,
  CircleBorder36,
  CircleBorder20,
  CircleBorder14,
}

enum IconButtonPadding {
  PaddingAll12,
  PaddingAll20,
  PaddingAll16,
  PaddingAll24,
  PaddingAll7,
}

enum IconButtonVariant {
  FillGray300cc,
  FillGray300,
  GradientDeeppurpleA200Purple900,
  OutlineBlack90099,
}
