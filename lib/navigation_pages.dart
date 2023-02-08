import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/core/widget/shipments_page_appbar.dart';
import 'package:logeste/core/widget/tasks_page_appbar.dart';
import 'package:logeste/home_page/presentation/pages/home_page.dart';
import 'package:logeste/home_page/presentation/widgets/home_page_appbar.dart';
import '../core/components/bottom_navigator_bar_item.dart';
import 'core/widget/app_scaffold.dart';
import 'core/widget/bills_page_appbar.dart';
import 'core/widget/notifications_page_appbar.dart';

class NavigationPages extends StatelessWidget {
  bool isCaptain;

  NavigationPages({Key? key, this.isCaptain = false}) : super(key: key);

  int pageIndex = 2;

  List<PreferredSizeWidget> appbars = [
    shipmentsPageAppbar(),
    tasksPageAppbar(),
    homePageAppbar(),
    billsPageAppbar(),
    notificationsPageAppbar(),
  ];

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder:
          (BuildContext context, void Function(void Function()) setState) {
        return AppScaffold(
          appBar: appbars[pageIndex],
          isCaptain: isCaptain,
          body: Stack(
            children: [
              IndexedStack(
                index: pageIndex,
                children: [
                  Center(child: SvgPicture.asset(IconPaths.shipments)),
                  Center(child: SvgPicture.asset(IconPaths.shoppingBag)),
                  const HomePage(),
                  Center(child: SvgPicture.asset(IconPaths.bills)),
                  Center(child: SvgPicture.asset(IconPaths.notification)),
                ],
              ),

              //Custom Bottom Navigation bar.
              Align(
                alignment: const Alignment(0, 0.9),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppColors.appBackgroundColorBlack,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.appShadowColor,
                        offset: const Offset(0, 5),
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            pageIndex = 0;
                          });
                        },
                        child: BottomNavigatorBarItem(
                          itemIcon: IconPaths.shipments,
                          itemLabel: AppStrings.shipmentsItemLabel,
                          itemColor: (pageIndex == 0)
                              ? AppColors.appIconsColorWhite
                              : AppColors.appIconLightGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            pageIndex = 1;
                          });
                        },
                        child: BottomNavigatorBarItem(
                          itemIcon: IconPaths.shoppingBag,
                          itemLabel: AppStrings.tasksItemLabel,
                          itemColor: (pageIndex == 1)
                              ? AppColors.appIconsColorWhite
                              : AppColors.appIconLightGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            pageIndex = 2;
                          });
                        },
                        child: BottomNavigatorBarItem(
                          itemIcon: (pageIndex == 2)
                              ? IconPaths.directArrow
                              : IconPaths.directArrowOutline,
                          itemColor: (pageIndex == 2)
                              ? AppColors.appIconsColorWhite
                              : AppColors.appIconLightGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            pageIndex = 3;
                          });
                        },
                        child: BottomNavigatorBarItem(
                          itemIcon: IconPaths.bills,
                          itemLabel: AppStrings.billsItemLabel,
                          itemColor: (pageIndex == 3)
                              ? AppColors.appIconsColorWhite
                              : AppColors.appIconLightGreyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            pageIndex = 4;
                          });
                        },
                        child: BottomNavigatorBarItem(
                          itemIcon: IconPaths.notification,
                          itemLabel: AppStrings.notificationsItemLabel,
                          itemColor: (pageIndex == 4)
                              ? AppColors.appIconsColorWhite
                              : AppColors.appIconLightGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
