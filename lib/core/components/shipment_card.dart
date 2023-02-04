import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/icons.dart';

import '../utils/fonts.dart';

Widget shipmentCard() {
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
                        "تم استعجال الشحنة",
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
                              "رقم الشحنة",
                              style: TextStyle(
                                color: AppColors.appTextThirdColor,
                              ),
                            ),
                            Text(
                              "5468427334",
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
                              "نوع الشحنة",
                              style: TextStyle(
                                color: AppColors.appTextThirdColor,
                              ),
                            ),
                            Text(
                              "ساعة جلد طبيعى",
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
                              "المرسل",
                              style: TextStyle(
                                color: AppColors.appTextThirdColor,
                              ),
                            ),
                            Text(
                              "شادي السيد محمد محمود",
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
                              "المتجر",
                              style: TextStyle(
                                color: AppColors.appTextThirdColor,
                              ),
                            ),
                            Text(
                              "سوق.كوم - سعيد جمال",
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
                          "عنوان المستلم",
                          style: TextStyle(
                            color: AppColors.appTextThirdColor,
                          ),
                        ),
                        Text(
                          "مصر القاهرة الجديدة مدينة نصر الحى السابع امام صيدلية الطرشوبى عمارة 11 شقة 6 ",
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
                          "الملاحظات",
                          style: TextStyle(
                            color: AppColors.appTextThirdColor,
                          ),
                        ),
                        Text(
                          "مصر القاهرة الجديدة مدينة نصر الحى السابع امام صيدلية الطرشوبى عمارة 11 شقة 6 ",
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
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
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
                        "تفاصيل الشحنة",
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
