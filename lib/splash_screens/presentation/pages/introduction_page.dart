import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/icons.dart';
import 'package:logeste/core/utils/images.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/home_page.dart';
import 'package:logeste/splash_screens/presentation/widgets/slider_content.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  int pageIndex = 1;
  PageController indicatorController = PageController();
  List<Widget> sliderPages = [
    SliderContent(
      imgPath: ImagePaths.deliverySvg,
      description:
          "Splash Title Splash Title Splash Title Splash  Splash Title",
    ),
    SliderContent(
      imgPath: ImagePaths.orderFoodSvg,
      description:
          "Splash Title Splash Title Splash Title Splash  Splash Title",
    ),
    SliderContent(
      imgPath: ImagePaths.pickLocationSvg,
      description:
          "Splash Title Splash Title Splash Title Splash  Splash Title",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppStrings.welcomeText,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 450,
                child: PageView(
                  controller: indicatorController,
                  reverse: true,
                  children: sliderPages,
                  onPageChanged: (index) {
                    setState(() {
                      //add 1 on index to make navigator work.
                      pageIndex = index + 1;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        (pageIndex < sliderPages.length)
                            ? indicatorController.nextPage(
                                duration: const Duration(milliseconds: 250),
                                curve: Curves.easeIn)
                            : Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyHomePage(),
                                ));
                      });
                    },
                    icon: SvgPicture.asset(
                      IconPaths.rightArrow,
                      color: AppColors.splashScreenBackgroundColor,
                    ),
                  ),
                  Container(
                    alignment: const Alignment(0, 0.6),
                    child: SmoothPageIndicator(
                      controller: indicatorController,
                      count: sliderPages.length,
                      textDirection: TextDirection.ltr,
                      effect: const ScrollingDotsEffect(
                        activeDotColor: Colors.black,
                        dotColor: Colors.black12,
                        dotWidth: 10,
                        dotHeight: 10,
                        activeDotScale: 1.5,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        indicatorController.previousPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeIn);
                      });
                    },
                    icon: SvgPicture.asset(
                      IconPaths.leftArrow,
                      color: AppColors.splashScreenBackgroundColor,
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
