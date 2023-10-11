import 'package:dio/dio.dart';
import 'package:flutter_upload_file/core/network/response/base_response.dart';
import 'package:flutter_upload_file/feature/home/model/upload_task.dart';
import 'package:flutter_upload_file/feature/home/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final Dio client;

  HomeRepositoryImpl({required this.client});

  @override
  Future<BaseResponse<String?>> uploadFile(
    UploadFile file, {
    void Function(double progres)? progres,
    CancelToken? cancelToken,
  }) {
    // TODO: implement uploadFile
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse<List<String>>> uploadMultipleFiles(
    List<UploadFile> files, {
    void Function(double progres)? progres,
    CancelToken? cancelToken,
  }) {
    // TODO: implement uploadMultipleFiles
    throw UnimplementedError();
  }
}
