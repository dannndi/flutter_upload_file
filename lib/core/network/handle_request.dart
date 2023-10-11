import 'package:dio/dio.dart';

/// [request] function to an API, eg dio.get()
///
/// [parseResponse] how response will be mapped to a [T] class
///
/// [parseError] how errors will be mapped to a [T] class
Future<T> handleRequest<T>({
  required Future<Response<dynamic>> Function() request,
  required T Function(Response<dynamic>?) parseResponse,
  required T Function(Object err) parseError,
}) async {
  try {
    final result = await request();
    return parseResponse(result);
  } on DioException catch (e) {
    if (e.type == DioExceptionType.badResponse) {
      return parseResponse(e.response);
    }

    return parseError(e);
  } catch (e) {
    return parseError(e);
  }
}
