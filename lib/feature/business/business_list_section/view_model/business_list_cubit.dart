import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:doodle_blue/const/common.dart';
import 'package:doodle_blue/feature/business/business_list_section/data/models/business_list_model.dart';
import 'package:doodle_blue/feature/business/business_list_section/data/repositories/business_list_repository.dart';
import 'package:equatable/equatable.dart';

part 'business_list_state.dart';

class BusinessListCubit extends Cubit<BusinessListState> {
  BusinessListCubit() : super(BusinessListInitial());
  final _businessListRepository=BusinessListRepository();
  fetchBusinesses(){
    emit(BusinessListLoading());
    _businessListRepository.fetchBusinesses().then((value) {
      if(value!=null){
        emit(BusinessListLoaded(businessListModel: value));
      }else {
        emit(const BusinessListFailure(errorMessage: errorMessage));
      }
    }).catchError((onError){
      emit(const BusinessListFailure(errorMessage: errorMessage));
    });
  }
}
