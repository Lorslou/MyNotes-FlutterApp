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

class AuthEventSendEmailVerification extends AuthEvent {
  const AuthEventSendEmailVerification();
}

// defines the data used to login a user
class AuthEventLogIn extends AuthEvent {
  final String email;
  final String password;
  const AuthEventLogIn(this.email, this.password);
}

class AuthEventRegister extends AuthEvent {
  final String email;
  final String password;
  const AuthEventRegister(this.email, this.password);
}

class AuthEventShouldRegister extends AuthEvent {
  const AuthEventShouldRegister();
}

// logout the current user like authservice.firebase().logOut() in notes_view.dart
class AuthEventLogOut extends AuthEvent {
  const AuthEventLogOut();
}
