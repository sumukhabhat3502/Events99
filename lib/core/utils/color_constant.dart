import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray700 = fromHex('#646467');

  static Color blueGray5033 = fromHex('#33ebebf0');

  static Color blueGray50Cc = fromHex('#ccebebf0');

  static Color blueGray50 = fromHex('#ebebf0');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#424242');

  static Color orange500 = fromHex('#ff9500');

  static Color gray300 = fromHex('#dbdbe0');

  static Color gray300Cc = fromHex('#ccdbdbe0');

  static Color black90001 = fromHex('#000000');

  static Color black90099 = fromHex('#990a0a0c');

  static Color black90033 = fromHex('#330a0a0c');

  static Color black900 = fromHex('#0a0a0c');

  static Color purple900 = fromHex('#4f008c');

  static Color deepPurpleA200 = fromHex('#8c52ff');

  static Color redA700 = fromHex('#c40300');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90002 = fromHex('#000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
