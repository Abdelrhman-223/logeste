import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/strings.dart';

import '../../../core/widget/common_appbar.dart';

PreferredSizeWidget billsPageAppbar() {
  return commonAppBar(
    title: const Text("الفواتير"),
    appbarColor: AppColors.appBackgroundColorBlack,
    appbarTitleColor: AppColors.appTextColorWhite,
  );
}
