import 'package:flutter/material.dart';

import '../utils/fonts.dart';

PreferredSizeWidget commonAppBar(String title, Color appbarColor, Color appbarTitleColor) {
    return AppBar(
      centerTitle: true,
      iconTheme: IconThemeData(color: appbarTitleColor),
      title: Text(title),
      titleTextStyle: TextStyle(
        color: appbarTitleColor,
        fontSize: AppFonts.myH7,
        fontWeight: FontWeight.w600,
        fontFamily: AppFonts.appFontFamily,
      ),
      backgroundColor: appbarColor,
      shadowColor: Colors.transparent,
    );
  }
