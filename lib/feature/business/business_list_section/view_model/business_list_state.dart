part of 'business_list_cubit.dart';

abstract class BusinessListState extends Equatable {
  const BusinessListState();
}

class BusinessListInitial extends BusinessListState {
  @override
  List<Object> get props => [];
}

class BusinessListLoading extends BusinessListState {
  @override
  List<Object> get props => [];
}

class BusinessListFailure extends BusinessListState {
  final String errorMessage;

  const BusinessListFailure({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

class BusinessListLoaded extends BusinessListState {
  final BusinessListModel businessListModel;

  const BusinessListLoaded({required this.businessListModel});

  @override
  List<Object> get props => [businessListModel];
}
