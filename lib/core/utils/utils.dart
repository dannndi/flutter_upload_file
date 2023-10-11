// ignore_for_file: constant_identifier_names

import 'package:path/path.dart' as path;

class Utils {
  /// make sure this class are not initialed
  Utils._();

  static String appName = "Playground";

  static String fileExtension(String filePath) {
    return path.extension(filePath);
  }

  static String fileType(String filePath) {
    final extension = path.extension(filePath);
    if (extension == '.jpg' || extension == '.jpeg' || extension == '.png') {
      return "image";
    } else if (extension == '.mp4' || extension == '.mov') {
      return "video";
    } else {
      return "unknown";
    }
  }

  static String formatBytes(int bytes) {
    const KB = 1024;
    const MB = 1024 * KB;
    const GB = 1024 * MB;

    if (bytes >= GB) {
      final gigabytes = bytes / GB;
      return '${gigabytes.toStringAsFixed(2)} GB';
    } else if (bytes >= MB) {
      final megabytes = bytes / MB;
      return '${megabytes.toStringAsFixed(2)} MB';
    } else if (bytes >= KB) {
      final kilobytes = bytes / KB;
      return '${kilobytes.toStringAsFixed(2)} KB';
    } else {
      return '$bytes bytes';
    }
  }
}
