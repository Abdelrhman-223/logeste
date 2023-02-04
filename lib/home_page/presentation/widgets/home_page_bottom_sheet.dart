import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/strings.dart';

Widget homePageBottomSheet() {
  return StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) {
    String radioGroup = AppStrings.reasons[0];
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          child: Row(
            children: [
              Radio(
                activeColor: AppColors.appIconGreyColor,
                value: AppStrings.reasons[0],
                groupValue: radioGroup,
                onChanged: (value) {
                  setState(() {
                    radioGroup = value!;
                  });
                },
              ),
              Text(
                AppStrings.reasons[0],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [

              Radio(
                activeColor: AppColors.appIconGreyColor,
                value: AppStrings.reasons[1],
                groupValue: radioGroup,
                onChanged: (value) {
                  setState(() {
                    radioGroup = value!;
                  });
                },
              ),
              Text(
                AppStrings.reasons[1],
              ),
            ],
          ),
        ),
      ],
    );
  },);
}