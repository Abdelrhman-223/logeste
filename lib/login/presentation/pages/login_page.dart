import 'package:flutter/material.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/fonts.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/login/presentation/pages/sign_up_page.dart';
import 'package:logeste/login/presentation/widgets/common_appbar.dart';
import 'package:logeste/login/presentation/widgets/tab_bar_text.dart';

import '../../../core/components/custom_button.dart';
import '../../../core/widget/app_scaffold.dart';
import 'package:logeste/login/presentation/pages/forget_password_page.dart';

import '../../../core/utils/icons.dart';
import '../../../core/widget/custom_text_field.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  //bool isCaptain = true;
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
        isDrawer: false,
        appBar: loginAppBar(AppStrings.loginAppBarTitle),
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
                onTap: (index){
                  tabIndex = index;
                },
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                color: AppColors.loginTabsBackgroundColor,
                height: 545,
                /*child: TabBarView(
                  children: [
                    LoginTabPage(isCaptain: true),
                    LoginTabPage(isCaptain: false),
                  ],
                ),*/
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomTextField(
                          textEditingController: phoneNumberController,
                          hintText: AppStrings.phoneFieldHint,
                          iconPath: IconPaths.callTwoTone,
                          isPhoneField: true,
                        ),
                        CustomTextField(
                          textEditingController: passwordController,
                          hintText: AppStrings.passwordFieldHint,
                          iconPath: IconPaths.lockLinear,
                          isPasswordField: true,
                        ),
                        InkWell(
                          onTap: () {
                            print("Goto Forget password page");
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordPage(),));
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
                            } else {
                              // Do what you want if he is AGENT.
                              print("I am Agent");
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
            ],
          ),
        ),
      ),
    );
  }
}
