import 'package:dio/dio.dart';
import 'package:doodle_blue/api_client/api_header.dart';
import 'package:doodle_blue/const/apis.dart';
import 'package:doodle_blue/feature/business/business_list_section/data/models/business_list_model.dart';

class BusinessListRepository {
  Future<BusinessListModel?> fetchBusinesses() async {
    try {
      final response = await Dio()
          .get(businessListApi, options: Options(headers: ApiHeader.header()));
      if (response.statusCode == 200) {
        return BusinessListModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
