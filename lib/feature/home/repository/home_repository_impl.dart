import 'package:dio/dio.dart';
import 'package:flutter_upload_file/core/network/handle_request.dart';
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
  }) async {
    FormData formData = FormData();

    formData.files.add(
      MapEntry(
        "file",
        await MultipartFile.fromFile(
          file.path,
          filename: file.name,
        ),
      ),
    );

    return handleRequest(
      request: () => client.post(
        "api/v1/file",
        data: formData,
        onSendProgress: (count, total) {
          progres?.call(count / total);
        },
        cancelToken: cancelToken,
      ),
      parseResponse: (response) {
        return BaseResponse.fromJson(response?.data, (json) {
          return json as String;
        });
      },
      parseError: (err) {
        return BaseResponse.fromError(err);
      },
    );
  }

  @override
  Future<BaseResponse<List<String>>> uploadMultipleFiles(
    List<UploadFile> files, {
    void Function(double progres)? progres,
    CancelToken? cancelToken,
  }) async {
    FormData formData = FormData();

    for (var file in files) {
      formData.files.add(
        MapEntry(
          "files[]",
          await MultipartFile.fromFile(
            file.path,
            filename: file.name,
          ),
        ),
      );
    }

    return handleRequest(
      request: () => client.post(
        "api/v1/file/bulk",
        data: formData,
        onSendProgress: (count, total) {
          progres?.call(count / total);
        },
        cancelToken: cancelToken,
      ),
      parseResponse: (response) {
        return BaseResponse.fromJson(response?.data, (json) {
          final list = json as List;
          return list.map((e) => e.toString()).toList();
        });
      },
      parseError: (err) {
        return BaseResponse.fromError(err);
      },
    );
  }
}
