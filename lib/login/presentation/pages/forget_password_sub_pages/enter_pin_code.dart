import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/components/custom_button.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/fonts.dart';
import '../../../../core/utils/strings.dart';

class EnterPinCode extends StatelessWidget {
  EnterPinCode({Key? key}) : super(key: key);

  TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.5, horizontal: 25),
          child: Column(
            children: [
              Text(
                AppStrings.enterPinCodePageTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.appTextColorBlack,
                  fontSize: AppFonts.myH5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                AppStrings.enterPinCodePageSubTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.appTextSecondColor,
                  fontSize: AppFonts.myH7,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          color: AppColors.loginTabsBackgroundColor,
          width: double.infinity,
          constraints: const BoxConstraints.expand(height: 580),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: PinCodeTextField(
                        controller: pinCodeController,
                        appContext: context,
                        length: 4,
                        onChanged: (value) {},
                        showCursor: false,
                        keyboardType: TextInputType.number,
                        autoFocus: true,
                        pinTheme: PinTheme(
                          fieldHeight: 50,
                          fieldWidth: 50,
                          borderWidth: 2,
                          borderRadius: BorderRadius.circular(10),
                          shape: PinCodeFieldShape.box,
                          activeColor: AppColors.appIconGreenColor,
                          selectedColor: AppColors.appIconsColor,
                          inactiveColor: AppColors.appTextSecondColor,
                          disabledColor: AppColors.appTextSecondColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pinCodeController.clear();
                    },
                    child: Text(
                      AppStrings.enterPinCodeResendText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.appTextSecondColor,
                        fontSize: AppFonts.myH7,
                        fontWeight: FontWeight.w600,
                      ),
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
                    if (pinCodeController.text.isNotEmpty) {
                      print("PinCode: ${pinCodeController.text}");
                    } else {
                      print("PinCode: is empty");
                    }
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
