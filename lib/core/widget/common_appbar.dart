import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/icons.dart';

import '../utils/fonts.dart';

PreferredSizeWidget commonAppBar({
  String title = "Page Title",
  Color appbarColor = Colors.white,
  Color appbarTitleColor = Colors.black,
  List<Widget> appbarActions = const [],
}) {
  return AppBar(
    centerTitle: true,
    iconTheme: IconThemeData(color: appbarTitleColor),
    actions: appbarActions,
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
