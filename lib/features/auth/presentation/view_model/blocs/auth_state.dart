part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}


class AuthLoginSuccess extends AuthState {
  final User user;

  AuthLoginSuccess({required this.user});
}

class AuthLoginFailure extends AuthState {}

class AuthLoginLoading extends AuthState {}


class AuthRegisterSuccess extends AuthState {
  final User user;

  AuthRegisterSuccess({required this.user});
}

class AuthRegisterFailure extends AuthState {}

class AuthRegisterLoading extends AuthState {}
