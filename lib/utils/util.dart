

import 'package:url_launcher/url_launcher.dart';

class Utils{

  //common url launcher
  static urlLauncher({required String url})async{
    if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
    }
  }

  //common map launcher
  static launchMap({required double latitude,required double longitude}){
    urlLauncher(url: 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
  }
}