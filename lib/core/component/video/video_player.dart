import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_upload_file/core/theme/app_color.dart';
import 'package:video_player/video_player.dart';

enum VideoPlayerType {
  network,
  asset,
}

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget._({
    required this.url,
    required this.height,
    required this.width,
    required this.type,
  });

  /// cannot be use due to issue [85435]
  /// it cannot play video from localhost
  factory VideoPlayerWidget.network({
    required String? url,
    required double? height,
    required double? width,
  }) {
    return VideoPlayerWidget._(
      url: url,
      height: height,
      width: width,
      type: VideoPlayerType.network,
    );
  }

  factory VideoPlayerWidget.asset({
    required String? url,
    required double? height,
    required double? width,
  }) {
    return VideoPlayerWidget._(
      url: url,
      height: height,
      width: width,
      type: VideoPlayerType.asset,
    );
  }

  final String? url;
  final double? height;
  final double? width;
  final VideoPlayerType type;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late final VideoPlayerController controller;

  bool isInitializing = true;
  bool isError = false;

  ValueNotifier<bool> isBufferingNotifier = ValueNotifier(false);
  ValueNotifier<bool> isPlayingNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    if (widget.type == VideoPlayerType.network) {
      controller = VideoPlayerController.networkUrl(Uri.parse(
        widget.url ?? "",
      ));
    } else {
      controller = VideoPlayerController.file(File(widget.url ?? ""));
    }

    controller.initialize().then((_) {
      controller.addListener(_listenTimeLine);
      setState(() {
        isInitializing = false;
      });

      /// due to issue [41156]
      controller.seekTo(const Duration(milliseconds: 1));
    }).catchError((error) {
      setState(() {
        isInitializing = false;
      });
      debugPrint(error);
    });
  }

  @override
  void dispose() {
    controller.removeListener(_listenTimeLine);
    controller.dispose();
    isPlayingNotifier.dispose();
    super.dispose();
  }

  void _listenTimeLine() {
    isBufferingNotifier.value = controller.value.isBuffering;

    if (controller.value.position.inMilliseconds ==
        controller.value.duration.inMilliseconds) {
      isPlayingNotifier.value = false;
      controller.seekTo(const Duration(milliseconds: 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: AppColor.primaryColor.withOpacity(0.2),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: VideoPlayer(controller),
          ),
          if (isInitializing) ...[
            const SizedBox(
              height: 32,
              width: 32,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ] else ...[
            ValueListenableBuilder<bool>(
              valueListenable: isBufferingNotifier,
              builder: (context, isBuffering, _) {
                if (isBuffering) {
                  return const CircularProgressIndicator();
                } else {
                  return const SizedBox();
                }
              },
            ),
            GestureDetector(
              onTap: () {
                if (isPlayingNotifier.value) {
                  controller.pause();
                } else {
                  controller.play();
                }

                isPlayingNotifier.value = !isPlayingNotifier.value;
              },
              child: Container(
                color: Colors.transparent,
                width: double.infinity,
              ),
            ),
            ValueListenableBuilder<bool>(
              valueListenable: isPlayingNotifier,
              builder: (c, isPlaying, _) {
                return !isPlaying
                    ? GestureDetector(
                        onTap: () {
                          if (isPlaying) {
                            controller.pause();
                          } else {
                            controller.play();
                          }

                          isPlayingNotifier.value = !isPlayingNotifier.value;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.play_arrow_rounded,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : const SizedBox();
              },
            ),
          ]
        ],
      ),
    );
  }
}
