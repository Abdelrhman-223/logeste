import 'package:flutter/material.dart';
import 'package:logeste/scan_qr/presentation/pages/qr_code_screen.dart';

class QrCodePage extends StatelessWidget {
  final String qrPageType;

  QrCodePage({Key? key, required this.qrPageType}) : super(key: key);

  ///this list comes from the API.
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

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return QrCodeScreen(
          itemsList: itemsList,
          qrPageType: qrPageType,
        );
      },
    );
  }
}
