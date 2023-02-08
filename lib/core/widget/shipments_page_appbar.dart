import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/strings.dart';

import '../../../core/widget/common_appbar.dart';

PreferredSizeWidget shipmentsPageAppbar() {
  return commonAppBar(
    title: const Text("الشحنات"),
    appbarColor: AppColors.appBackgroundColorBlack,
    appbarTitleColor: AppColors.appTextColorWhite,
    appbarActions: [
      IconButton(
        icon: SvgPicture.asset(IconPaths.search),
        onPressed: () {},
      ),
    ],
  );
}
