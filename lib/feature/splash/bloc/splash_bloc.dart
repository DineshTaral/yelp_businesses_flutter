
import 'package:doodle_blue/config/routes/page.dart';
import 'package:doodle_blue/config/routes/routes.dart';

class SplashBloc{

verifyLogin(){
  //todo: make all work here that needs to perform on splash (api call, version check etc.)
 Future.delayed(const Duration(milliseconds: 100),(){
   Page.pushAndRemoveUntil(page: RouteNames.login);
 });
}
}