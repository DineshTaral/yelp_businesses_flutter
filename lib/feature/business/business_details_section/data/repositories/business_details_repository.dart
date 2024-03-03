import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:doodle_blue/api_client/api_header.dart';
import 'package:doodle_blue/const/apis.dart';
import 'package:doodle_blue/feature/business/business_details_section/data/model/business_details_model.dart';

class BusinessDetailsRepository {
  Future<BusinessDetailsModel?> fetchBusinessesDetails(
      {required String businessId}) async {
    try {
      final response = await Dio().get("$businessDetailsApi/$businessId",
          options: Options(headers: ApiHeader.header()));
      if (response.statusCode == 200) {
        return BusinessDetailsModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
