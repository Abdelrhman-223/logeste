import 'package:flutter/material.dart';
import 'package:logeste/login/presentation/pages/forget_password_sub_pages/enter_phone_number.dart';
import 'package:logeste/login/presentation/pages/forget_password_sub_pages/new_password.dart';

import '../../../core/components/custom_button.dart';
import '../../../core/utils/colors.dart';
import '../../../core/utils/strings.dart';
import '../../../core/widget/app_scaffold.dart';
import '../widgets/common_appbar.dart';
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
      isDrawer: false,
      appBar: loginAppBar(AppStrings.forgetPassAppbarTitle),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: pages,
      ),
    );
  }
}
