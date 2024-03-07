import 'dart:ui';

import 'package:trendspot_newes_app/core/utils/constants.dart';

abstract class AppStyles {
  static TextStyle interStyleRegular12(context) {
    return TextStyle(
      color:  AppColors.kSecondaryTextColor,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle interStyleSemiBold18(context) {
    return TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: 18,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold14(context) {
    return TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleRegular14(context) {
    return TextStyle(
      color: AppColors.kSecondaryTextColor,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

    static TextStyle interStyleSemiBold32(context) {
    return TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: 32,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }
static TextStyle interStyleSemiBold20(context) {
    return TextStyle(
      color: AppColors.kPrimaryColor,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }


  static TextStyle interStyleSemiBold24(context) {
    return TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: 24,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold12(context) {
    return TextStyle(
      color: const Color(0xFF0D0D0D),
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }
   static TextStyle interStyleSemiBold16(context) {
    return TextStyle(
      color: AppColors.kBlueColor,
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle merriweatherStyleRegular16(context) {
    return TextStyle(
      color: const Color(0xFF231F20),
      fontSize: 16,
      fontFamily: 'Merriweather',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle schibstedGroteskStyleRegular18(context) {
    return TextStyle(
      color: AppColors.kSecondaryTextColor,
      fontSize: 18,
      fontFamily: 'Schibsted Grotesk',
      fontWeight: FontWeight.w400,
    );
  }
}
