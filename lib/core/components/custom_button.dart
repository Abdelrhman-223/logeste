import 'package:flutter/material.dart';
import 'package:logeste/core/utils/fonts.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor, buttonTextColor;
  final dynamic buttonFunc;
  final double buttonWidth;
  final double borderRadius;
  final bool fullBorderRadius;

  CustomButton({
    Key? key,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
    this.buttonFunc,
    this.buttonWidth = double.infinity,
    this.borderRadius = 12,
    this.fullBorderRadius = false,
  }) : super(key: key);

  double buttonHeight = 60;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunc,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(
              (fullBorderRadius) ? buttonHeight / 2 : borderRadius),
        ),
        child: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor, fontSize: AppFonts.myP1),
        ),
      ),
    );
  }
}
