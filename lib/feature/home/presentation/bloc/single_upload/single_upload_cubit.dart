import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_upload_file/feature/home/model/upload_task.dart';
import 'package:flutter_upload_file/feature/home/repository/home_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_upload_state.dart';
part 'single_upload_cubit.freezed.dart';

class SingleUploadCubit extends Cubit<SingleUploadState> {
  final HomeRepository repo;

  SingleUploadCubit({
    required this.repo,
    required UploadTask task,
  }) : super(
          SingleUploadState(
            task: task,
            progress: task.status == UploadStatus.success ? 1 : 0,
          ),
        );

  CancelToken? cancelToken;
  void cancelUpload() async {
    cancelToken?.cancel("Canceled");
  }

  void startUpload() async {
    if (state.task.file == null) return;

    try {
      cancelToken = CancelToken();
      final result = await repo.uploadFile(
        state.task.file!,
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
        emit(state.copyWith(
          errorMessage: null,
          task: state.task.copyWith(
            status: UploadStatus.success,
            file: state.task.file?.copyWith(url: result.data),
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
