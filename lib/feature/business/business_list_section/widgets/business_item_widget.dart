import 'package:doodle_blue/feature/business/business_list_section/data/models/business_list_model.dart';
import 'package:doodle_blue/theme/app_colors.dart';
import 'package:doodle_blue/theme/app_text_styles.dart';
import 'package:doodle_blue/theme/dimensions.dart';
import 'package:doodle_blue/widgets/rating_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessItemWidget extends StatelessWidget {
  final Businesses? businesses;

  const BusinessItemWidget({required this.businesses, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.instance.whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: AppColor.instance.greyColor,
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: ScreenUtil().screenWidth * .7,
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    image: DecorationImage(
                      image: NetworkImage("${businesses?.image_url}"),
                      fit: BoxFit.fill,
                    )),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.all(Dimensions.instance.paddingSmall),
                  decoration: BoxDecoration(
                      color: AppColor.instance.yellowColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )),
                  child: Text(
                      businesses?.is_closed ?? false ? "Closed" : "Open Now",
                      style: AppTextStyles.instance.poppinsDarkGrey14),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.instance.paddingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${businesses?.name}",
                      style: AppTextStyles.instance.poppinsBlack20,
                    ),
                    RatingBarWidget(rating: businesses?.rating ?? 1)
                  ],
                ),
                Dimensions.instance.smallVertSpace,
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "${businesses?.location?.display_address?.join(" ")}",
                        style: AppTextStyles.instance.poppinsDarkGrey14,
                      ),
                    ),
                    Text(
                      "${businesses?.price}",
                      style: AppTextStyles.instance.poppinsDarkGrey14,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
