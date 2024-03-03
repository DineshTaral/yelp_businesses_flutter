import 'package:doodle_blue/theme/app_colors.dart';
import 'package:flutter/material.dart';

//animated button custom widgets
class AnimatedButton extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> width;
  final Animation<double> height;
  final Animation<double> radius;
  final Animation<double> opacity;

  AnimatedButton({super.key, required this.controller})
      : width = Tween<double>(
          begin: 0,
          end: 500,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.5),
          ),
        ),
        height = Tween<double>(
          begin: 0,
          end: 50,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.5, 0.7),
          ),
        ),
        radius = Tween<double>(
          begin: 0,
          end: 20,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.6, 1.0),
          ),
        ),
        opacity = Tween<double>(
          begin: 0,
          end: 1,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.6, 0.8),
          ),
        );

  Widget _buildAnimation(BuildContext context, Widget? widget) {
    return Container(
      width: width.value,
      height: height.value,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.value),
        gradient:  LinearGradient(
          colors: [
            AppColor.instance.greyColor,
            AppColor.instance.primaryBlueColor,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: Center(
        child: FadeTransition(
          opacity: opacity,
          child: const Text(
            "Submit",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _buildAnimation,
    );
  }
}
