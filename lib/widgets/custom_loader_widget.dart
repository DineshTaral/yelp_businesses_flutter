import 'package:doodle_blue/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomLoaderWidget extends StatelessWidget {
  const CustomLoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Theme(
        data: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor:AppColor.instance.yellowColor,
        ),

        ),child:const CircularProgressIndicator(),
      ),
    );
  }
}
