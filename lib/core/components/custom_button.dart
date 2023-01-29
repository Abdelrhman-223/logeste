import 'package:flutter/material.dart';
import 'package:logeste/core/utils/fonts.dart';

class CustomButton extends StatelessWidget {
  double buttonWidth;
  final String buttonText;
  final dynamic buttonFunc;
  final Color buttonColor, buttonTextColor;

  CustomButton({
    Key? key,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonFunc,
    required this.buttonTextColor,
    this.buttonWidth = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunc,
      child: Container(
        height: 60,
        width: buttonWidth,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontSize: AppFonts.myP
          ),
        ),
      ),
    );
  }
}
