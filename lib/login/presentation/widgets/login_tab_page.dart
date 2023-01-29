import 'package:flutter/material.dart';
import 'package:logeste/login/presentation/pages/forget_password_page.dart';
import 'package:logeste/login/presentation/pages/sign_up_page.dart';

import '../../../core/components/custom_button.dart';
import '../../../core/utils/colors.dart';
import '../../../core/utils/icons.dart';
import '../../../core/utils/strings.dart';
import '../../../core/widget/custom_text_field.dart';

class LoginTabPage extends StatelessWidget {
  final bool isCaptain;

  LoginTabPage({Key? key, required this.isCaptain}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
        /*Column(
          children: [
            CustomButton(
              buttonText: AppStrings.loginPageButtonText,
              buttonColor: AppColors.appIconsColor,
              buttonFunc: () {
                if (isCaptain) {
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
                  if (isCaptain) {
                    // Do what you want if he is CAPTAIN.
                    print("I am Captain");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(initTap: 0),
                        ));
                  } else {
                    // Do what you want if he is AGENT.
                    print("I am Agent");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(initTap: 1),
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
        ),*/
      ],
    );
  }
}
