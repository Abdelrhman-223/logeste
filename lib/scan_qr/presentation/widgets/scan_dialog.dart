import 'package:flutter/material.dart';
import 'package:logeste/scan_qr/presentation/widgets/scan_button_box.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/icons.dart';
import '../../../core/utils/strings.dart';

Future scanDialog(context) {
  return showDialog(
    context: context,
    useSafeArea: false,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      content: Container(
        height: 275,
        width: 350,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.appBackgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Scan",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            Divider(
              thickness: 2,
              color: AppColors.appIconLightGreyColor2,
            ),
            scanButtonBox(
              context,
              qrPageType: "search",
              buttonIcon: IconPaths.search,
              buttonText: AppStrings.homePageStopScanSearchButton,
            ),
            scanButtonBox(
              context,
              qrPageType: "receive",
              buttonIcon: IconPaths.receiveArrow,
              buttonText: AppStrings.homePageStopScanReceiveButton,
            ),
            scanButtonBox(
              context,
              qrPageType: "pick",
              buttonIcon: IconPaths.pick,
              buttonText: AppStrings.homePageStopScanPickButton,
            ),
          ],
        ),
      ),
    ),
  );
}