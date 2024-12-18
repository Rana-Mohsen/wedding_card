import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:wedding_card/features/auth/domain/usecases/login_user_usecase.dart';
import 'package:wedding_card/features/auth/domain/usecases/register_user_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RegisterUserUsecase registerUserUsecase;
  final LoginUserUsecase loginUserUsecase;

  AuthBloc(this.registerUserUsecase, this.loginUserUsecase)
      : super(AuthInitial()) {
    on<AuthLoginEvent>((event, emit) async {
      emit(AuthLoginLoading());
      var login = await loginUserUsecase.call(
          email: event.email, password: event.email);

      login.fold((failure) {
        emit(AuthLoginFailure());
      }, (user) {
        emit(AuthLoginSuccess(user: user));
      });
    });

    on<AuthRegisterEvent>((event, emit) async{
      emit(AuthRegisterLoading());
      var register = await registerUserUsecase.call(
          email: event.email, password: event.email);

      register.fold((failure) {
        emit(AuthRegisterFailure());
      }, (user) {
        emit(AuthRegisterSuccess(user: user));
      });
    });
  }
}
