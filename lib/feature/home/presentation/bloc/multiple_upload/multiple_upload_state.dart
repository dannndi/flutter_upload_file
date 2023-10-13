part of 'multiple_upload_cubit.dart';

@freezed
class MultipleUploadState with _$MultipleUploadState {
  const factory MultipleUploadState({
    required UploadTask task,
    @Default(0) double progress,
    String? errorMessage,
  }) = _MultipleUploadState;
}
