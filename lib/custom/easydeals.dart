// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:new_proj/utils/utils.dart';

class EasyDeals extends StatelessWidget {
  const EasyDeals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Easy deals',
      style: safeGoogleFont(
        'Manrope',
        fontSize: 20,
        fontWeight: FontWeight.w800,
        height: 1.365,
        color: const Color(0xffffffff),
      ),
    );
  }
}
