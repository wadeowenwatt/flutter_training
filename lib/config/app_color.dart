import 'package:flutter/material.dart';

class AppColor {
  /// C3 Assignment Color
  static const Color primaryColorC3 = Colors.white;
  static const Color primaryColorDarkC3 = Colors.black45;
  static const Color colorLightTextC3 = Colors.white;
  static const Color colorDarkTextC3 = Colors.black;

  /// Movie App Assignment Color
  static const Color mainLinearColorLeft = Color(0xFF2B5876);
  static const Color mainLinearColorRight = Color(0xFF4E4376);

  static const Color searchWidgetLinearColorLeft = Color(0xFF6B66A6);
  static const Color searchWidgetLinearColorRight = Color(0xFF75D1DD);

  static const LinearGradient mainLinearGradient = LinearGradient(
    colors: [
      AppColor.mainLinearColorLeft,
      AppColor.mainLinearColorRight,
    ],
  );

  static const LinearGradient indicatorLinearGradientActive = LinearGradient(
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
    colors: [
      Color(0xFF64ABDB),
      Color(0xFF826EC8),
    ],
  );

  static LinearGradient indicatorLinearGradientNonActive = LinearGradient(
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
    colors: [
      const Color(0xFF64ABDB).withOpacity(0.3),
      const Color(0xFF826EC8).withOpacity(0.3),
    ],
  );

  static LinearGradient buttonLinearGradient = LinearGradient(
    colors: [
      const Color(0xFFA6A1E0).withOpacity(0.3),
      const Color(0xFFA1F3FE).withOpacity(0.3),
    ],
  );

  static LinearGradient searchBoxBgLinearGradient = LinearGradient(
    colors: [
      AppColor.searchWidgetLinearColorLeft.withOpacity(0.3),
      AppColor.searchWidgetLinearColorRight.withOpacity(0.3),
    ],
  );
}
