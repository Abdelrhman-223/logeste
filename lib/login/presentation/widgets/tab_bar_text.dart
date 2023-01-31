import 'package:flutter/material.dart';

import '../../../core/utils/fonts.dart';

Widget tabBarText({required String text}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: AppFonts.myH7,
      fontWeight: FontWeight.w600,
    ),
  );
}
