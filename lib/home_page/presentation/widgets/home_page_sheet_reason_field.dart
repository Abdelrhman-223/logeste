import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/fonts.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/strings.dart';

Widget homePageSheetReasonField({
  required String theChosenOne,
  required String reason,
  required Color iconColor,
  required Color textColor,
}) {
  return StatefulBuilder(
      builder: (context, void Function(void Function()) setState) {
    TextEditingController anotherReasonController = TextEditingController();
    EdgeInsets boxPadding =
        const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
    if (theChosenOne == reason) {
      iconColor = AppColors.appTextColorBlack;
      textColor = AppColors.appTextColorBlack;
    }
    return GestureDetector(
      onTap: () {
        setState(() {
          print("object");
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: (reason == AppStrings.reasons.last) ? null : boxPadding,
        decoration: BoxDecoration(
          color: AppColors.loginTabsBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: (reason == AppStrings.reasons.last)
            ? Container(
                child: Column(
                  children: [
                    Padding(
                      padding: boxPadding,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SvgPicture.asset(
                              IconPaths.checkmarkCircle,
                              color: iconColor,
                            ),
                          ),
                          Text(
                            reason,
                            softWrap: true,
                            style: TextStyle(
                              color: textColor,
                              fontSize: AppFonts.myH7,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: AppColors.appIconLightGreyColor3,
                    ),
                    Container(
                      height: 50,
                      padding: boxPadding,
                      child: TextField(
                        controller: anotherReasonController,
                        cursorColor: AppColors.appIconsColor,
                        readOnly: (theChosenOne == AppStrings.reasons.last)
                            ? false
                            : true,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: AppStrings.homePageSheetAnotherReason,
                          hintStyle: TextStyle(
                            color: AppColors.appTextSecondColor,
                            fontSize: AppFonts.myP2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SvgPicture.asset(
                      IconPaths.checkmarkCircle,
                      color: iconColor,
                    ),
                  ),
                  Text(
                    reason,
                    softWrap: true,
                    style: TextStyle(
                      color: textColor,
                      fontSize: AppFonts.myH7,
                    ),
                  ),
                ],
              ),
      ),
    );
  });
}
