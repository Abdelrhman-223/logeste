import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/fonts.dart';
import '../../../core/utils/strings.dart';

PreferredSizeWidget loginAppBar(String title) {
    return AppBar(
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.appIconsColor),
      title: Text(title),
      titleTextStyle: TextStyle(
        color: AppColors.appTextColorBlack,
        fontSize: AppFonts.myH7,
        fontWeight: FontWeight.w600,
        fontFamily: AppFonts.appFontFamily,
      ),
      backgroundColor: AppColors.appBackgroundColor,
      shadowColor: Colors.transparent,
    );
  }
