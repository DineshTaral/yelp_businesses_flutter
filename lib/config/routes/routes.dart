import 'package:doodle_blue/feature/business/business_details_section/view/business_details_screen.dart';
import 'package:doodle_blue/feature/business/business_list_section/view/business_list_screen.dart';
import 'package:doodle_blue/feature/login/view/login_screen.dart';
import 'package:doodle_blue/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
//routes names
class RouteNames{
  static const businessDetails="/business_details";
  static const businessList="/business_list";
  static const login="/login";
  static const splash="/splash";
}

Route<dynamic> generateRoutes(RouteSettings settings){

  switch(settings.name){
    case RouteNames.businessDetails:return pageTransition(widget: BusinessDetailsScreen(),settings: settings);
    case RouteNames.businessList:return pageTransition(widget:const BusinessListScreen(),settings: settings);
    case RouteNames.login:return pageTransition(widget:const LoginScreen(),settings: settings);
    case RouteNames.splash:return pageTransition(widget: SplashScreen(),settings: settings);
    default: return pageTransition(widget:const LoginScreen(), settings: settings);

  }
}

//page transition to change the page with some animation
//change PageTransitionType.rightToLeft if want to different animation
PageTransition<dynamic> pageTransition({required Widget widget,required RouteSettings settings}){
  return PageTransition(
      child: widget,
      type: PageTransitionType.rightToLeft,
      settings: settings,
      duration: const Duration(milliseconds: 100),reverseDuration: const Duration(milliseconds: 100)
  );
}