import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/strings.dart';

import '../utils/fonts.dart';

class ShipmentCard extends StatelessWidget {
  final String shipmentNumber,
      shipmentType,
      shipmentSender,
      shipmentMarket,
      shipmentReceiverAddress,
      shipmentNotes;

  const ShipmentCard(
      {Key? key,
      required this.shipmentNumber,
      required this.shipmentType,
      required this.shipmentSender,
      required this.shipmentMarket,
      required this.shipmentReceiverAddress,
      required this.shipmentNotes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.appBackgroundColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.appButtonLittleRedColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          AppStrings.shipmentDescription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.appTextLittleRedColor,
                            fontSize: AppFonts.myP2,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.shipmentNumber,
                                style: TextStyle(
                                  color: AppColors.appTextThirdColor,
                                ),
                              ),
                              Text(
                                shipmentNumber,
                                style: TextStyle(
                                  color: AppColors.appTextOrangeColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.shipmentType,
                                style: TextStyle(
                                  color: AppColors.appTextThirdColor,
                                ),
                              ),
                              Text(
                                shipmentType,
                                style: TextStyle(
                                  color: AppColors.appTextOrangeColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.shipmentSender,
                                style: TextStyle(
                                  color: AppColors.appTextThirdColor,
                                ),
                              ),
                              Text(
                                shipmentSender,
                                style: TextStyle(
                                  color: AppColors.appTextColorBlack,
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(IconPaths.callCircle),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.shipmentMarket,
                                style: TextStyle(
                                  color: AppColors.appTextThirdColor,
                                ),
                              ),
                              Text(
                                shipmentMarket,
                                style: TextStyle(
                                  color: AppColors.appTextColorBlack,
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(IconPaths.callCircle),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.shipmentReceiverAddress,
                            style: TextStyle(
                              color: AppColors.appTextThirdColor,
                            ),
                          ),
                          Text(
                            shipmentReceiverAddress,
                            style: TextStyle(
                              color: AppColors.appTextColorBlack,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.shipmentNotes,
                            style: TextStyle(
                              color: AppColors.appTextThirdColor,
                            ),
                          ),
                          Text(
                            shipmentNotes,
                            style: TextStyle(
                              color: AppColors.appTextColorBlack,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  decoration: BoxDecoration(
                    color: AppColors.appButtonLightBlackColor,
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          AppStrings.shipmentCardButton,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.appTextColorWhite,
                            fontSize: AppFonts.myP2,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        IconPaths.leftArrow,
                        color: AppColors.appIconsColorWhite,
                        height: 16,
                        width: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
