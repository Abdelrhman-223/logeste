import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logeste/core/components/custom_button.dart';
import 'package:logeste/core/components/shipment_card.dart';
import 'package:logeste/scan_qr/presentation/widgets/scan_qr_sheet.dart';

import '../../../core/components/custom_bottom_sheet.dart';
import '../../../core/utils/colors.dart';
import '../pages/qr_code_page.dart';

Widget scanButtonBox(
  context, {
  required String buttonText,
  required String buttonIcon,
  required String qrPageType,
}) {
  List itemsList = [
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
    "شنطة جلد طبيعى ماركة شي إن",
  ];
  return GestureDetector(
    onTap: () {
      if (qrPageType == "search") {
        customBottomSheet(
          context,
          isScanButton: true,
          sheetColor: AppColors.loginTabsBackgroundColor,
          sheetChild: ListView(
            children: [
              shipmentCard(),
            ],
          ),
        );
      } else if (qrPageType == "receive") {
        customBottomSheet(
          context,
          isScanButton: true,
          sheetChild: scanQrSheet(context,
              itemList: itemsList,
              subButtonText: "اذهب الى الشحنات",
              buttonText: "استلام (${itemsList.length} شحنة)",
              doneText: "تم استلام الشحنة بنجاح",
              qrCode: "012300225"),
        );
      } else if (qrPageType == "pick") {
        customBottomSheet(
          context,
          isScanButton: true,
          sheetChild: scanQrSheet(
            context,
            itemList: itemsList,
            subButtonText: "اذهب الى المهام",
            buttonText: "التقط (${itemsList.length} شحنة)",
            doneText: "تم التقاط عدد ${itemsList.length} شحنة بنجاح",
          ),
        );
      }
      /*Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QrCodePage(
            qrPageType: qrPageType,
          ),
        ),
      );*/
    },
    child: Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.appIconLightGreyColor2,
            )),
        child: Row(
          children: [
            SvgPicture.asset(
              buttonIcon,
              color: AppColors.appTextThirdColor,
            ),
            Expanded(
              child: Text(
                buttonText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.appTextThirdColor,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
