import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/fonts.dart';
import '../../../core/utils/icons.dart';

Widget drawerTiles(String tileIconPath, String tileTitle, dynamic tileFunction) {
  return ListTile(
    onTap: tileFunction,
    leading: SvgPicture.asset(tileIconPath),
    horizontalTitleGap: 0,
    title: Text(
      tileTitle,
      style: TextStyle(
        color: AppColors.appTextFourthColor,
        fontSize: AppFonts.myH7,
        fontWeight: FontWeight.w600,
        fontFamily: AppFonts.appFontFamily,
      ),
    ),
  );
}