import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/fonts.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/images.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/login/presentation/pages/login_page.dart';
import 'package:logeste/splash_screens/presentation/widgets/slider_content.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/widget/app_scaffold.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  int pageIndex = 1;
  PageController pageController = PageController();
  List<Widget> sliderPages = [
    SliderContent(
      imgPath: ImagePaths.deliverySvg,
      description: AppStrings.deliveryDescription,
    ),
    SliderContent(
      imgPath: ImagePaths.orderFoodSvg,
      description: AppStrings.orderDescription,
    ),
    SliderContent(
      imgPath: ImagePaths.pickLocationSvg,
      description: AppStrings.pickDescription,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      hasDrawer: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppStrings.welcomeText,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: AppFonts.myH1,
                  fontWeight: FontWeight.bold,
                  color: AppColors.introPageTextColor,
                ),
              ),
              SizedBox(
                height: 450,
                child: PageView(
                  reverse: true,
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      //add 1 on index to make navigator work.
                      pageIndex = index + 1;
                    });
                  },
                  children: sliderPages,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Next page Arrow
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.introPageIconsColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          (pageIndex < sliderPages.length)
                              ? pageController.nextPage(
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.easeIn)
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ));
                        });
                      },
                      icon: SvgPicture.asset(
                        IconPaths.rightArrow,
                        color: AppColors.introPageIconsColor,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: sliderPages.length,
                    textDirection: TextDirection.ltr,
                    effect: ScrollingDotsEffect(
                      activeDotColor: AppColors.introPageIconsColor,
                      dotColor: AppColors.introPageIconsColor.withAlpha(50),
                      dotWidth: 10,
                      dotHeight: 10,
                      activeDotScale: 1.5,
                    ),
                  ),
                  (pageIndex > 1)
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              pageController.previousPage(
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.easeIn);
                            });
                          },
                          icon: SvgPicture.asset(
                            IconPaths.leftArrow,
                            color: AppColors.introPageIconsColor,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: SvgPicture.asset(
                            IconPaths.leftArrow,
                            color: Colors.transparent,
                          ),
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
