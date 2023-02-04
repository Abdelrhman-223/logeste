import 'package:flutter/material.dart';
import 'package:logeste/core/components/custom_bottom_sheet.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/widget/app_scaffold.dart';
import 'package:logeste/core/widget/common_appbar.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../widgets/qr_overlay.dart';

class QrCodePage extends StatelessWidget {
  final String qrPageType;

  QrCodePage({Key? key, required this.qrPageType}) : super(key: key);

  MobileScannerController scannerController = MobileScannerController();

  String? scannedData;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
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
                },
              ),
              QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.25)),
            ],
          ),
        );
      },
    );
  }
}
