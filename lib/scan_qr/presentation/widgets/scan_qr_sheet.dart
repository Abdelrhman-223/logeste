import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/components/custom_bottom_sheet.dart';
import 'package:logeste/core/utils/fonts.dart';
import 'package:logeste/core/utils/icons.dart';

import '../../../core/components/custom_button.dart';
import '../../../core/utils/colors.dart';

class ScanQrSheet extends StatelessWidget {
  final List itemList;
  final String buttonText, subButtonText, doneText, qrCode;

  const ScanQrSheet(
      {Key? key,
      required this.itemList,
      required this.buttonText,
      required this.subButtonText,
      required this.doneText,
      this.qrCode = "لا يوجد كود"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (BuildContext context, int index) {
            return StatefulBuilder(
              builder: (BuildContext context,
                  void Function(void Function()) setState) {
                bool itemChecked = true;
                return GestureDetector(
                  onTap: () {
                    itemChecked = !itemChecked;
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(itemList[index]),
                      SvgPicture.asset((itemChecked)
                          ? IconPaths.checkbox
                          : IconPaths.emptyCheckbox),
                    ],
                  ),
                );
              },
            );
          },
        ),
        Align(
          alignment: const Alignment(0, 1),
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                AppColors.appBackgroundColor.withOpacity(0.90),
                AppColors.appBackgroundColor.withOpacity(0.80),
                AppColors.appBackgroundColor.withOpacity(0.70),
                AppColors.appBackgroundColor.withOpacity(0.60),
                AppColors.appBackgroundColor.withOpacity(0.50),
                AppColors.appBackgroundColor.withOpacity(0.40),
                AppColors.appBackgroundColor.withOpacity(0.30),
                AppColors.appBackgroundColor.withOpacity(0.20),
                AppColors.appBackgroundColor.withOpacity(0.10),
                AppColors.appBackgroundColor.withOpacity(0),
              ],
            )),
          ),
        ),
        Align(
          alignment: const Alignment(0, 0.9),
          child: CustomButton(
            buttonText: buttonText,
            buttonColor: AppColors.appButtonBlackColor,
            buttonFunc: () {
              customBottomSheet(
                context,
                isScanButton: true,
                sheetChild: Stack(
                  children: [
                    if (subButtonText == "اذهب الى الشحنات")
                      Align(
                        alignment: const Alignment(0, -1),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.appButtonLightGreenColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            (qrCode == "لا يوجد كود")
                                ? "لا يوجد كود"
                                : "تم قراءة الكود $qrCode",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.appTextGreenColor,
                              fontSize: AppFonts.myP2,
                            ),
                          ),
                        ),
                      ),
                    Align(
                      alignment: const Alignment(0, -0.2),
                      child: SizedBox(
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(IconPaths.doneMark),
                            Text(
                              doneText,
                              style: TextStyle(
                                fontSize: AppFonts.myP1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0, 0.9),
                      child: CustomButton(
                        fullBorderRadius: true,
                        buttonText: subButtonText,
                        buttonColor: AppColors.appButtonBlackColor,
                        buttonTextColor: AppColors.appButtonTextColor,
                        buttonFunc: () {},
                      ),
                    ),
                  ],
                ),
              );
            },
            buttonTextColor: AppColors.appButtonTextColor,
            fullBorderRadius: true,
          ),
        ),
      ],
    );
  }
}
