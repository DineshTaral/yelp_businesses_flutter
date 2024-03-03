import 'package:doodle_blue/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingBarWidget extends StatelessWidget {
  final double rating;
  const RatingBarWidget({required this.rating,super.key});

  @override
  Widget build(BuildContext context) {
    return    RatingBarIndicator(
      rating: rating,

      itemBuilder: (context, index) => Icon(
        Icons.star,
        color: AppColor.instance.yellowColor,
      ),
      itemCount: 5,
      itemSize: 15.0.w,
      direction: Axis.horizontal,
    );
  }
}
