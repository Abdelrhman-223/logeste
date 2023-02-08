import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/fonts.dart';

class drawerTiles extends StatelessWidget {
  final String tileIconPath, tileTitle;
  final dynamic tileFunction;

  const drawerTiles(
      {Key? key,
      required this.tileIconPath,
      required this.tileTitle,
      this.tileFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
