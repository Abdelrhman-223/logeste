import 'package:flutter/material.dart';
import 'package:logeste/core/components/custom_text_field.dart';

import '../../../../core/components/custom_button.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/fonts.dart';
import '../../../../core/utils/icons.dart';
import '../../../../core/utils/strings.dart';
import '../forget_password_page.dart';

class EnterPhoneNumber extends StatelessWidget {
  EnterPhoneNumber({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: AppColors.loginTabsBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Text(
              AppStrings.enterPhonePageTitle,
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
              customTextField(
                textEditingController: phoneNumberController,
                hintText: AppStrings.phoneFieldHint,
                iconPath: IconPaths.call,
                isPhoneField: true,
              ),
              /*Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: CustomButton(
                  buttonText: AppStrings.forgetPassPageButtonText,
                  buttonColor: AppColors.appIconsColor,
                  buttonFunc: () {},
                  buttonTextColor: AppColors.appTextColorWhite,
                ),
              ),*/
            ],
          ),
        )
      ],
    );
  }
}
