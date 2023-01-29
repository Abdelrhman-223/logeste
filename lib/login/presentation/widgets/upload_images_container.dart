import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/icons.dart';

import '../../../core/utils/colors.dart';

class UploadImagesContainer extends StatefulWidget {
  final bool hasImg;
  final String containerText, containerFinishingText;

  const UploadImagesContainer(
      {Key? key,
      required this.containerText,
      this.hasImg = false,
      required this.containerFinishingText})
      : super(key: key);

  @override
  State<UploadImagesContainer> createState() => _UploadImagesContainerState();
}

class _UploadImagesContainerState extends State<UploadImagesContainer> {
  double imageSize = 35;
  String iconPath = IconPaths.cloudUpload;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.appTextFieldBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (widget.hasImg)
                  GestureDetector(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: imageSize,
                        height: imageSize,
                        decoration: BoxDecoration(
                          color: AppColors.appIconGreyColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                Text(
                  (widget.hasImg)
                      ? widget.containerFinishingText
                      : widget.containerText,
                ),
              ],
            ),
            SvgPicture.asset(
              (widget.hasImg)
                  ? IconPaths.checkmarkCircle
                  : IconPaths.cloudUpload,
            ),
          ],
        ),
      ),
    );
  }
}
