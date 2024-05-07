import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/routes/routes_name.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/custom_textfield.dart';
import 'package:retwho/widgets/text_widget.dart';

import '../../widgets/custom_password_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Log In",
                        size: 18.0,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 40.0,
                        height: 1,
                        color: appColor,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextWidget(
                        text:
                            "Please Sign in using the registered email and password",
                        size: 18.0,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      TextWidget(
                        text: "Email",
                        size: 18.0,
                        color: Colors.black,
                        isBold: true,
                      ),
                      CustomTextField(
                          hintText: "enter email address",
                          controller: emailController,
                          errorMessage: "invalid email"),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextWidget(
                        text: "Password",
                        size: 18.0,
                        color: Colors.black,
                        isBold: true,
                      ),
                      CustomPasswordField(
                        hintText: "enter password",
                        controller: emailController,
                        errorMessage: "invalid password",
                        obscurePassword: _obscurePassword,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextWidget(
                        text: "Forgot Password?",
                        size: 12.0,
                        color: appColor,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ButtonWidget(
                        text: "Log In",
                        onClicked: () {},
                        width: Get.width,
                      ),
                      const SizedBox(height: 15.0),
                      ButtonWidget(
                        text: "Create An Account",
                        onClicked: () {
                          Get.toNamed(RoutesName.signUp);
                        },
                        width: Get.width,
                        borderColor: appColor,
                        textColor: appColor,
                      ),
                      const SizedBox(height: 100.0),
                      Container(
                        width: Get.width,
                        child: TextWidget(
                          text: "A Habitat for Retailers & Wholesalers.",
                          size: 12.0,
                          textAlignment: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                          width: Get.width,
                          child: TextWidget(
                            text: "It's an ideal Marketplace.",
                            size: 12.0,
                            textAlignment: TextAlign.center,
                          )),
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  width: Get.width,
                  child: Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: TextWidget(
                      text:
                          "©Retwho. All rights reserved. Owned by Aizaf Group",
                      size: 12.0,
                      textAlignment: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
