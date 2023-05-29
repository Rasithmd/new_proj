
import 'package:flutter/material.dart';
import 'package:new_proj/custom/button_widget.dart';
import 'package:new_proj/custom/easydeals.dart';
import 'package:new_proj/utils/utils.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  Color bgColor = const Color(0xff1eb091);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(25, 90, 25, 36),
        color: bgColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 222, top: 7),
                  child: EasyDeals()),
              Container(
                margin: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                child: Image.asset(
                  'images/onboarding/onboard_logo_3.png',
                  width: 301,
                  height: 420,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(1, 0, 0, 14),
                child: Text(
                  'Doorstep Delivery',
                  style: safeGoogleFont(
                    'Manrope',
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    height: 1.365,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(1, 0, 0, 10),
                constraints: const BoxConstraints(
                  maxWidth: 286,
                ),
                child: Text(
                  'Get Your Groceries Delivered Right to Your Doorstep with Easydeals',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Manrope',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.5625,
                    color: const Color(0xccffffff),
                  ),
                ),
              ),
              ButtonWidget(
                  bgColor: const Color(0xccfffffff),
                  title: 'Get Started',
                  buttonColor: Colors.black,
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const Welcome(),
                    //     ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
