import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/utils/colors.dart';
import '../pages/qr_code_page.dart';

class ScanButtonBox extends StatelessWidget {
  final String buttonText, buttonIcon, qrPageType;

  const ScanButtonBox(
      {Key? key,
      required this.buttonText,
      required this.buttonIcon,
      required this.qrPageType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QrCodePage(
              qrPageType: qrPageType,
            ),
          ),
        );
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
}
