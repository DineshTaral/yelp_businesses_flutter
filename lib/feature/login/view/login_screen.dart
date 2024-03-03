import 'dart:ui';
import 'package:doodle_blue/const/validators.dart';
import 'package:doodle_blue/feature/login/view_model/login_cubit.dart';
import 'package:doodle_blue/feature/login/widget/animated_button.dart';
import 'package:doodle_blue/gen/assets.gen.dart';
import 'package:doodle_blue/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animationBlur;
  Animation<double>? _animationSize;
  late LoginCubit _loginCubit;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    timeDilation = 2;
    _loginCubit = LoginCubit();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _animationBlur = Tween<double>(
      begin: 50,
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.ease,
      ),
    );

    _animationSize = Tween<double>(
      begin: 0,
      end: 500,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.decelerate,
      ),
    );

    _controller?.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.instance.whiteColor,
      body: BlocProvider(
        create: (context) => _loginCubit,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedBuilder(
                animation: _animationBlur!,
                builder: (context, widget) {
                  return Container(
                    height: 200.w,
                    margin: EdgeInsets.symmetric(vertical: 100.w),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.images.doodle.path),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AnimatedBuilder(
                        animation: _animationSize!,
                        builder: (context, widget) {
                          return Container(
                            width: _animationSize?.value,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColor.instance.whiteColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow:  [
                                BoxShadow(
                                  color: AppColor.instance.darkGreyColor,
                                  blurRadius: 80,
                                  spreadRadius: 1,
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  obscureText: false,
                                  decoration:  InputDecoration(
                                    icon: const Icon(Icons.person),
                                    border: InputBorder.none,
                                    hintText: 'e-mail',
                                    hintStyle: TextStyle(
                                      color: AppColor.instance.darkGreyColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                  validator: isEmailValid,
                                ),
                                Container(
                                  decoration:  BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColor.instance.darkGreyColor,
                                        spreadRadius: 0.5,
                                        blurRadius: 0.5,
                                      ),
                                    ],
                                  ),
                                ),
                                TextFormField(
                                  obscureText: true,
                                  decoration:  InputDecoration(
                                    icon: const Icon(Icons.lock),
                                    border: InputBorder.none,
                                    hintText: 'password',
                                    hintStyle: TextStyle(
                                      color: AppColor.instance.darkGreyColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                  validator: isPasswordValid,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      BlocBuilder<LoginCubit, LoginState>(
                        builder: (context, state) {
                          if (state is LoginLoading) {
                            return SizedBox(
                              height: 40.w,
                              width: 40.w,
                              child: const CircularProgressIndicator(),
                            );
                          } else {
                            return InkWell(
                                onTap: () {
                                  //text field validation check
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    _loginCubit.verifyUser();
                                  }
                                },
                                child:
                                    AnimatedButton(controller: _controller!));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
