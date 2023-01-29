import 'package:flutter/material.dart';
import 'package:logeste/core/widget/custom_text_field.dart';

import '../../../../core/components/custom_button.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/fonts.dart';
import '../../../../core/utils/icons.dart';
import '../../../../core/utils/strings.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool notMatches = false;
  TextEditingController newPassword = TextEditingController();

  TextEditingController repeatNewPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          color: AppColors.loginTabsBackgroundColor,
          height: 580,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CustomTextField(
                    textEditingController: newPassword,
                    hintText: AppStrings.newPasswordFieldHint,
                    iconPath: IconPaths.lockLinear,
                    isPasswordField: true,
                  ),
                  CustomTextField(
                    textEditingController: repeatNewPassword,
                    hintText: AppStrings.repeatNewPasswordFieldHint,
                    iconPath: IconPaths.lockLinear,
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
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: CustomButton(
                  buttonText: AppStrings.forgetPassPageButtonText,
                  buttonColor: AppColors.appIconsColor,
                  buttonFunc: () {
                    setState(() {
                      if (newPassword.text != repeatNewPassword.text) {
                        notMatches = true;
                      } else {
                        notMatches = false;
                      }
                    });
                  },
                  buttonTextColor: AppColors.appTextColorWhite,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
