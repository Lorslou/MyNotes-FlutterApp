// LOGIN EXCEPTIONS
class UserNotFoundAuthException implements Exception {}

class WrongPasswordAuthException implements Exception {}

// REGISTER EXCEPTIONS
class WeakPasswordAuthException implements Exception {}

class EmailAlreadyInUseAuthException implements Exception {}

class InvalidEmaileAuthException implements Exception {}

// GENERIC EXCEPTIONS

class GenericAuthException implements Exception {}

class UserNotLggedInAuthException implements Exception {}
