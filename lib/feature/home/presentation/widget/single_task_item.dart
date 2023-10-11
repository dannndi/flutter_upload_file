import 'package:flutter/material.dart';
import 'package:flutter_upload_file/feature/home/model/upload_task.dart';

class SingleUploadItem extends StatefulWidget {
  const SingleUploadItem({
    super.key,
    required this.task,
  });
  final UploadTask task;

  @override
  State<SingleUploadItem> createState() => _SingleUploadItemState();
}

class _SingleUploadItemState extends State<SingleUploadItem> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
