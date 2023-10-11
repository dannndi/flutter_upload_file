import 'package:flutter/material.dart';
import 'package:flutter_upload_file/feature/home/model/upload_task.dart';

class MultipleTaskItem extends StatefulWidget {
  const MultipleTaskItem({
    super.key,
    required this.task,
  });
  final UploadTask task;

  @override
  State<MultipleTaskItem> createState() => _MultipleTaskItemState();
}

class _MultipleTaskItemState extends State<MultipleTaskItem> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
