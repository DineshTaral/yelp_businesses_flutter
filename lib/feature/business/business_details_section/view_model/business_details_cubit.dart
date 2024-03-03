import 'package:bloc/bloc.dart';
import 'package:doodle_blue/const/common.dart';
import 'package:doodle_blue/feature/business/business_details_section/data/model/business_details_model.dart';
import 'package:doodle_blue/feature/business/business_details_section/data/repositories/business_details_repository.dart';
import 'package:equatable/equatable.dart';

part 'business_details_state.dart';

class BusinessDetailsCubit extends Cubit<BusinessDetailsState> {
  BusinessDetailsCubit() : super(BusinessDetailsInitial());
  final _businessDetailsRepository = BusinessDetailsRepository();

  fetchBusinessDetails({required String businessId}) {
    emit(BusinessDetailsLoading());
    _businessDetailsRepository
        .fetchBusinessesDetails(businessId: businessId)
        .then((value) {
      if (value != null) {
        emit(BusinessDetailsLoaded(businessDetailsModel: value));
      } else {
        emit(const BusinessDetailsFailure(errorMessage: errorMessage));
      }
    }).catchError((onError) {
      emit(const BusinessDetailsFailure(errorMessage: errorMessage));
    });
  }
}
