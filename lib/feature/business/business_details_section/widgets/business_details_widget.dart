import 'package:doodle_blue/feature/business/business_details_section/data/model/business_details_model.dart';
import 'package:doodle_blue/gen/assets.gen.dart';
import 'package:doodle_blue/theme/app_colors.dart';
import 'package:doodle_blue/theme/app_text_styles.dart';
import 'package:doodle_blue/theme/dimensions.dart';
import 'package:doodle_blue/utils/util.dart';
import 'package:doodle_blue/widgets/rating_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doodle_blue/config/routes/page.dart' as page;
import 'package:doodle_blue/const/extensions.dart';

class BusinessDetailsWidget extends StatelessWidget {
  final BusinessDetailsModel businessDetailsModel;

  const BusinessDetailsWidget({required this.businessDetailsModel, super.key});

  final List<String> days = const [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: ScreenUtil().screenWidth,
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("${businessDetailsModel.image_url}"),
                fit: BoxFit.fill),
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(Dimensions.instance.paddingMedium),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      AppColor.instance.blackColor.withOpacity(0.5),
                      Colors.transparent
                    ],
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "${businessDetailsModel.name}",
                        style: AppTextStyles.instance.poppinsWhite25,
                      ),
                    ),
                    RatingBarWidget(rating: businessDetailsModel.rating ?? 1)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () => page.Page.pop(),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: Dimensions.instance.paddingMedium,
                        left: Dimensions.instance.paddingMedium),
                    height: 40.w,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: AppColor.instance.blackColor.withOpacity(.5),
                        shape: BoxShape.circle),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.only(
                          right: Dimensions.instance.paddingExtraSmall),
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: AppColor.instance.whiteColor,
                        size: 20.w,
                      ),
                    )),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () => Utils.urlLauncher(url:businessDetailsModel.url??''),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: Dimensions.instance.paddingMedium,
                        right: Dimensions.instance.paddingMedium),
                    height: 40.w,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: AppColor.instance.blackColor.withOpacity(.5),
                        shape: BoxShape.circle),
                    child: Center(
                        child: Assets.images.externalLink.image(width: 18.w)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Dimensions.instance.mediumVertSpace,

        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.instance.paddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  Text(
                    "${businessDetailsModel.price}  \u2022  ",
                    style: AppTextStyles.instance.poppinsDarkGrey16,
                  ),
                  ...List.generate(
                      businessDetailsModel.categories?.length ?? 0,
                          (index) => Text(
                        "${businessDetailsModel.categories?[index].title} ${index == (businessDetailsModel.categories?.length ?? 0) - 1 ? "" : ", "} ",
                        style: AppTextStyles.instance.poppinsDarkGrey14,
                      ))
                ],
              ),
              Dimensions.instance.mediumVertSpace,
              InkWell(
                onTap: () => Utils.launchMap(
                    latitude: businessDetailsModel.coordinates?.latitude ?? 0.0,
                    longitude:
                    businessDetailsModel.coordinates?.longitude ?? 0.0),
                child: Row(
                  children: [
                    Icon(Icons.location_pin,size: 20.w,color: AppColor.instance.darkGreyColor,),
                    Expanded(child: Text(
                      "  ${businessDetailsModel.location?.display_address?.join(' ')}",
                      style: AppTextStyles.instance.poppinsDarkGrey16,
                    )),
                  ],
                ),
              ),
              Dimensions.instance.smallVertSpace,
              InkWell(
                onTap: () =>
                    Utils.urlLauncher(url: "tel:${businessDetailsModel.phone}"),
                child: Row(
                  children: [
                    Icon(Icons.call,size: 20.w,color: AppColor.instance.darkGreyColor,),
                    Expanded(child: Text(
                      "  ${businessDetailsModel.display_phone}",
                      style: AppTextStyles.instance.poppinsDarkGrey16,
                    )),
                  ],
                ),
              ),


              Dimensions.instance.mediumVertSpace,
              Text(
                "Timings : ",
                style: AppTextStyles.instance.poppinsBlack20,
              ),
              Dimensions.instance.mediumVertSpace,
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, idx) {
                    return Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              days[businessDetailsModel
                                      .hours?[0].open?[idx].day ??
                                  0],
                              style: AppTextStyles.instance.poppinsDarkGrey14,
                            )),
                        Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40.w,
                                  child: Text(
                                    " ${businessDetailsModel.hours?[0].open?[idx].start?.toTime()}",
                                    style: AppTextStyles
                                        .instance.poppinsDarkGrey14,
                                  ),
                                ),
                                Text(" - ",
                                    style: AppTextStyles
                                        .instance.poppinsDarkGrey14),
                                SizedBox(
                                  width: 40.w,
                                  child: Text(
                                    "${businessDetailsModel.hours?[0].open?[idx].end?.toTime()}",
                                    textAlign: TextAlign.end,
                                    style: AppTextStyles
                                        .instance.poppinsDarkGrey14,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    );
                  },
                  separatorBuilder: (ctx, idx) =>
                      Dimensions.instance.smallVertSpace,
                  itemCount: businessDetailsModel.hours?[0].open?.length ?? 0)
            ],
          ),
        )
        // Text("Categories ",style: AppTextStyles.instance.poppinsBlack20,)
      ],
    );
  }
}
