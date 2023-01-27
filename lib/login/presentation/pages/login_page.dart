import 'package:flutter/material.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/fonts.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/login/presentation/widgets/common_appbar.dart';
import 'package:logeste/login/presentation/widgets/login_tab_page.dart';
import 'package:logeste/login/presentation/widgets/tab_bar_text.dart';

import '../../../core/widget/app_scaffold.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);


  final List<Widget> tapsText = [
    TabBarText(text: AppStrings.loginPageTabBarTitle1),
    TabBarText(text: AppStrings.loginPageTabBarTitle2),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tapsText.length,
      initialIndex: 0,
      child: AppScaffold(
        isDrawer: false,
        appBar: loginAppBar(),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 30),
                child: Text(
                  AppStrings.loginPageTitle,
                  style: TextStyle(
                    color: AppColors.appTextColorBlack,
                    fontSize: AppFonts.myH5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TabBar(
                indicatorColor: AppColors.appIconsColor,
                labelPadding: const EdgeInsets.symmetric(vertical: 5),
                labelColor: AppColors.appTextColorBlack,
                unselectedLabelColor: AppColors.appTextSecondColor,
                tabs: tapsText,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                color: AppColors.loginTabsBackgroundColor,
                height: 545,
                child: TabBarView(
                  children: [
                    LoginTabPage(isCaptain: true),
                    LoginTabPage(isCaptain: false),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
