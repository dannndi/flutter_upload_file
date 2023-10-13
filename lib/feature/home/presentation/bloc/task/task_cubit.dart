import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_upload_file/feature/home/model/upload_task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'task_state.dart';
part 'task_cubit.freezed.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(const TaskState());

  final uuid = const Uuid();

  void addTaskForSingleUpload(UploadFile file) async {
    final task = UploadTask(
      id: uuid.v1(),
      type: UploadType.single,
      file: file,
    );
    emit(state.copyWith(tasks: List.of(state.tasks)..insert(0, task)));
  }

  void addTaskForMultipleUpload(List<UploadFile> files) async {
    final task = UploadTask(
      id: uuid.v1(),
      type: UploadType.multiple,
      files: files,
    );
    emit(state.copyWith(tasks: List.of(state.tasks)..insert(0, task)));
  }

  void updateTask(UploadTask updatedTask) {
    final taskIndex = state.tasks.indexWhere((item) {
      return item.id == updatedTask.id;
    });
    if (taskIndex == -1) return;

    final newList = List.from(state.tasks);
    newList[taskIndex] = updatedTask;

    emit(state.copyWith(tasks: List.from(newList)));
  }
}
