

import 'package:flutter/material.dart';
import 'package:new_proj/onboarding/splashScreen/splash_screen1.dart';
import 'package:new_proj/onboarding/splashScreen/splash_screen2.dart';
import 'package:new_proj/onboarding/splashScreen/splash_screen3.dart';
import 'package:new_proj/utils/utils.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();
  int currentPage = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowIndicator();
            return notification.leading;
          },
          child: PageView(
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            children: const [SplashScreen1(), SplashScreen2(), SplashScreen3()],
          ),
        ),
        currentPage == 2
            ? Container()
            : Positioned(
                bottom: 50,
                right: 50,
                child: InkWell(
                  onTap: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Text('Skip',
                      textAlign: TextAlign.center,
                      style: safeGoogleFont(
                        'Manrope',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        height: 2.0833333333,
                        color: const Color(0xffffffff),
                      )),
                ),
              ),
      ],
    ));
  }
}
