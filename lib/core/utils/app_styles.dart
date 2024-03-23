import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/constants.dart';

abstract class AppStyles {
  static TextStyle interStyleRegular12(BuildContext context) {
    return TextStyle(
      color: AppColors.kSecondaryTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle interStyleSemiBold18(BuildContext context) {
    return TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold14(BuildContext context) {
    return TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleRegular14(BuildContext context) {
    return TextStyle(
      color: AppColors.kSecondaryTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle interStyleSemiBold32(BuildContext context) {
    return TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold20(BuildContext context) {
    return TextStyle(
      color: AppColors.kPrimaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold24(BuildContext context) {
    return TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold12(BuildContext context) {
    return TextStyle(
      color: Color(0xFF0D0D0D),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold16(BuildContext context) {
    return TextStyle(
      color: AppColors.kBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleRegular16(BuildContext context) {
    return TextStyle(
      color: Colors.black26,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle merriweatherStyleRegular18(BuildContext context) {
    return TextStyle(
        color: const Color(0xFF231F20),
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: 'Merriweather',
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5);
  }

  static TextStyle schibstedGroteskStyleRegular18(BuildContext context) {
    return TextStyle(
      color: AppColors.kSecondaryTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Schibsted Grotesk',
      fontWeight: FontWeight.w400,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width < 600) {
    return width / 450;
  } else if (width < 1200) {
    return width / 750;
  } else {
    return width / 1920;
  }
}
