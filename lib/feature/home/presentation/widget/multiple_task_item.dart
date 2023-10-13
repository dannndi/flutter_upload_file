import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_upload_file/core/component/image/image_network.dart';
import 'package:flutter_upload_file/core/component/video/video_player.dart';
import 'package:flutter_upload_file/core/theme/app_color.dart';
import 'package:flutter_upload_file/core/utils/utils.dart';
import 'package:flutter_upload_file/feature/home/model/upload_task.dart';
import 'package:flutter_upload_file/feature/home/presentation/bloc/multiple_upload/multiple_upload_cubit.dart';
import 'package:flutter_upload_file/feature/home/presentation/bloc/task/task_cubit.dart';
import 'package:flutter_upload_file/feature/home/repository/home_repository.dart';
import 'package:flutter_upload_file/main_module.dart';
import 'package:get_it/get_it.dart';

class MultipleTaskItem extends StatefulWidget {
  const MultipleTaskItem({
    super.key,
    required this.task,
  });
  final UploadTask task;

  @override
  State<MultipleTaskItem> createState() => _MultipleTaskItemState();
}

class _MultipleTaskItemState extends State<MultipleTaskItem>
    with AutomaticKeepAliveClientMixin {
  bool isExpanded = false;
  bool keepAlive = false;

  @override
  bool get wantKeepAlive => keepAlive;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocProvider(
      create: (context) {
        final bloc = MultipleUploadCubit(
          repo: GetIt.I.get<HomeRepository>(),
          task: widget.task,
        );
        if (widget.task.status == UploadStatus.init) {
          changeKeepAliveState(true);
          bloc.startUpload();
        }

        return bloc;
      },
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<MultipleUploadCubit, MultipleUploadState>(
              listenWhen: (p, c) {
                return p.task.status != c.task.status;
              },
              listener: (context, state) {
                changeKeepAliveState(
                  state.task.status == UploadStatus.uploading,
                );

                context.read<TaskCubit>().updateTask(state.task);
              },
            ),
          ],
          child: BlocBuilder<MultipleUploadCubit, MultipleUploadState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });

                  changeKeepAliveState(isExpanded);
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: AppColor.primaryColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColor.primaryColor,
                        offset: Offset(4, 4),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.folder_rounded,
                            size: 32,
                            color: AppColor.primaryColor,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ID : ${state.task.id}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 8),
                                if (state.task.status == UploadStatus.uploading)
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: SizedBox(
                                            height: 8,
                                            child: LinearProgressIndicator(
                                              value: state.progress,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        "${(state.progress * 100).toStringAsFixed(1)} %",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                if (state.task.status == UploadStatus.failed)
                                  Text(
                                    state.errorMessage ??
                                        "Something went wrong, please try again!",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: Colors.red),
                                  ),
                                if (state.task.status == UploadStatus.success)
                                  Text(
                                    "${state.task.files?.length} files",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          if (state.task.status == UploadStatus.init ||
                              state.task.status == UploadStatus.uploading)
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<MultipleUploadCubit>()
                                    .cancelUpload();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.primaryColor.withOpacity(0.1),
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(4),
                                child: const Icon(Icons.close, size: 16),
                              ),
                            ),
                          if (state.task.status == UploadStatus.failed)
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<MultipleUploadCubit>()
                                    .startUpload();
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: AppColor.lightRed,
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(4),
                                child: const Icon(Icons.refresh, size: 16),
                              ),
                            ),
                          if (state.task.status == UploadStatus.success)
                            Container(
                              decoration: const BoxDecoration(
                                color: AppColor.lightGreen,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(4),
                              child: const Icon(Icons.check, size: 16),
                            ),
                        ],
                      ),
                      if (state.task.status == UploadStatus.success)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            isExpanded
                                ? "Click to hide Uploaded files"
                                : "Click to see Uploaded files",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      if (isExpanded) ...[
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.task.files?.length ?? 0,
                          separatorBuilder: (_, __) {
                            return const SizedBox(height: 8);
                          },
                          itemBuilder: (context, index) {
                            final file = state.task.files?[index];
                            if (Utils.fileType(file?.url ?? "") == "image") {
                              return ImageNetwork(
                                url: "${MainModule.baseUrl}${file?.url}",
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              );
                            }
                            if (Utils.fileType(file?.url ?? "") == "video") {
                              return VideoPlayerWidget.asset(
                                url: file?.path,
                                height: 200,
                                width: double.infinity,
                              );
                            }

                            return const SizedBox();
                          },
                        ),
                      ],
                    ],
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }

  void changeKeepAliveState(bool value) {
    keepAlive = value;
    updateKeepAlive();
  }
}
