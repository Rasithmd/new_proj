// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:new_proj/utils/utils.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
      child: Text(
        title,
        style: safeGoogleFont(
          'Manrope',
          fontSize: 26,
          fontWeight: FontWeight.w800,
          height: 1.365,
          color: const Color(0xff2a232d),
        ),
      ),
    );
  }
}
