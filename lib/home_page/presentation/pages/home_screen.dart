import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/icons.dart';
import '../../../core/widget/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(child: SvgPicture.asset(IconPaths.directArrow, color: Colors.black,)),
    );
  }
}
