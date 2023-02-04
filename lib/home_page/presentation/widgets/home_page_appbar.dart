import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:logeste/core/components/custom_button.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/core/components/custom_bottom_sheet.dart';
import 'package:logeste/home_page/presentation/widgets/home_page_sheet_reason_field.dart';
import 'package:logeste/scan_qr/presentation/widgets/scan_dialog.dart';

import '../../../core/widget/common_appbar.dart';

PreferredSizeWidget homePageAppbar() {
  bool userConnected = true;
  String chosenBox = AppStrings.reasons[2];
  return PreferredSize(
    preferredSize: commonAppBar().preferredSize,
    child: StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return commonAppBar(
          appbarColor: AppColors.appBackgroundColorBlack,
          appbarTitleColor: AppColors.appTextColorWhite,
          title: Text(
            AppStrings.homePageTitle +
                ((userConnected)
                    ? AppStrings.homePageUserConnected
                    : AppStrings.homePageUserNotConnected),
          ),
          appbarActions: [
            IconButton(
              icon: SvgPicture.asset(IconPaths.scan),
              onPressed: () {
                scanDialog(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: FlutterSwitch(
                width: 40,
                height: 25,
                padding: 5,
                toggleSize: 15,
                //Switch the logic to match the design :):)
                value: !userConnected,
                activeColor: AppColors.appIconGreyColor,
                activeToggleColor: AppColors.appIconLightGreyColor,
                inactiveColor: AppColors.appSwitchTrackColor,
                inactiveToggleColor: AppColors.appSwitchThumbColor,
                onToggle: (isChanges) {
                  if (userConnected) {
                    customBottomSheet(
                      context,
                      sheetChild: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: AppStrings.reasons.length,
                            itemBuilder: (context, index) {
                              return homePageSheetReasonField(
                                reason: AppStrings.reasons[index],
                                iconColor: AppColors.appIconLightGreyColor2,
                                textColor: AppColors.appTextThirdColor,
                                theChosenOne: chosenBox,
                              );
                            },
                          ),
                          customButton(
                            fullBorderRadius: true,
                            buttonColor: AppColors.appButtonRedColor,
                            buttonText: AppStrings.homePageStopConnection,
                            buttonTextColor: AppColors.appButtonTextColor,
                            buttonFunc: () {
                              setState(() {
                                //Switch the logic to match the design :):)
                                userConnected = !isChanges;
                                Navigator.pop(context);
                              });
                            },
                          ),
                        ],
                      ),
                    );
                  } else {
                    setState(() {
                      //Switch the logic to match the design :):)
                      userConnected = !isChanges;
                    });
                  }
                },
              ),
            ),
          ],
        );
      },
    ),
  );
}
