import 'package:flutter/material.dart';
import 'package:logeste/login/presentation/pages/forget_password_sub_pages/enter_phone_number.dart';
import 'package:logeste/login/presentation/pages/forget_password_sub_pages/new_password.dart';

import '../../../core/components/custom_button.dart';
import '../../../core/utils/colors.dart';
import '../../../core/utils/strings.dart';
import '../../../core/widget/app_scaffold.dart';
import '../../../core/widget/common_appbar.dart';
import 'forget_password_sub_pages/enter_pin_code.dart';

class ForgetPasswordPage extends StatelessWidget {
  ForgetPasswordPage({Key? key}) : super(key: key);
  PageController pageController = PageController();
  List<Widget> pages = [
    EnterPhoneNumber(),
    EnterPinCode(),
    NewPassword(),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      hasDrawer: false,
      appBar: commonAppBar(
        title: Text(AppStrings.forgetPassAppbarTitle),
        appbarColor: AppColors.loginTabsBackgroundColor,
        appbarTitleColor: AppColors.appTextColorBlack,
      ),
      backgroundColor: AppColors.loginTabsBackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: pages,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
              child: customButton(
                buttonText: AppStrings.forgetPassPageButtonText,
                buttonColor: AppColors.appIconsColor,
                buttonFunc: () {
                  if (pageController.page == 0) {
                    print("From Enter Phone Number Page");
                  } else if (pageController.page == 1) {
                    print("From Enter Pin code Page");
                  } else {
                    print("From Enter New Password Page");
                  }
                  pageController.nextPage(
                    duration: const Duration(microseconds: 100),
                    curve: Curves.easeInOut,
                  );
                },
                buttonTextColor: AppColors.appTextColorWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
