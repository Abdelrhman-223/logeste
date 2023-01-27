import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/fonts.dart';
import 'package:logeste/core/utils/icons.dart';

class CustomTextField extends StatefulWidget {
  bool isPasswordField;
  bool isPhoneField;
  bool isEmailField;
  final String hintText, iconPath;
  final TextEditingController textEditingController;

  CustomTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.iconPath,
    this.isPasswordField = false,
    this.isPhoneField = false,
    this.isEmailField = false,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPasswordField = false;
  String passIcon = IconPaths.eyeSlash;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showPasswordField = widget.isPasswordField;
  }

  @override
  Widget build(BuildContext context) {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 285,
            child: TextField(
              controller: widget.textEditingController,
              cursorColor: AppColors.appTextFieldIconColor,
              obscureText: showPasswordField,
              keyboardType: (widget.isPhoneField)
                  ? TextInputType.phone
                  : (widget.isEmailField)
                      ? TextInputType.emailAddress
                      : TextInputType.text,
              style: TextStyle(
                color: AppColors.appTextFieldTextColor,
                fontSize: AppFonts.myP,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: AppColors.appTextFieldHintColor,
                  fontSize: AppFonts.myH7,
                ),
                icon: SvgPicture.asset(
                  widget.iconPath,
                  color: AppColors.appTextFieldIconColor,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          if (widget.isPasswordField)
            GestureDetector(
              onTap: () {
                print("object");
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
      ),
    );
  }
}
