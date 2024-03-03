import 'package:flutter/material.dart';

class AppColor {
  static final AppColor instance = AppColor._internal();

  factory AppColor() => instance;

  final primaryBlueColor = const Color(0xff006ADA);
  final whiteColor = const Color(0xffffffff);
  final blackColor = const Color(0xff000000);
  final greyColor = const Color(0xffD1CECE);
  final darkGreyColor = const Color(0xff6b6868);
  final yellowColor = const Color(0xffFFDF00);

  AppColor._internal();
}
