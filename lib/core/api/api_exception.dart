class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final ApiErrorType errorType;

  ApiException(this.message, {this.statusCode, required this.errorType});

  @override
  String toString() => 'ApiException: $message (Status Code: $statusCode, Type: $errorType)';
}

class Failure {
  final String errMessage;
  final ApiErrorType? errorType;

  const Failure(this.errMessage, {this.errorType});

  @override
  String toString() => 'Failure: $errMessage (Type: ${errorType?.toString() ?? "Unspecified"})';
}

enum ApiErrorType {
  connectionTimeout,
  networkError,
  serverError,
  clientError,
  authenticationError,
  unexpectedError,
  // Firebase Auth specific errors
  firebaseAuthUserNotFound,
  firebaseAuthWrongPassword,
  firebaseAuthEmailAlreadyInUse,
  firebaseAuthInvalidEmail,
  firebaseAuthWeakPassword,
  firebaseAuthOther
}
