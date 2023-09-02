import 'dart:ui';

class ColorConstant{
  static Color scaffoldBackgroundLight = fromHex('#f1f3f4');
  static Color scaffoldBackgroundDark = fromHex('#121212');
  static Color mainBlack = fromHex('#121212');
  static Color white = fromHex('#ffffff');
  static Color whitef1f3f4 = fromHex('#f1f3f4');

    static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}