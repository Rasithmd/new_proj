// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:new_proj/utils/utils.dart';

class PasswordWidget extends StatefulWidget {
  PasswordWidget(
      {super.key,
      required this.controller,
      required this.placeholder,
      required this.avatar});
  TextEditingController controller;
  String placeholder;
  String avatar;

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool isVisibility = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.89,
      height: 45,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0x262a232d),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                widget.avatar,
                width: 15,
                height: 20,
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                height: 20,
                child: TextField(
                  controller: widget.controller,
                  obscureText: isVisibility,
                  style: safeGoogleFont(
                    'Manrope',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.4285714286,
                    letterSpacing: 0.28,
                    color: const Color(0xff2a232d),
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: widget.placeholder,
                    hintStyle: safeGoogleFont(
                      'Manrope',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1.4285714286,
                      letterSpacing: 0.28,
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isVisibility = !isVisibility;
                  });
                },
                child: !isVisibility
                    ? Image.asset(
                        'images/login/close-eyes.png',
                        width: 15,
                        height: 20,
                      )
                    : Image.asset(
                        'images/login/eye.png',
                        width: 15,
                        height: 20,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
