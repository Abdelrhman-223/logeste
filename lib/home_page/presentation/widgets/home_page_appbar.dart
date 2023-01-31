import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/strings.dart';

import '../../../core/widget/common_appbar.dart';

PreferredSizeWidget homePageAppbar() {
  bool userConnected = true;
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
              onPressed: () {},
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
                  setState(() {
                    //Switch the logic to match the design :):)
                    userConnected = !isChanges;
                  });
                },
              ),
            ),
          ],
        );
      },
    ),
  );
}
