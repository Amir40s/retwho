import 'package:flutter/material.dart';
import 'package:retwho/images.dart';

import '../constants.dart';
class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  const CustomSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: "Find here",
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search,size: 24,),
          focusColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.merge(BorderSide(color: Colors.grey), BorderSide(color: Colors.grey)),
          ),
          hintStyle: const TextStyle(fontSize: 12.0,color: Colors.grey),
        ),
      ),
    );
  }
}
