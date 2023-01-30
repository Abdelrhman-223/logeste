import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/core/widget/app_scaffold.dart';
import 'package:logeste/core/widget/common_appbar.dart';

class HomePage extends StatefulWidget {
  final bool isCaptain;
  const HomePage({super.key, required this.isCaptain});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isCaptain: widget.isCaptain,
      appBar: commonAppBar("الصفحة الرئيسية", AppColors.appBackgroundColorBlack, AppColors.appTextColorWhite),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.appTitle,
            ),
            IconButton(
              onPressed: () {
                print(AppStrings.appLang);
              },
              icon: SvgPicture.asset(
                IconPaths.directArrow,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
