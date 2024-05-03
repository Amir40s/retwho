
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class CustomTextField extends StatelessWidget {
  final String hintText,errorMessage;
  final TextEditingController controller;
  var prefixPath;
   CustomTextField({Key? key,
     required this.hintText,
     required this.controller,
    this.prefixPath, required this.errorMessage,
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
        enabledBorder: UnderlineInputBorder(
          borderSide:  BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular( 0),
        ),

        fillColor:   backgroundColor,
      focusColor: Colors.black,
        hintStyle: const TextStyle(fontSize: 12.0,color: Colors.grey),
      ),
    );
  }
}