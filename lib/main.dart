import 'package:doodle_blue/config/routes/routes.dart';
import 'package:doodle_blue/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationKey{
  //navigation key to get global context
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
main() async{
  //loading env file
  await dotenv.load(fileName: ".env");
  runApp(const InitialWidget());
}

class InitialWidget extends StatelessWidget {
  const InitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return  MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: NavigationKey.navigatorKey,
            onGenerateRoute: generateRoutes,
            home: SplashScreen(),
          );
        });
  }
}
