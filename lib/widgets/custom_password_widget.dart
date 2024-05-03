
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomPasswordField extends StatelessWidget {
  final String hintText,errorMessage;
  final TextEditingController controller;
  final obscurePassword;
  var prefixPath;
  CustomPasswordField({Key? key,
    required this.hintText,
    required this.controller,
    this.prefixPath, required this.errorMessage, required this.obscurePassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: obscurePassword,
      builder: (context, value, child){
        return TextFormField(
          controller: controller,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.name,
          obscureText: obscurePassword.value,
          obscuringCharacter: '*',
          validator: (value){
            if (value!.isEmpty) {
              return errorMessage;
            }
            return null;
          },
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: backgroundColor,
            hintStyle: const TextStyle(fontSize: 12.0,color: Colors.grey),
            suffixIcon: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                obscurePassword.value =
                !obscurePassword.value;
              },
              child: obscurePassword.value
                  ? const Icon(
                Icons.visibility_off,
                color: Colors.grey,
              )
                  : Icon(
                Icons.visibility,
                color:
                appColor,
              ),
            ),
          ),
        );

      }
    );
  }
}