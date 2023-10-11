import 'package:dio/dio.dart';
import 'package:flutter_upload_file/core/network/response/base_response.dart';
import 'package:flutter_upload_file/feature/home/model/upload_task.dart';

abstract class HomeRepository {
  Future<BaseResponse<String?>> uploadFile(
    UploadFile file, {
    void Function(double progres)? progres,
    CancelToken? cancelToken,
  });
  Future<BaseResponse<List<String>>> uploadMultipleFiles(
    List<UploadFile> files, {
    void Function(double progres)? progres,
    CancelToken? cancelToken,
  });
}
