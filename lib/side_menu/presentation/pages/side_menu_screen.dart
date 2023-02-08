import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/side_menu/presentation/widgets/drawer_tiles.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/fonts.dart';

class SideMenuScreen extends StatelessWidget {
  double rating = 3;
  String userName = "اسم المستخدم", agentName = "شركة / وكيل";
  final bool isCaptain;

  SideMenuScreen({Key? key, required this.isCaptain}) : super(key: key);

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
                          child: SvgPicture.asset(IconPaths.profile,
                              height: 40, width: 40),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userName,
                            style: TextStyle(
                              color: AppColors.appTextColorWhite,
                              fontSize: AppFonts.myP1,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppFonts.appFontFamily,
                            ),
                          ),
                          (isCaptain)
                              ? RatingBar.builder(
                                  glow: false,
                                  itemSize: 16,
                                  itemCount: 5,
                                  ignoreGestures: true,
                                  initialRating: rating,
                                  allowHalfRating: false,
                                  direction: Axis.horizontal,
                                  unratedColor: AppColors.appIconLightStarColor
                                      .withOpacity(0.15),
                                  itemBuilder: (context, _) =>
                                      SvgPicture.asset(IconPaths.star),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                )
                              : Text(
                                  agentName,
                                  style: TextStyle(
                                    color: AppColors.appTextSecondColor,
                                    fontSize: AppFonts.myP2,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: AppFonts.appFontFamily,
                                  ),
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
                      if (isCaptain)
                        drawerTiles(
                          tileIconPath: IconPaths.operations,
                          tileTitle: AppStrings.tileTitleOperations,
                          tileFunction: () {},
                        ),
                      drawerTiles(
                        tileIconPath: IconPaths.shipments,
                        tileTitle: AppStrings.tileTitleShipments,
                        tileFunction: () {},
                      ),
                      drawerTiles(
                        tileIconPath: IconPaths.shoppingBag,
                        tileTitle: AppStrings.tileTitleShoppingBag,
                        tileFunction: () {},
                      ),
                      drawerTiles(
                        tileIconPath: IconPaths.bills,
                        tileTitle: AppStrings.tileTitleBills,
                        tileFunction: () {},
                      ),
                      drawerTiles(
                        tileIconPath: IconPaths.wallet,
                        tileTitle: AppStrings.tileTitleWallet,
                        tileFunction: () {},
                      ),
                      drawerTiles(
                        tileIconPath: IconPaths.notification,
                        tileTitle: AppStrings.tileTitleNotification,
                        tileFunction: () {},
                      ),
                      drawerTiles(
                        tileIconPath: IconPaths.scan,
                        tileTitle: AppStrings.tileTitleQrScan,
                        tileFunction: () {},
                      ),
                      drawerTiles(
                        tileIconPath: IconPaths.settings,
                        tileTitle: AppStrings.tileTitleSettings,
                        tileFunction: () {},
                      ),
                      drawerTiles(
                        tileIconPath: IconPaths.aboutUs,
                        tileTitle: AppStrings.tileTitleAboutUs,
                        tileFunction: () {},
                      ),
                      drawerTiles(
                        tileIconPath: IconPaths.logout,
                        tileTitle: AppStrings.tileTitleLogout,
                        tileFunction: () {},
                      ),
                      if (!isCaptain)
                        drawerTiles(
                          tileIconPath: IconPaths.multiProfile,
                          tileTitle: AppStrings.tileTitleCaptain,
                          tileFunction: () {},
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
