// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:new_proj/utils/utils.dart';

class FormTextFieldWIdget extends StatelessWidget {
  FormTextFieldWIdget(
      {super.key,
      required this.controller,
      required this.placeholder,
      required this.inputType,
      required this.avatar});
  TextEditingController controller;
  String placeholder;
  String avatar;
  TextInputType inputType;
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
                avatar,
                width: 15,
                height: 20,
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 20,
                child: FormBuilderTextField(
                  name: '',
                  keyboardType: inputType,
                  controller: controller,
                  style: safeGoogleFont(
                    'Manrope',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.4285714286,
                    letterSpacing: 0.28,
                    color: const Color(0xff2a232d),
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: placeholder,
                    hintStyle: safeGoogleFont(
                      'Manrope',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1.4285714286,
                      letterSpacing: 0.28,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
