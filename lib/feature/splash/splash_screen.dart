import 'package:doodle_blue/feature/splash/bloc/splash_bloc.dart';
import 'package:doodle_blue/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final _splashBloc = SplashBloc();

  @override
  Widget build(BuildContext context) {
    _splashBloc.verifyLogin();
    return Scaffold(
      body: Center(
        child: Assets.images.doodle.image(
          height: 200.w,
        ),
      ),
    );
  }
}
