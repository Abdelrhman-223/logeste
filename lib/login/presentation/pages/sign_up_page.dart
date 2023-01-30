import 'package:flutter/material.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/fonts.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/core/widget/common_appbar.dart';
import 'package:logeste/login/presentation/widgets/tab_bar_text.dart';

import '../../../core/widget/app_scaffold.dart';
import '../widgets/sign_up_tab_page.dart';

// ignore: must_be_immutable
class SignUpPage extends StatelessWidget {
  final int initTap;

  SignUpPage({Key? key, required this.initTap}) : super(key: key);

  final List<Widget> tapsText = [
    TabBarText(text: AppStrings.loginPageTabBarTitle1),
    TabBarText(text: AppStrings.loginPageTabBarTitle2),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tapsText.length,
      initialIndex: initTap,
      child: AppScaffold(
        isDrawer: false,
        appBar: commonAppBar(
          AppStrings.loginAppBarTitle,
          AppColors.appBackgroundColor,
          AppColors.appTextColorBlack,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  AppStrings.signUpPageTitle,
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
                    SignUpTabPage(isCaptain: true),
                    SignUpTabPage(isCaptain: false),
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
