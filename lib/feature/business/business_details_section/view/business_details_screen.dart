import 'package:doodle_blue/feature/business/business_details_section/view_model/business_details_cubit.dart';
import 'package:doodle_blue/feature/business/business_details_section/widgets/business_details_widget.dart';
import 'package:doodle_blue/widgets/custom_loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BusinessDetailsScreen extends StatelessWidget {
  const BusinessDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final map = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      body: BlocProvider(create: (ctx) {
        final cubit = BusinessDetailsCubit();
        cubit.fetchBusinessDetails(businessId: map['id']);
        return cubit;
      }, child: BlocBuilder<BusinessDetailsCubit, BusinessDetailsState>(
        builder: (context, state) {
          if (state is BusinessDetailsLoading) {
            return const CustomLoaderWidget();
          }else if(state is BusinessDetailsFailure){
            return Center(child: Text(state.errorMessage),);
          }
          else if (state is BusinessDetailsLoaded) {
            return BusinessDetailsWidget(
              businessDetailsModel: state.businessDetailsModel,
            );
          } else {
            return const SizedBox();
          }
        },
      )),
    );
  }
}
