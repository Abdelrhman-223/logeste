import 'package:flutter/material.dart';

import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/fonts.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/navigation_pages.dart';
import 'package:logeste/login/presentation/pages/sign_up_page.dart';
import 'package:logeste/core/widget/common_appbar.dart';
import 'package:logeste/login/presentation/widgets/tab_bar_text.dart';

import '../../../../core/components/custom_button.dart';
import '../../../../core/widget/app_scaffold.dart';
import 'package:logeste/login/presentation/pages/forget_password_page.dart';

import '../../../../core/utils/icons.dart';
import '../../../../core/components/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  int tabIndex = 0;
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
        hasDrawer: false,
        appBar: commonAppBar(
          title: Text(AppStrings.loginAppBarTitle),
          appbarColor: AppColors.appBackgroundColor,
          appbarTitleColor: AppColors.appTextColorBlack,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                onTap: (index) {
                  tabIndex = index;
                },
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  color: AppColors.loginTabsBackgroundColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomTextField(
                            textEditingController: phoneNumberController,
                            hintText: AppStrings.phoneFieldHint,
                            iconPath: IconPaths.call,
                            isPhoneField: true,
                          ),
                          CustomTextField(
                            textEditingController: passwordController,
                            hintText: AppStrings.passwordFieldHint,
                            iconPath: IconPaths.lock,
                            isPasswordField: true,
                          ),
                          InkWell(
                            onTap: () {
                              print("Goto Forget password page");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgetPasswordPage(),
                                  ));
                            },
                            hoverColor: AppColors.appTextOrangeColor,
                            child: Text(
                              AppStrings.loginPageForgetPassText,
                              style: TextStyle(
                                color: AppColors.appTextThirdColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CustomButton(
                            buttonText: AppStrings.loginPageButtonText,
                            buttonColor: AppColors.appIconsColor,
                            buttonFunc: () {
                              if (tabIndex == 0) {
                                // Do what you want if he is CAPTAIN.
                                print("I am Captain");
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavigationPages(isCaptain: true),
                                  ),
                                );
                              } else {
                                // Do what you want if he is AGENT.
                                print("I am Agent");
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavigationPages(isCaptain: false),
                                  ),
                                );
                              }
                            },
                            buttonTextColor: AppColors.appTextColorWhite,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: InkWell(
                              onTap: () {
                                if (tabIndex == 0) {
                                  // Do what you want if he is CAPTAIN.
                                  print("I am Captain");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SignUpPage(initTap: 0),
                                      ));
                                } else {
                                  // Do what you want if he is AGENT.
                                  print("I am Agent");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SignUpPage(initTap: 1),
                                      ));
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AppStrings.loginPageNoAccountText,
                                    style: TextStyle(
                                      color: AppColors.appTextThirdColor,
                                    ),
                                  ),
                                  Text(
                                    AppStrings.loginPageCreateAccountText,
                                    style: TextStyle(
                                      color: AppColors.appTextColorBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
