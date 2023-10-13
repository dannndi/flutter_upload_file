import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_upload_file/core/theme/app_color.dart';
import 'package:flutter_upload_file/feature/home/model/upload_task.dart';
import 'package:flutter_upload_file/feature/home/presentation/bloc/task/task_cubit.dart';
import 'package:flutter_upload_file/feature/home/presentation/widget/multiple_task_item.dart';
import 'package:flutter_upload_file/feature/home/presentation/widget/select_file_button.dart';
import 'package:flutter_upload_file/feature/home/presentation/widget/single_task_item.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: const HomeLayout(),
    );
  }
}

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  bool isSingleUpload = true;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Tutorial Upload File',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Text("Single Upload"),
            Text("Multiple Upload"),
          ],
          padding: const EdgeInsets.symmetric(horizontal: 48),
          labelPadding: const EdgeInsets.symmetric(vertical: 16),
          labelColor: AppColor.black,
          labelStyle: Theme.of(context).textTheme.bodyLarge,
          unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
          indicator: const UnderlineTabIndicator(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(4),
            ),
            borderSide: BorderSide(
              width: 4,
              color: AppColor.primaryColor,
            ),
            insets: EdgeInsets.symmetric(horizontal: 48),
          ),
          onTap: (index) {
            isSingleUpload = index == 0;
          },
        ),
      ),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SelectFileButton(
                  onFileSelected: (files) {
                    if (isSingleUpload) {
                      for (final file in files) {
                        upload(file);
                      }
                      return;
                    }

                    uploads(files);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 24,
                ),
                child: Text(
                  "Task list",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              if (state.tasks.isEmpty)
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "No Task",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              if (state.tasks.isNotEmpty)
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                    itemCount: state.tasks.length,
                    separatorBuilder: (_, __) {
                      return const SizedBox(height: 16);
                    },
                    itemBuilder: (context, index) {
                      final task = state.tasks[index];

                      if (task.type == UploadType.single) {
                        return SingleUploadItem(
                          key: GlobalObjectKey(task.id),
                          task: task,
                        );
                      }

                      return MultipleTaskItem(
                        key: GlobalObjectKey(task.id),
                        task: task,
                      );
                    },
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  void upload(XFile xfile) async {
    final uploadFile = UploadFile(
      path: xfile.path,
      name: xfile.name,
      size: await xfile.length(),
    );

    if (!mounted) return;
    context.read<TaskCubit>().addTaskForSingleUpload(uploadFile);
  }

  void uploads(List<XFile> xfiles) async {
    final List<UploadFile> files = [];

    for (var xfile in xfiles) {
      final uploadFile = UploadFile(
        path: xfile.path,
        name: xfile.name,
        size: await xfile.length(),
      );
      files.add(uploadFile);
    }

    if (!mounted) return;
    context.read<TaskCubit>().addTaskForMultipleUpload(files);
  }
}
