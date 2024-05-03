
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class CustomColorTextField extends StatelessWidget {
  final String hintText,errorMessage;
  final TextEditingController controller;
  var prefixPath;
  var isFillTransparent;
  CustomColorTextField({Key? key,
     required this.hintText,
     required this.controller,
    this.prefixPath, required this.errorMessage,
    this.isFillTransparent = false
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
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
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: isFillTransparent ? appColor :secondColorGradient),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(
            color: isFillTransparent ? appColor : secondColorGradient,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10 ),
        ),
        fillColor: isFillTransparent ? shadeGrey : secondColorGradient,
      focusColor: Colors.black,
        hintStyle: const TextStyle(fontSize: 12.0,color: Colors.grey),
      ),
    );
  }
}