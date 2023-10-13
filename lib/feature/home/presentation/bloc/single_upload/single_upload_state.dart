part of 'single_upload_cubit.dart';

@freezed
class SingleUploadState with _$SingleUploadState {
  const factory SingleUploadState({
    required UploadTask task,
    @Default(0) double progress,
    String? errorMessage,
  }) = _SingleUploadState;
}
