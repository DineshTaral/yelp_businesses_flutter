import 'package:doodle_blue/config/routes/page.dart';
import 'package:doodle_blue/config/routes/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  //todo: make api call here to verify user from server side
  verifyUser() async {
    emit(LoginLoading());
    await Future.delayed(const Duration(seconds: 2), () {});
    Page.pushReplacement(page: RouteNames.businessList);
  }
}
