import 'package:flutter/material.dart';
import 'package:eventss/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: ColorConstant.blueGray50Cc,
        border: Border(
          top: BorderSide(
            color: ColorConstant.gray300,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get outlineBlack90099 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black90099,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray300cc => BoxDecoration(
        color: ColorConstant.gray300Cc,
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: ColorConstant.gray300,
      );
  static BoxDecoration get txtOutlineBlack90099 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black90099,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get gradientDeeppurpleA200Purple900 => BoxDecoration(
        gradient: LinearGradient(
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
        ),
      );
  static BoxDecoration get txtGradientDeeppurpleA200Purple900 => BoxDecoration(
        gradient: LinearGradient(
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
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBluegray50 => BoxDecoration(
        color: ColorConstant.blueGray50,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius customBorderTL24 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
  );

  static BorderRadius circleBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40,
    ),
  );

  static BorderRadius roundedBorder32 = BorderRadius.circular(
    getHorizontalSize(
      32,
    ),
  );

  static BorderRadius circleBorder21 = BorderRadius.circular(
    getHorizontalSize(
      21,
    ),
  );

  static BorderRadius txtCircleBorder21 = BorderRadius.circular(
    getHorizontalSize(
      21,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
