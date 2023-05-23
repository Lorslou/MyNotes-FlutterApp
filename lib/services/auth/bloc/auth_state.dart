import 'package:flutter/foundation.dart' show immutable;
import 'package:mynotes/services/auth/auth_user.dart';

// in this class we have the outputs

@immutable
abstract class AuthState {
  const AuthState();
}

// login and communication with firebase
class AuthStateLoading extends AuthState {
  const AuthStateLoading();
}

// current user
class AuthStateLoggedIn extends AuthState {
  final AuthUser user;
  const AuthStateLoggedIn(this.user);
}

// to handle login exceptions
class AuthStateLoginFailure extends AuthState {
  final Exception exception;
  const AuthStateLoginFailure(this.exception);
}

// handle email verification when a new user is added
class AuthStateNeedsVerification extends AuthState {
  const AuthStateNeedsVerification();
}

// logout
class AuthStateLoggedOut extends AuthState {
  const AuthStateLoggedOut();
}

// handle logout errors
class AuthStateLogoutFailure extends AuthState {
  final Exception exception;
  const AuthStateLogoutFailure(this.exception);
}
