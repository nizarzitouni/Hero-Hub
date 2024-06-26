import 'dart:io';

import 'package:dio/dio.dart';

import 'error_model.dart';

// class ServerException implements Exception {
//   ServerException({required this.errModel});
//   final ErrorModel errModel;
// }

ErrorModel handleDioExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      return ErrorModel(status: 9999, errorMessage: "Connection timeout. Please check your internet connection and try again.");
    case DioExceptionType.connectionError:
      return ErrorModel(status: 9999, errorMessage: "No internet connection. Please check your network settings and try again.");
    case DioExceptionType.badCertificate:
      return ErrorModel(status: 9999, errorMessage: "Invalid certificate. Please contact support.");
    case DioExceptionType.cancel:
      return ErrorModel(status: 9999, errorMessage: "Request cancelled.");
    case DioExceptionType.unknown:
      if (e.error is SocketException) {
        return ErrorModel(status: 9999, errorMessage: "No internet connection. Please check your network settings and try again.");
      }
      return ErrorModel(status: 9999, errorMessage: "An unknown error occurred. Please try again.");
    case DioExceptionType.badResponse:
      // Only try to access response data if it exists
      if (e.response != null && e.response!.data != null) {
        final responseData = e.response!.data as Map<String, dynamic>?;
        if (responseData != null && responseData.containsKey('message')) {
          return ErrorModel(status: e.response!.statusCode ?? 9999, errorMessage: responseData['message']);
        }
      }
      // If we can't get a specific error message, return a generic one based on status code
      switch (e.response?.statusCode) {
        case 400:
          return ErrorModel(status: 400, errorMessage: "Bad request. Please check your input.");
        case 401:
          return ErrorModel(status: 401, errorMessage: "Unauthorized. Please log in again.");
        case 403:
          return ErrorModel(status: 403, errorMessage: "Forbidden. You don't have permission to access this resource.");
        case 404:
          return ErrorModel(status: 404, errorMessage: "Resource not found.");
        case 500:
          return ErrorModel(status: 500, errorMessage: "Internal server error. Please try again later.");
        default:
          return ErrorModel(status: e.response?.statusCode ?? 9999, errorMessage: "An error occurred. Please try again.");
      }
    default:
      return ErrorModel(status: 9999, errorMessage: "An unexpected error occurred. Please try again.");
  }
}
