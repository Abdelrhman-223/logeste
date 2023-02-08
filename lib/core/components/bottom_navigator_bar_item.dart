import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/fonts.dart';
import 'package:logeste/core/utils/icons.dart';

class BottomNavigatorBarItem extends StatelessWidget {
  final String itemIcon;
  final String? itemLabel;
  final Color? itemColor;

  BottomNavigatorBarItem({
    Key? key,
    required this.itemIcon,
    this.itemLabel,
    this.itemColor,
  }) : super(key: key);

  double containerWidth = 65;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: containerWidth,
      child: (itemIcon == IconPaths.directArrow ||
              itemIcon == IconPaths.directArrowOutline)
          ? Container(
              width: containerWidth,
              height: containerWidth,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: itemColor ?? AppColors.appIconLightGreyColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(containerWidth),
              ),
              child: SvgPicture.asset(
                itemIcon,
                color: itemColor ?? AppColors.appIconLightGreyColor,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  itemIcon,
                  color: itemColor ?? AppColors.appIconLightGreyColor,
                ),
                if (itemLabel != null)
                  Text(
                    itemLabel!,
                    style: TextStyle(
                        color: itemColor ?? AppColors.appIconLightGreyColor,
                        fontSize: AppFonts.myP3),
                  ),
              ],
            ),
    );
  }
}
