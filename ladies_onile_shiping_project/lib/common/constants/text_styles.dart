import 'package:flutter/material.dart';
import 'app_colors.dart';

class TextStyles {
  static title(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? textColor,
      double? height}) {
    return getBaseStyle(fontSize ?? 32, fontWeight ?? FontWeight.w700,
        textColor ?? AppColors.white, height);
  }

  static subtitle(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 22, fontWeight ?? FontWeight.w700,
        color ?? AppColors.white, height);
  }

  static body1(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 16, fontWeight ?? FontWeight.w700,
        color ?? AppColors.white, height);
  }

  static body2(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 16, fontWeight ?? FontWeight.w400,
        color ?? AppColors.white, height);
  }

  static body3(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 14, fontWeight ?? FontWeight.w700,
        color ?? AppColors.white, height);
  }

  static body4(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      TextDecoration? decoration,
      Color? decorationColor,
      double? height}) {
    return getBaseStyle(fontSize ?? 14, fontWeight ?? FontWeight.w400,
        color ?? AppColors.white, height,
        decoration: decoration, decorationColor: decorationColor);
  }

  static caption1(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 12, fontWeight ?? FontWeight.w700,
        color ?? AppColors.white, height);
  }

  static caption2(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      double? height}) {
    return getBaseStyle(fontSize ?? 12, fontWeight ?? FontWeight.w400,
        color ?? AppColors.white, height);
  }

  static TextStyle getBaseStyle(
      double fontSize, FontWeight fontWeight, Color color, double? height,
      {TextDecoration? decoration, Color? decorationColor}) {
    return TextStyle(
        fontFamily: robotofamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        height: height,
        decoration: decoration,
        decorationColor: decorationColor);
  }
}

const robotofamily = "Roboto";
