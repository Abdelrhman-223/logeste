import 'package:flutter/material.dart';
import 'package:logeste/core/components/custom_bottom_sheet.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/widget/app_scaffold.dart';
import 'package:logeste/core/widget/common_appbar.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../../core/components/shipment_card.dart';
import '../widgets/qr_overlay.dart';
import 'package:logeste/scan_qr/presentation/widgets/scan_qr_sheet.dart';
import '../../../core/utils/strings.dart';

class QrCodeScreen extends StatelessWidget {
  final List itemsList;
  final String qrPageType;

  QrCodeScreen({Key? key, required this.itemsList, required this.qrPageType}) : super(key: key);

  String? scannedData;
  MobileScannerController scannerController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      hasDrawer: false,
      appBar: commonAppBar(
        title: const Text("فحص QR & Bar Code"),
        appbarColor: AppColors.appBackgroundColorBlack,
        appbarTitleColor: AppColors.appTextColorWhite,
      ),
      body: Stack(
        children: [
          MobileScanner(
            allowDuplicates: false,
            controller: scannerController,
            onDetect: (barcode, mobileScannerArguments) {
              print("//////////////////////////////////////////");
              print("QrCode value ${barcode.rawValue}");
              scannedData = barcode.rawValue!;
              customBottomSheet(
                context,
                sheetChild: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                ),
              );
              if (scannedData != null) {
                print(qrPageType);
                print(scannedData);
                customBottomSheet(
                  context,
                  sheetChild: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                  ),
                );
              }

              if (qrPageType == "search") {
                customBottomSheet(
                  context,
                  isScanButton: true,
                  sheetColor: AppColors.loginTabsBackgroundColor,
                  sheetChild: ListView(
                    children: [
                      ///The Data that will put here also from the API.
                      ShipmentCard(
                        shipmentNumber: scannedData.toString(),
                        shipmentType: "ساعة جلد طبيعى",
                        shipmentSender: "شادي السيد محمد محمود",
                        shipmentMarket: "سوق.كوم - سعيد جمال",
                        shipmentReceiverAddress:
                            "مصر القاهرة الجديدة مدينة نصر الحى السابع امام صيدلية الطرشوبى عمارة 11 شقة 6 ",
                        shipmentNotes:
                            "مصر القاهرة الجديدة مدينة نصر الحى السابع امام صيدلية الطرشوبى عمارة 11 شقة 6 ",
                      ),
                    ],
                  ),
                );
              } else if (qrPageType == "receive") {
                customBottomSheet(
                  context,
                  isScanButton: true,
                  sheetChild: ScanQrSheet(
                      itemList: itemsList,
                      subButtonText: AppStrings.receiveSheetSubButtonText,
                      buttonText: AppStrings.receiveSheetButtonTextPart1 +
                          itemsList.length.toString() +
                          AppStrings.receiveSheetButtonTextPart2,
                      doneText: AppStrings.receiveSheetDoneText,
                      qrCode: scannedData.toString()),
                );
              } else if (qrPageType == "pick") {
                customBottomSheet(
                  context,
                  isScanButton: true,
                  sheetChild: ScanQrSheet(
                    itemList: itemsList,
                    subButtonText: AppStrings.pickSheetSubButtonText,
                    buttonText: AppStrings.pickSheetButtonTextPart1 +
                        itemsList.length.toString() +
                        AppStrings.pickSheetButtonTextPart2,
                    doneText: AppStrings.pickSheetDoneTextPart1 +
                        itemsList.length.toString() +
                        AppStrings.pickSheetDoneTextPart2,
                  ),
                );
              }
            },
          ),
          QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.25)),
        ],
      ),
    );
  }
}
