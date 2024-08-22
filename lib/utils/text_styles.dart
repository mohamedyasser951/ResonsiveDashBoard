import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/sizes_confiq.dart';

abstract class AppTextStyles {
  static styleSemiBold20(BuildContext context) {
    return TextStyle(
        fontFamily: "Montserrat",
        fontSize: responsiveText(20, context),
        fontWeight: FontWeight.w600,
        color: const Color(0xFF064061));
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: responsiveText(24, context),
      fontWeight: FontWeight.w600,
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: responsiveText(16, context),
      fontWeight: FontWeight.w400,
      color: const Color(0xFF064061),
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: responsiveText(16, context),
      fontWeight: FontWeight.w700,
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: responsiveText(16, context),
      fontWeight: FontWeight.w600,
      color: const Color(0xFF064061),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: responsiveText(14, context),
      fontWeight: FontWeight.w400,
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: responsiveText(12, context),
      fontWeight: FontWeight.w400,
      color: const Color(0xFFAAAAAA),
    );
  }
}

double responsiveText(double baseFontSize, BuildContext context) {
  double scaleValue = getScaleValue(context: context);
  double responsiveValue = scaleValue * baseFontSize;
  double lowerLimit = responsiveValue * 0.8;
  double upperLimit = responsiveValue * 1.2;

  return responsiveValue.clamp(lowerLimit, upperLimit);
}

double getScaleValue({required BuildContext context}) {
  double width = MediaQuery.sizeOf(context).width;
  // PlatformDispatcher platformDispatcher = PlatformDispatcher.instance;
  // double physicalWidth = platformDispatcher.views.first.physicalSize.width;
  // double devicePixelRatio = platformDispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  if (width < SizesConfiq.mobileSize) {
    return width / 420;
  } else if (width < SizesConfiq.desktopSize) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
