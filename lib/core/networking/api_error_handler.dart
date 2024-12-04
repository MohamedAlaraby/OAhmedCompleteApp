import 'package:dio/dio.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'Connection to server failed');
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'Request to server was cancelled');
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection timeout with server');
        case DioExceptionType.unknown:
          return ApiErrorModel(
              message:
                  'Connection to server failed due to internet connection');
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message: 'Receive Timeout in connection with the server');
        case DioExceptionType.badResponse:
          return _handelError(error.response?.data);

        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
              message: 'Send Timeout in connection with the server');
        default:
          return ApiErrorModel(message: "Unknown error occured");
      }
    } else {
      return ApiErrorModel(message: "Unknown error occured");
    }
  }
}

ApiErrorModel _handelError(dynamic data) {
  return ApiErrorModel(
    code: data['code'],
    errors: data['errors'],
    message: data['message'] ?? "Unknown error occured",
  );
}
