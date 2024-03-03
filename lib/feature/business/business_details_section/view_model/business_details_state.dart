part of 'business_details_cubit.dart';

abstract class BusinessDetailsState extends Equatable {
  const BusinessDetailsState();
}

class BusinessDetailsInitial extends BusinessDetailsState {
  @override
  List<Object> get props => [];
}

class BusinessDetailsLoading extends BusinessDetailsState {
  @override
  List<Object> get props => [];
}

class BusinessDetailsFailure extends BusinessDetailsState {
  final String errorMessage;

  const BusinessDetailsFailure({required this.errorMessage});

  @override
  List<Object> get props => [];
}

class BusinessDetailsLoaded extends BusinessDetailsState {
  final BusinessDetailsModel businessDetailsModel;

  const BusinessDetailsLoaded({required this.businessDetailsModel});

  @override
  List<Object> get props => [businessDetailsModel];
}
