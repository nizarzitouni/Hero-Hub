import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../api_exception.dart';

class HandleExceptions {
  static ApiException handleExceptions(dynamic error) {
    if (error is DioException) {
      return handleDioExceptions(error);
    } else if (error is FirebaseAuthException) {
      return handleFirebaseAuthException(error);
    } else if (error is ApiException) {
      return error;
    } else {
      return ApiException(
        "An unexpected error occurred: ${error.toString()}",
        statusCode: 0,
        errorType: ApiErrorType.unexpectedError,
      );
    }
  }

  static ApiException handleDioExceptions(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiException(
          "Connection timeout. Please check your internet connection and try again.",
          statusCode: 408,
          errorType: ApiErrorType.connectionTimeout,
        );
      case DioExceptionType.connectionError:
        return ApiException(
          "No internet connection. Please check your network settings and try again.",
          statusCode: 0,
          errorType: ApiErrorType.networkError,
        );
      case DioExceptionType.badCertificate:
        return ApiException(
          "Invalid certificate. Please contact support.",
          statusCode: 495,
          errorType: ApiErrorType.clientError,
        );
      case DioExceptionType.cancel:
        return ApiException(
          "Request cancelled.",
          statusCode: 499,
          errorType: ApiErrorType.clientError,
        );
      case DioExceptionType.unknown:
        if (e.error is SocketException) {
          return ApiException(
            "No internet connection. Please check your network settings and try again.",
            statusCode: 0,
            errorType: ApiErrorType.networkError,
          );
        }
        return ApiException(
          "An unknown error occurred. Please try again.",
          statusCode: 0,
          errorType: ApiErrorType.unexpectedError,
        );
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode ?? 0;
        final responseData = e.response?.data as Map<String, dynamic>?;
        final message = responseData?['message'] as String? ?? 'An error occurred';

        switch (statusCode) {
          case 400:
            return ApiException(
              "Bad request. Please check your input.",
              statusCode: 400,
              errorType: ApiErrorType.clientError,
            );
          case 401:
            return ApiException(
              "Unauthorized. Please log in again.",
              statusCode: 401,
              errorType: ApiErrorType.authenticationError,
            );
          case 403:
            return ApiException(
              "Forbidden. You don't have permission to access this resource.",
              statusCode: 403,
              errorType: ApiErrorType.authenticationError,
            );
          case 404:
            return ApiException(
              "Resource not found.",
              statusCode: 404,
              errorType: ApiErrorType.clientError,
            );
          case 500:
            return ApiException(
              "Internal server error. Please try again later.",
              statusCode: 500,
              errorType: ApiErrorType.serverError,
            );
          default:
            if (statusCode >= 500) {
              return ApiException(
                message,
                statusCode: statusCode,
                errorType: ApiErrorType.serverError,
              );
            } else if (statusCode >= 400) {
              return ApiException(
                message,
                statusCode: statusCode,
                errorType: ApiErrorType.clientError,
              );
            } else {
              return ApiException(
                message,
                statusCode: statusCode,
                errorType: ApiErrorType.unexpectedError,
              );
            }
        }
      default:
        return ApiException(
          "An unexpected error occurred. Please try again.",
          statusCode: 0,
          errorType: ApiErrorType.unexpectedError,
        );
    }
  }

  static ApiException handleFirebaseAuthException(FirebaseAuthException e) {
    // Check for specific error codes
    switch (e.code) {
      case 'user-not-found':
        return ApiException(
          "No user found for that email.",
          statusCode: 404,
          errorType: ApiErrorType.firebaseAuthUserNotFound,
        );
      case 'wrong-password':
        return ApiException(
          "Wrong password provided for that user.",
          statusCode: 401,
          errorType: ApiErrorType.firebaseAuthWrongPassword,
        );
      case 'email-already-in-use':
        return ApiException(
          "The account already exists for that email.",
          statusCode: 409,
          errorType: ApiErrorType.firebaseAuthEmailAlreadyInUse,
        );
      case 'invalid-email':
        return ApiException(
          "The email address is badly formatted.",
          statusCode: 400,
          errorType: ApiErrorType.firebaseAuthInvalidEmail,
        );
      case 'weak-password':
        return ApiException(
          "The password provided is too weak.",
          statusCode: 400,
          errorType: ApiErrorType.firebaseAuthWeakPassword,
        );
      default:
        // Handle network-related messages within FirebaseAuthException
        if (e.message != null &&
            (e.message!.contains('network error') ||
                e.message!.contains('timeout') ||
                e.message!.contains('interrupted connection') ||
                e.message!.contains('unreachable host'))) {
          return ApiException(
            "No internet connection. Please check your network settings and try again.",
            statusCode: 0,
            errorType: ApiErrorType.networkError,
          );
        }
        return ApiException(
          "An unexpected Firebase Authentication error occurred: ${e.message}",
          statusCode: 500,
          errorType: ApiErrorType.firebaseAuthOther,
        );
    }
  }
}
