import 'package:doodle_blue/main.dart';
import 'package:flutter/material.dart';

// custom navigator (inspired from Getx)
class Page {
  static push({required String page, Map? arguments}) {
    Navigator.pushNamed(NavigationKey.navigatorKey.currentState!.context, page,arguments: arguments);
  }

  static pushReplacement({required String page, Map? arguments}) {
    Navigator.pushReplacementNamed(
        NavigationKey.navigatorKey.currentState!.context, page,arguments: arguments);
  }

  static pushAndRemoveUntil({required String page, Map? arguments}) {
    Navigator.pushNamedAndRemoveUntil(
        NavigationKey.navigatorKey.currentState!.context,
        page,arguments: arguments,
        (route) => false);
  }

  static pop() {
    Navigator.pop(NavigationKey.navigatorKey.currentState!.context);
  }
}
