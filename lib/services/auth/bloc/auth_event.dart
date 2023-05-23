import 'package:flutter/foundation.dart' show immutable;

// in this class we have the inputs

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

// represents authservice.firebase.initialize() in main.dart
class AuthEventInitialize extends AuthEvent {
  const AuthEventInitialize();
}

// defines the data used to login a user
class AuthEventLogIn extends AuthEvent {
  final String email;
  final String password;
  const AuthEventLogIn(this.email, this.password);
}

// logout the current user like authservice.firebase().logOut() in notes_view.dart
class AuthEventLogOut extends AuthEvent {
  const AuthEventLogOut();
}
