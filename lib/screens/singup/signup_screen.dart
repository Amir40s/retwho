import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:retwho/provider/value_provider.dart';
import 'package:retwho/widgets/bottom_sheet.dart';

import '../../constants.dart';
import '../../routes/routes_name.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/custom_password_widget.dart';
import '../../widgets/custom_richtext.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/text_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  var emailController = TextEditingController();


  final _formKey =  GlobalKey<FormState>();
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Consumer<ValueProvider>(
              builder: (context,provider,child){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TextWidget(text: "Create an account", size: 18.0,color: Colors.black,isBold: true,),
                    SizedBox(height: 5.0,),
                    Container(
                      width: 40.0,
                      height: 1,
                      color: appColor,
                    ),

                    SizedBox(height: 30.0,),
                    TextWidget(text: "Name", size: 14.0,color: Colors.black,isBold: true,),
                    CustomTextField(hintText: "enter full name", controller: emailController, errorMessage: "invalid email"),

                    SizedBox(height: 20.0,),
                    TextWidget(text: "Email", size: 14.0,color: Colors.black,isBold: true,),
                    CustomTextField(hintText: "enter email address", controller: emailController, errorMessage: "invalid email"),

                    SizedBox(height: 20.0,),
                    TextWidget(text: "Phone", size: 14.0,color: Colors.black,isBold: true,),
                    CustomTextField(hintText: "+92********", controller: emailController, errorMessage: "invalid email"),

                    SizedBox(height: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Get.bottomSheet(BottomSheetWidget());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(text: "Account Type", size: 14.0,color: Colors.black,isBold: true,),
                              Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,size: 24.0,)
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          TextWidget(text: provider.accountType, size: 14.0,color: Colors.black,isBold: true,),

                          Container(
                            width: Get.width,
                            height: 1,
                            margin: EdgeInsets.only(top: 10.0),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),


                    if(provider.accountType == wholesale || provider.accountType == retail)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.0,),
                        TextWidget(text: "Company Name", size: 14.0,color: Colors.black,isBold: true,),
                        CustomTextField(hintText: "enter company name", controller: emailController, errorMessage: "invalid company name"),

                        SizedBox(height: 20.0,),
                        TextWidget(text: "DBA (DOING BUSINESS AS)", size: 14.0,color: Colors.black,isBold: true,),
                        CustomTextField(hintText: "enter BDA", controller: emailController, errorMessage: "invalid name"),
                      ],
                    ),

                    SizedBox(height: 20.0,),
                    TextWidget(text: "Password", size: 14.0,color: Colors.black,isBold: true,),
                    CustomPasswordField(hintText: "enter password", controller: emailController, errorMessage: "invalid password", obscurePassword: _obscurePassword,),
                    SizedBox(height: 20.0,),
                    TextWidget(text: "Confirm Password", size: 14.0,color: Colors.black,isBold: true,),
                    CustomPasswordField(hintText: "enter confirm password", controller: emailController, errorMessage: "invalid password", obscurePassword: _obscurePassword,),





                   if(provider.accountType == "Consumer" || provider.accountType == wholesale)
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(height: 20.0,),
                       TextWidget(text: "Referral Code", size: 14.0,color: Colors.black,isBold: true,),
                       CustomTextField(hintText: "", controller: emailController, errorMessage: "invalid email"),
                       SizedBox(height: 20.0,),
                       TextWidget(text: "Terms of services", size: 14.0,color: Colors.black),
                       SizedBox(height: 20.0,),
                       Row(
                         children: [
                           Consumer<ValueProvider>(
                             builder: (context,provider,child){
                               return Checkbox(checkColor: appColor,value: provider.isChecked, onChanged: (value){
                                 provider.setChecked(value!);
                               });
                             },
                           ),
                           SizedBox(width: 5.0,),
                           TextWidget(text: "You agree to our Terms & Conditions.", size: 14.0,color: Colors.black),
                         ],
                       ),
                     ],
                   ),


                    SizedBox(height: 20.0,),
                    ButtonWidget(text: "Register", onClicked: (){
                      Get.toNamed(RoutesName.signUpProcess);
                    }, width: Get.width),

                    SizedBox(height: 20.0,),
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: CustomRichText(press: (){
                        Get.toNamed(RoutesName.loginScreen);
                      }, firstText: "Already have an account?", secondText: "Login",highlightTextColor: appColor,),
                    ),

                    SizedBox(height: 20.0,),

                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
