

import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiHeader{
//common header the needs to send with the api calling
 static Map<String,String> header(){
   //api key loading from .env
    String? apiUrl = dotenv.env['API_KEY'];
    Map<String,String> map={};
    map['Authorization']="Bearer $apiUrl";
    return map;
  }
}