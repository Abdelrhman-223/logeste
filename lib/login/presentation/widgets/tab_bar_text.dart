import 'package:flutter/material.dart';

import '../../../core/utils/fonts.dart';

class TabBarText extends StatelessWidget {
  final String text;

  const TabBarText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: AppFonts.myH7,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
