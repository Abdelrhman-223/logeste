import 'package:flutter/material.dart';
import 'package:logeste/login/presentation/pages/finish_captain_signing.dart';
import 'package:logeste/login/presentation/pages/sign_up_page.dart';

import '../../../core/components/custom_button.dart';
import '../../../core/utils/colors.dart';
import '../../../core/utils/icons.dart';
import '../../../core/utils/strings.dart';
import '../../../core/widget/custom_text_field.dart';

class SignUpTabPage extends StatefulWidget {
  final bool isCaptain;

  SignUpTabPage({Key? key, required this.isCaptain}) : super(key: key);

  @override
  State<SignUpTabPage> createState() => _SignUpTabPageState();
}

class _SignUpTabPageState extends State<SignUpTabPage> {
  String buttonText = AppStrings.signUpNextPageButtonText;
  String radioGroup = AppStrings.radioStrings[0];

  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController agentNameController = TextEditingController();

  TextEditingController managerNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            (widget.isCaptain)
                ? CustomTextField(
                    textEditingController: userNameController,
                    hintText: AppStrings.userNameFieldHint,
                    iconPath: IconPaths.profileOutline,
                  )
                : Column(
                    children: [
                      CustomTextField(
                        textEditingController: agentNameController,
                        hintText: AppStrings.agentNameFieldHint,
                        iconPath: IconPaths.buildings,
                      ),
                      CustomTextField(
                        textEditingController: managerNameController,
                        hintText: AppStrings.managerNameFieldHint,
                        iconPath: IconPaths.profileOutline,
                      )
                    ],
                  ),
            CustomTextField(
              textEditingController: phoneNumberController,
              hintText: AppStrings.phoneFieldHint,
              iconPath: IconPaths.callTwoTone,
              isPhoneField: true,
            ),
            CustomTextField(
              textEditingController: emailController,
              hintText: AppStrings.emailFieldHint,
              iconPath: IconPaths.email,
              isEmailField: true,
            ),
            CustomTextField(
              textEditingController: passwordController,
              hintText: AppStrings.passwordFieldHint,
              iconPath: IconPaths.lockLinear,
              isPasswordField: true,
            ),
            (widget.isCaptain)
                ? Row(
                    children: [
                      Radio(
                        activeColor: AppColors.appIconGreyColor,
                        value: AppStrings.radioStrings[0],
                        groupValue: radioGroup,
                        onChanged: (value) {
                          setState(() {
                            radioGroup = value!;
                            buttonText = AppStrings.signUpNextPageButtonText;
                          });
                        },
                      ),
                      Text(
                        AppStrings.radioStrings[0],
                      ),
                      Radio(
                        activeColor: AppColors.appIconGreyColor,
                        value: AppStrings.radioStrings[1],
                        groupValue: radioGroup,
                        onChanged: (value) {
                          setState(() {
                            radioGroup = value!;
                            buttonText = AppStrings.signUpPageButtonText;
                          });
                        },
                      ),
                      Text(
                        AppStrings.radioStrings[1],
                      ),
                    ],
                  )
                : const SizedBox(),
          ],
        ),
        Column(
          children: [
            CustomButton(
              buttonText: buttonText,
              buttonColor: AppColors.appIconsColor,
              buttonFunc: () {
                if (buttonText == AppStrings.signUpNextPageButtonText) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FinishCaptainSigning(),));
                } else {
                  // Do what you want if he is Captain without car.
                  print("I am Captain without car");
                }
              },
              buttonTextColor: AppColors.appTextColorWhite,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.signUpPageHasAccount,
                      style: TextStyle(
                        color: AppColors.appTextThirdColor,
                      ),
                    ),
                    Text(
                      AppStrings.signUpPageLogin,
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
    );
  }
}
