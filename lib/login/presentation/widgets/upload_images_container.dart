import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/icons.dart';

import '../../../core/utils/colors.dart';

class UploadImagesContainer extends StatelessWidget {
  final bool hasImg;
  final String containerText, containerFinishingText;

  UploadImagesContainer(
      {Key? key,
      required this.containerText,
      this.hasImg = false,
      required this.containerFinishingText})
      : super(key: key);

  double imageSize = 35;

  String iconPath = IconPaths.cloudUpload;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
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
                    if (hasImg)
                      GestureDetector(
                        onTap: () {},
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
                      (hasImg) ? containerFinishingText : containerText,
                    ),
                  ],
                ),
                SvgPicture.asset(
                  (hasImg) ? IconPaths.checkmarkCircle : IconPaths.cloudUpload,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
