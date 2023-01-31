import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/icons.dart';

import '../utils/fonts.dart';

PreferredSizeWidget commonAppBar({
  Widget title = const Text("Page Title"),
  Color appbarColor = Colors.white,
  Color appbarTitleColor = Colors.black,
  List<Widget> appbarActions = const [],
  PreferredSizeWidget? appbarBottom,
}) {
  return AppBar(
    centerTitle: true,
    title: title,
    actions: appbarActions,
    backgroundColor: appbarColor,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(color: appbarTitleColor),
    titleTextStyle: TextStyle(
      color: appbarTitleColor,
      fontSize: AppFonts.myH7,
      fontWeight: FontWeight.w600,
      fontFamily: AppFonts.appFontFamily,
    ),
    bottom: appbarBottom,
  );
}
