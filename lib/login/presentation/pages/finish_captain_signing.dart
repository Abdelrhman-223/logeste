import 'package:flutter/material.dart';
import 'package:logeste/login/presentation/widgets/upload_images_container.dart';

import '../../../core/components/custom_button.dart';
import '../../../core/utils/colors.dart';
import '../../../core/utils/fonts.dart';
import '../../../core/utils/strings.dart';
import '../../../core/widget/app_scaffold.dart';
import '../../../core/widget/common_appbar.dart';
import '../widgets/tab_bar_text.dart';

class FinishCaptainSigning extends StatelessWidget {
  const FinishCaptainSigning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      hasDrawer: false,
      appBar: commonAppBar(
        title: Text(AppStrings.loginAppBarTitle),
        appbarColor: AppColors.appBackgroundColor,
        appbarTitleColor: AppColors.appTextColorBlack,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                AppStrings.signUpPageTitle,
                style: TextStyle(
                  color: AppColors.appTextColorBlack,
                  fontSize: AppFonts.myH5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                AppStrings.signUpFinishingPageTitle,
                style: TextStyle(
                  color: AppColors.appTextColorBlack,
                  fontSize: AppFonts.myH7,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              color: AppColors.loginTabsBackgroundColor,
              height: 575,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      UploadImagesContainer(
                        containerText: AppStrings.uploadImageText1,
                        containerFinishingText:
                            AppStrings.uploadFinishedImageText1,
                        // hasImg: true,
                      ),
                      UploadImagesContainer(
                        containerText: AppStrings.uploadImageText2,
                        containerFinishingText:
                            AppStrings.uploadFinishedImageText4,
                      ),
                      UploadImagesContainer(
                        containerText: AppStrings.uploadImageText3,
                        containerFinishingText:
                            AppStrings.uploadFinishedImageText4,
                        hasImg: true,
                      ),
                      UploadImagesContainer(
                        containerText: AppStrings.uploadImageText4,
                        containerFinishingText:
                            AppStrings.uploadFinishedImageText4,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: CustomButton(
                      buttonText: AppStrings.signUpPageButtonText,
                      buttonColor: AppColors.appIconsColor,
                      buttonFunc: () {
                        // Do what you want if he is Captain without car.
                        print("I am Captain without car");
                      },
                      buttonTextColor: AppColors.appTextColorWhite,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
