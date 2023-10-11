import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  @JsonKey(name: 'code')
  int? code;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'data')
  T? data;

  BaseResponse({this.code, this.message, this.data});

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);

  factory BaseResponse.fromError(Object err) {
    if (err is DioException) {
      if (err.type == DioExceptionType.cancel) {
        return BaseResponse(
          code: 999,
          message: err.error?.toString() ?? err.message,
        );
      }

      return BaseResponse(
        code: 999,
        message: err.message,
      );
    }

    return BaseResponse(
      code: 999,
      message: err.toString(),
    );
  }
}
