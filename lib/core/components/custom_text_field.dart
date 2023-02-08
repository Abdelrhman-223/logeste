import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/fonts.dart';
import 'package:logeste/core/utils/icons.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String? iconPath;
  final bool isPasswordField, isPhoneField, isEmailField;

  CustomTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    this.iconPath,
    this.isPasswordField = false,
    this.isPhoneField = false,
    this.isEmailField = false,
  }) : super(key: key);

  String passIcon = IconPaths.eyeSlash;

  @override
  Widget build(BuildContext context) {
    bool showPasswordField = isPasswordField;
    return Container(
      height: 50,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.appTextFieldBackgroundColor,
        border: Border.all(
          color: AppColors.appTextFieldBorderColor,
        ),
      ),
      child: StatefulBuilder(
        builder:
            (BuildContext context, void Function(void Function()) setState) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  controller: textEditingController,
                  cursorColor: AppColors.appTextFieldIconColor,
                  obscureText: showPasswordField,
                  keyboardType: (isPhoneField)
                      ? TextInputType.phone
                      : (isEmailField)
                          ? TextInputType.emailAddress
                          : TextInputType.text,
                  style: TextStyle(
                    color: AppColors.appTextFieldTextColor,
                    fontSize: AppFonts.myP1,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: AppColors.appTextFieldHintColor,
                      fontSize: AppFonts.myH7,
                    ),
                    icon: (iconPath != null)
                        ? SvgPicture.asset(
                            iconPath!,
                            color: AppColors.appTextFieldIconColor,
                          )
                        : null,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              if (isPasswordField)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      (passIcon == IconPaths.eye)
                          ? passIcon = IconPaths.eyeSlash
                          : passIcon = IconPaths.eye;
                      showPasswordField = !showPasswordField;
                    });
                  },
                  child: SvgPicture.asset(
                    passIcon,
                    color: AppColors.appTextFieldIconColor,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
