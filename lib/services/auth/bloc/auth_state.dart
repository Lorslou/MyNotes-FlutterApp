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

// handle email verification when a new user is added
class AuthStateNeedsVerification extends AuthState {
  const AuthStateNeedsVerification();
}

// logout
class AuthStateLoggedOut extends AuthState {
  final Exception? exception;
  const AuthStateLoggedOut(this.exception);
}

// handle logout errors
class AuthStateLogoutFailure extends AuthState {
  final Exception exception;
  const AuthStateLogoutFailure(this.exception);
}
