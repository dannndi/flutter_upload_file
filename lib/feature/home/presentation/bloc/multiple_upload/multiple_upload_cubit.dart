import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_upload_file/feature/home/model/upload_task.dart';
import 'package:flutter_upload_file/feature/home/repository/home_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiple_upload_state.dart';
part 'multiple_upload_cubit.freezed.dart';

class MultipleUploadCubit extends Cubit<MultipleUploadState> {
  final HomeRepository repo;

  MultipleUploadCubit({
    required this.repo,
    required UploadTask task,
  }) : super(
          MultipleUploadState(
            task: task,
            progress: task.status == UploadStatus.success ? 1 : 0,
          ),
        );

  CancelToken? cancelToken;

  void cancelUpload() async {
    cancelToken?.cancel("Canceled");
  }

  void startUpload() async {
    if (state.task.files == null) return;

    try {
      cancelToken = CancelToken();
      final result = await repo.uploadMultipleFiles(
        state.task.files!,
        progres: (progress) {
          if (state.task.status != UploadStatus.uploading) {
            emit(state.copyWith(
              task: state.task.copyWith(
                status: UploadStatus.uploading,
              ),
            ));
          }

          emit(state.copyWith(progress: progress));
        },
        cancelToken: cancelToken,
      );

      if (result.code == 201) {
        final newFiles = List.of(state.task.files ?? <UploadFile>[]);
        for (var i = 0; i < (result.data?.length ?? 0); i++) {
          newFiles[i] = newFiles[i].copyWith(url: result.data?[i]);
        }

        emit(state.copyWith(
          errorMessage: null,
          task: state.task.copyWith(
            status: UploadStatus.success,
            files: newFiles,
          ),
        ));
      } else {
        emit(state.copyWith(
          errorMessage: result.message,
          task: state.task.copyWith(
            status: UploadStatus.failed,
          ),
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "Something went wrong, please try again !",
        task: state.task.copyWith(
          status: UploadStatus.failed,
        ),
      ));
    }
  }
}
