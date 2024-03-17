import 'package:flutter/material.dart';
import 'package:trendspot_newes_app/core/utils/constants.dart';

abstract class AppStyles {
  static TextStyle interStyleRegular12(BuildContext context) {
    return const TextStyle(
      color: AppColors.kSecondaryTextColor,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle interStyleSemiBold18(BuildContext context) {
    return const TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: 18,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold14(BuildContext context) {
    return const TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleRegular14(BuildContext context) {
    return const TextStyle(
      color: AppColors.kSecondaryTextColor,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle interStyleSemiBold32(BuildContext context) {
    return const TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: 32,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold20(BuildContext context) {
    return const TextStyle(
      color: AppColors.kPrimaryColor,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold24(BuildContext context) {
    return const TextStyle(
      color: AppColors.kPrimaryColor2,
      fontSize: 24,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      
    );
  }

  static TextStyle interStyleSemiBold12(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF0D0D0D),
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleSemiBold16(BuildContext context) {
    return const TextStyle(
      color: AppColors.kBlueColor,
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle interStyleRegular16(BuildContext context) {
    return const TextStyle(
      color: Colors.black26,
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle merriweatherStyleRegular16(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF231F20),
      fontSize: 16,
      fontFamily: 'Merriweather',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle schibstedGroteskStyleRegular18(BuildContext context) {
    return const TextStyle(
      color: AppColors.kSecondaryTextColor,
      fontSize: 18,
      fontFamily: 'Schibsted Grotesk',
      fontWeight: FontWeight.w400,
    );
  }
}
