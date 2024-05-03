import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:retwho/widgets/custom_text_image.dart';


import '../../constants.dart';
import '../../provider/value_provider.dart';
import '../../routes/routes_name.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/text_widget.dart';

class SignUpProcessScreen extends StatelessWidget {
   SignUpProcessScreen({super.key});

  var referralCodeController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child:   Column(
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

            SizedBox(height: 20.0,),
            TextWidget(text: "Referral Code", size: 14.0,color: Colors.black,isBold: true,),
            CustomTextField(hintText: "", controller: referralCodeController, errorMessage: "invalid email"),

            SizedBox(height: 20.0,),
            CustomTextImage(value: "", text: "Officer Picture ID", press: (){}),
            SizedBox(height: 20.0,),
            CustomTextImage(value: "376571527", text: "FEIN", press: (){}),
            SizedBox(height: 20.0,),
            CustomTextImage(value: "376571527", text: "RESALE", press: (){}),
            SizedBox(height: 20.0,),
            CustomTextImage(value: "", text: "TOBACCO LICENSE", press: (){}),
            SizedBox(height: 20.0,),
            TextWidget(text: "Street Address", size: 14.0,color: Colors.black,isBold: true,),
            CustomTextField(hintText: "", controller: referralCodeController, errorMessage: "invalid email"),
            SizedBox(height: 20.0,),
            TextWidget(text: "City", size: 14.0,color: Colors.black,isBold: true,),
            CustomTextField(hintText: "", controller: referralCodeController, errorMessage: "invalid email"),
            SizedBox(height: 20.0,),
            TextWidget(text: "State / province / Region", size: 14.0,color: Colors.black,isBold: true,),
            CustomTextField(hintText: "", controller: referralCodeController, errorMessage: "invalid email"),
            TextWidget(text: "Zip Code", size: 14.0,color: Colors.black,isBold: true,),
            CustomTextField(hintText: "", controller: referralCodeController, errorMessage: "invalid email"),
            SizedBox(height: 30.0,),
            TextWidget(text: "Terms of services", size: 14.0,color: Colors.black),
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
            SizedBox(height: 20.0,),
            ButtonWidget(text: "Register", onClicked: (){
              Get.toNamed(RoutesName.dashboard);
            }, width: Get.width),
            SizedBox(height: 20.0,),
          ],
        ),
        ),
      ),
    );
  }
}
