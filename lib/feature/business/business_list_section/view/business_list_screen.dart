import 'package:doodle_blue/config/routes/page.dart' as page;
import 'package:doodle_blue/config/routes/routes.dart';
import 'package:doodle_blue/feature/business/business_list_section/view_model/business_list_cubit.dart';
import 'package:doodle_blue/feature/business/business_list_section/widgets/business_item_widget.dart';
import 'package:doodle_blue/theme/dimensions.dart';
import 'package:doodle_blue/widgets/custom_loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BusinessListScreen extends StatelessWidget {
  const BusinessListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = BusinessListCubit();
        cubit.fetchBusinesses();
        return cubit;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Yelp Businesses"),
        ),
        body: BlocBuilder<BusinessListCubit, BusinessListState>(
          builder: (context, state) {
            if (state is BusinessListLoading) {
              return const CustomLoaderWidget();
            }
            else if(state is BusinessListFailure){
              return Center(child: Text(state.errorMessage),);
            }
            else if (state is BusinessListLoaded) {
              return ListView.separated(
                  padding: EdgeInsets.all(Dimensions.instance.paddingMedium),
                  itemBuilder: (ctx, index) {
                    return InkWell(
                      onTap: () => page.Page.push(
                          page: RouteNames.businessDetails,
                          arguments: {
                            'id': state.businessListModel.businesses?[index].id
                          }),
                      child: BusinessItemWidget(
                        businesses: state.businessListModel.businesses?[index],
                      ),
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return Dimensions.instance.mediumVertSpace;
                  },
                  itemCount: state.businessListModel.businesses?.length ?? 0);
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
