import 'package:flutter/material.dart';
import 'package:logeste/core/components/custom_text_field.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/fonts.dart';
import '../../../../core/utils/icons.dart';
import '../../../../core/utils/strings.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({Key? key}) : super(key: key);

  bool notMatches = false;

  TextEditingController newPassword = TextEditingController();

  TextEditingController repeatNewPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: AppColors.loginTabsBackgroundColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Text(
                  AppStrings.newPasswordPageTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.appTextColorBlack,
                    fontSize: AppFonts.myH5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              color: AppColors.loginTabsBackgroundColor,
              //height: 580,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CustomTextField(
                        textEditingController: newPassword,
                        hintText: AppStrings.newPasswordFieldHint,
                        iconPath: IconPaths.lock,
                        isPasswordField: true,
                      ),
                      CustomTextField(
                        textEditingController: repeatNewPassword,
                        hintText: AppStrings.repeatNewPasswordFieldHint,
                        iconPath: IconPaths.lock,
                        isPasswordField: true,
                      ),
                      if (notMatches)
                        Text(
                          AppStrings.passwordsNotMatches,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.appTextRedColor,
                            fontSize: AppFonts.myH6,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
