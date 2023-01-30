import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/core/widget/app_scaffold.dart';
import 'package:logeste/side_menu/presentation/widgets/drawer_tiles.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/fonts.dart';

class SideMenuPage extends StatelessWidget {
  final bool isCaptain;
  const SideMenuPage({Key? key, required this.isCaptain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: double.infinity,
      backgroundColor: AppColors.appBackgroundColorBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                IconPaths.cross,
              ),
            ),
          ),
          Expanded(
            flex: 11,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    color: AppColors.appBackgroundColorLightBlack,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.appBackgroundColor.withOpacity(0.15),
                        offset: const Offset(0, 2.5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          minRadius: 30,
                          backgroundColor: AppColors.appIconGreyColor,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "اسم العميل",
                            style: TextStyle(
                              color: AppColors.appTextColorWhite,
                              fontSize: AppFonts.myP,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppFonts.appFontFamily,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(IconPaths.star),
                              SvgPicture.asset(IconPaths.star),
                              SvgPicture.asset(IconPaths.star),
                              Opacity(
                                opacity: 0.25,
                                child: SvgPicture.asset(IconPaths.star),
                              ),
                              Opacity(
                                opacity: 0.25,
                                child: SvgPicture.asset(IconPaths.star),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  child: Column(
                    children: [
                      if(isCaptain)drawerTiles(
                        IconPaths.shipments,
                        AppStrings.tileTitleShipments,
                        () {},
                      ),
                      if(isCaptain)drawerTiles(
                        IconPaths.shoppingBagOutline,
                        AppStrings.tileTitleShoppingBagOutline,
                        () {},
                      ),
                      if(isCaptain)drawerTiles(
                        IconPaths.billsOutline,
                        AppStrings.tileTitleBillsOutline,
                        () {},
                      ),
                      if(!isCaptain)drawerTiles(
                        IconPaths.operations,
                        AppStrings.tileTitleOperations,
                        () {},
                      ),
                      drawerTiles(
                        IconPaths.wallet,
                        AppStrings.tileTitleWallet,
                        () {},
                      ),
                      drawerTiles(
                        IconPaths.notificationOutlineNotification,
                        AppStrings.tileTitleNotificationOutlineNotification,
                        () {},
                      ),
                      drawerTiles(
                        IconPaths.eyeScanTwoTone,
                        AppStrings.tileTitleEyeScanTwoTone,
                        () {},
                      ),
                      drawerTiles(
                        IconPaths.settings,
                        AppStrings.tileTitleSettings,
                        () {},
                      ),
                      drawerTiles(
                        IconPaths.aboutUs,
                        AppStrings.tileTitleAboutUs,
                        () {},
                      ),
                      drawerTiles(
                        IconPaths.logout,
                        AppStrings.tileTitleLogout,
                        () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
