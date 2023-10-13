part of 'task_cubit.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    @Default([]) List<UploadTask> tasks,
  }) = _TaskState;
}
