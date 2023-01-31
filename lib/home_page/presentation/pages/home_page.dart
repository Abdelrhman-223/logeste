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
  bool userConnected = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isCaptain: widget.isCaptain,
      appBar: commonAppBar(
          title: AppStrings.homePageTitle +
              ((userConnected)
                  ? AppStrings.homePageUserConnected
                  : AppStrings.homePageUserNotConnected),
          appbarColor: AppColors.appBackgroundColorBlack,
          appbarTitleColor: AppColors.appTextColorWhite,
          appbarActions: [
            IconButton(
              icon: SvgPicture.asset(IconPaths.eyeScanTwoTone),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SvgPicture.asset(
                (userConnected) ? IconPaths.toggleOn : IconPaths.toggleOff,
              ),
            ),
          ]),
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
