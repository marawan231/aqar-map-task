// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:aqar_map_task/core/network/generic_error_model.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
class DioExceptionType with _$DioExceptionType {
  //static bool isLogOut=false;

  const factory DioExceptionType.requestCancelled() = RequestCancelled;

  const factory DioExceptionType.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  //bad certifcate
  const factory DioExceptionType.badCertificate() = BadCertificate;

  const factory DioExceptionType.badRequest(String error) = BadRequest;

  const factory DioExceptionType.badResponse(String error) = BadResponse;

  const factory DioExceptionType.notFound(String reason) = NotFound;

  const factory DioExceptionType.methodNotAllowed() = MethodNotAllowed;

  const factory DioExceptionType.notAcceptable() = NotAcceptable;

  const factory DioExceptionType.requestTimeout() = RequestTimeout;

  const factory DioExceptionType.sendTimeout() = SendTimeout;

  const factory DioExceptionType.unprocessableEntity(String reason) =
      UnprocessableEntity;

  const factory DioExceptionType.conflict(String error) = Conflict;

  const factory DioExceptionType.internalServerError() = InternalServerError;

  const factory DioExceptionType.notImplemented() = NotImplemented;

  const factory DioExceptionType.serviceUnavailable() = ServiceUnavailable;

  const factory DioExceptionType.noInternetConnection() = NoInternetConnection;

  const factory DioExceptionType.formatException() = FormatException;

  const factory DioExceptionType.unableToProcess() = UnableToProcess;

  const factory DioExceptionType.defaultError(String error) = DefaultError;

  static DioExceptionType handleResponse(Response? response) {
    GenericErrorModel errorModel = GenericErrorModel.fromJson(response?.data);
    int statusCode = response?.statusCode ?? 0;
    String error = errorModel.message ?? "Something went wrong";

    switch (statusCode) {
      case 400:
        return DioExceptionType.badRequest(error);
      case 401:
        return DioExceptionType.unauthorizedRequest(error);
      case 410:
        return const DioExceptionType.badCertificate();
      case 404:
        // log('404');
        // log(response.toString());
        // log(response?.data['message']);

        // log("errorModel.errors?.first.message ${errorModel.errors?.first.message.toString()}");
        return DioExceptionType.notFound(error);

      case 409:
        // log('409');
        return DioExceptionType.conflict(error);
      case 408:
        return const DioExceptionType.requestTimeout();
      case 422:
        // log('422');
        return DioExceptionType.unprocessableEntity(error);
      case 500:
        // log('500');
        return const DioExceptionType.internalServerError();
      case 503:
        // log('503');
        return const DioExceptionType.serviceUnavailable();
      default:
        var responseCode = statusCode;
        return DioExceptionType.defaultError(
          "$responseCode",
        );
    }
  }

  static DioExceptionType getDioException(error, [stackTrace]) {
    // log("error $error");
    // log("error $error $stackTrace");

    if (error is Exception) {
      try {
        if (error is DioException) {
          // log("error from dio exsasdasd ${error.type}");
          if (error.type == DioErrorType.badCertificate) {
            return const DioExceptionType.badCertificate();
          } else {
            switch (error.type) {
              //bad certifcate
              case DioExceptionType.badCertificate:
                return const DioExceptionType.badCertificate();
              case DioErrorType.cancel:
                return const DioExceptionType.requestCancelled();

              case DioErrorType.connectionTimeout:
                return const DioExceptionType.requestTimeout();

              case DioErrorType.unknown:
                // log("message ${error.message} ${error.response?.data} $stackTrace");
                return const DioExceptionType.noInternetConnection();

              case DioErrorType.receiveTimeout:
                return const DioExceptionType.sendTimeout();

              case DioErrorType.badResponse:
                return DioExceptionType.handleResponse(error.response);

              case DioErrorType.sendTimeout:
                return const DioExceptionType.sendTimeout();

              // case DioErrorType.una:

              default:
                return const DioExceptionType.unableToProcess();
            }
          }
        } else if (error is SocketException) {
          // log("error $error $stackTrace");

          return const DioExceptionType.noInternetConnection();
        } else {
          return const DioExceptionType.unableToProcess();
        }

        // ignore: unused_catch_clause
      } on FormatException catch (e) {
        return const DioExceptionType.formatException();
      } catch (_) {
        // log("error $error $stackTrace");
        return const DioExceptionType.unableToProcess();
      }
    } else {
      // log("error $error $stackTrace");
      if (error.toString().contains("is not a subtype of")) {
        return const DioExceptionType.unableToProcess();
      } else {
        return const DioExceptionType.unableToProcess();
      }
    }
  }

  static String getErrorMessage(DioExceptionType networkExceptions) {
    return networkExceptions.when(
      badCertificate: () => "Bad Certificate",
      notImplemented: () => "Not Implemented",
      requestCancelled: () => "Request Cancelled",
      internalServerError: () => "Internal Server Error",
      notFound: (String reason) => reason,
      serviceUnavailable: () => "Service unavailable",
      methodNotAllowed: () => "Method Allowed",
      badRequest: (String error) => error,
      badResponse: (String error) => error,
      unauthorizedRequest: (String error) => error,
      unprocessableEntity: (String error) => error,
      // unknown: () => "Unexpected error occurred",
      requestTimeout: () => "Connection request timeout",
      sendTimeout: () => "Connection send timeout",
      notAcceptable: () => "Not Acceptable",
      conflict: (String error) => error,
      noInternetConnection: () => "No Internet Connection",
      formatException: () => "Format Exception",
      // unableToProcess: () => "Unable to process the data",

      unableToProcess: () => "Something went wrong",
      defaultError: (String error) => error,
    );
  }
}
