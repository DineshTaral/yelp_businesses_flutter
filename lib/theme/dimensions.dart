import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dimensions{
  static final Dimensions instance=Dimensions._internal();
  factory Dimensions()=>instance;

  final double paddingExtraSmall = 3.0.w;
  final double paddingSmall = 6.0.w;
  final double paddingMedium = 12.0.w;
  final double paddingLarge = 16.0.w;
  final double paddingExtraLarge = 20.0.w;

  final smallVertSpace = SizedBox(
    height: 6.w,
  );
  final mediumVertSpace = SizedBox(
    height: 12.w,
  );

  final smallHorizontalSpace = SizedBox(
    width: 6.w,
  );
  final mediumHorizontalSpace = SizedBox(
    width: 12.w,
  );

  Dimensions._internal();
}
