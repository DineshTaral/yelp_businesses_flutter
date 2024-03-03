import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final AppTextStyles instance = AppTextStyles._internal();

  factory AppTextStyles() => instance;

  final poppinsWhite25 = GoogleFonts.poppins(
      color: AppColor.instance.whiteColor, fontSize: 25.sp);
  final poppinsBlack20 = GoogleFonts.poppins(
      color: AppColor.instance.blackColor, fontSize: 20.sp);
  final poppinsWhite16 = GoogleFonts.poppins(
      color: AppColor.instance.whiteColor, fontSize: 16.sp);
  final poppinsDarkGrey16 = GoogleFonts.poppins(
      color: AppColor.instance.darkGreyColor, fontSize: 16.sp);
  final poppinsDarkGrey14 = GoogleFonts.poppins(
      color: AppColor.instance.darkGreyColor, fontSize: 14.sp);

  AppTextStyles._internal();
}
