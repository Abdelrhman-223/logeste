import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/widget/app_scaffold.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(child: SvgPicture.asset(IconPaths.directArrow, color: Colors.black,)),
    );
  }
}
