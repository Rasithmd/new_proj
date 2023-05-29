
import 'package:flutter/material.dart';
import 'package:new_proj/custom/easydeals.dart';
import 'package:new_proj/utils/utils.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  Color bgColor = const Color(0xffa44c4c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(25, 90, 25, 36),
        color: bgColor,
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(right: 222, top: 7),
                child: EasyDeals()),
            Container(
              margin: const EdgeInsets.fromLTRB(6, 0, 0, 23),
              width: 301,
              height: 420,
              child: Image.asset(
                'images/onboarding/onboard_logo_2.png',
                width: 301,
                height: 420,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(1, 0, 0, 14),
              child: Text(
                'Add to your Cart',
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
              margin: const EdgeInsets.fromLTRB(1, 0, 0, 39),
              constraints: const BoxConstraints(
                maxWidth: 286,
              ),
              child: Text(
                'Add selected products to your cart and share the cart via WhatsApp',
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
          ],
        ),
      ),
    );
  }
}
