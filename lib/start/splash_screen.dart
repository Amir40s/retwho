import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:retwho/constants.dart';

import '../images.dart';
import '../routes/routes_name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(RoutesName.loginScreen);

    });
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          width: Get.width,
            padding: EdgeInsets.all(30.0),
            margin: EdgeInsets.all(20.0),
            child: Image.asset(Images.logo_image,width: Get.width,height: 250.0,)),
      ),
    );
  }
}
