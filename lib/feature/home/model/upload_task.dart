import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_task.freezed.dart';

enum UploadType {
  single,
  multiple,
}

enum UploadStatus {
  init,
  uploading,
  success,
  failed,
}

@freezed
class UploadTask with _$UploadTask {
  const factory UploadTask({
    required String id,
    required UploadType type,
    UploadFile? file,
    List<UploadFile>? files,
    @Default(UploadStatus.init) UploadStatus status,
  }) = _UploadTask;
}

@freezed
class UploadFile with _$UploadFile {
  const factory UploadFile({
    required String path,
    required String name,
    required int size,
    String? url,
  }) = _UploadFile;
}
