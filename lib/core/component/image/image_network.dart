import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_upload_file/core/theme/app_color.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({
    this.url,
    this.height,
    this.width,
    this.fit,
    this.borderRadius,
    this.color,
    this.ternaryColor,
    this.errorIcon,
    this.cacheKey,
    Key? key,
  }) : super(key: key);

  final String? url;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final BorderRadius? borderRadius;
  final Color? color;
  final Color? ternaryColor;
  final Widget? errorIcon;
  final String? cacheKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color ?? AppColor.primaryColor.withOpacity(0.2),
        borderRadius: borderRadius ?? BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(15),
        child: CachedNetworkImage(
          cacheKey: cacheKey,
          imageUrl: url ?? "",
          height: height,
          width: width,
          fit: fit,
          progressIndicatorBuilder: (context, url, progres) {
            return Center(
              child: CircularProgressIndicator(
                color: ternaryColor ?? Colors.grey,
              ),
            );
          },
          errorWidget: (context, obj, trace) {
            if (errorIcon != null) {
              return errorIcon!;
            }
            return const Icon(Icons.broken_image);
          },
        ),
      ),
    );
  }
}
