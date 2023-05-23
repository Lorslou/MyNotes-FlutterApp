import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:mynotes/services/auth/auth_user.dart';

// in this class we have the outputs

@immutable
abstract class AuthState {
  const AuthState();
}

class AuthStateUninitialized extends AuthState {
  const AuthStateUninitialized();
}

class AuthStateRegistering extends AuthState {
  final Exception? exception;
  const AuthStateRegistering(this.exception);
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
class AuthStateLoggedOut extends AuthState with EquatableMixin {
  final Exception? exception;
  final bool isLoading;
  const AuthStateLoggedOut({
    required this.exception,
    required this.isLoading,
  });

  @override
  List<Object?> get props => [exception, isLoading];
}
