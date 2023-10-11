import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_upload_file/core/component/dialog/loading_dialog.dart';
import 'package:flutter_upload_file/core/component/snackbar/info_snackbar.dart';
import 'package:flutter_upload_file/core/theme/app_color.dart';
import 'package:image_picker/image_picker.dart';

class SelectFileButton extends StatelessWidget {
  const SelectFileButton({
    super.key,
    required this.onFileSelected,
  });

  final Function(List<XFile> media) onFileSelected;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      strokeWidth: 3,
      dashPattern: const [6, 6],
      strokeCap: StrokeCap.round,
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () => pickMedia(context),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.folder_open_rounded,
                color: AppColor.white,
                size: 32,
              ),
              const SizedBox(width: 16),
              Text(
                "Select File",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColor.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  void pickMedia(BuildContext context) async {
    showLoadingDialog(context);

    final picker = ImagePicker();
    try {
      final media = await picker.pickMultipleMedia();
      onFileSelected(media);
    } catch (e) {
      showInfoSnackBar(context, "Some media/files cannot be selected !");
    } finally {
      // close loading dialog
      Navigator.pop(context);
    }
  }
}
