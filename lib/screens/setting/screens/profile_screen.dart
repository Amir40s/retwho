import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/widgets/custom_color_textfield.dart';
import 'package:retwho/widgets/custom_container_box.dart';
import 'package:retwho/widgets/custom_textfield.dart';
import 'package:retwho/widgets/header.dart';
import 'package:retwho/widgets/text_widget.dart';

import '../../../images.dart';
class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  var nameController = TextEditingController();
  var departController = TextEditingController();
  var companyController = TextEditingController();
  var addressController = TextEditingController();
  var cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(text: "Profile", press: (){},isCart: false,),

           SizedBox(height: 30.0,),
           Container(
             width: Get.width,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 CircleAvatar(
                   radius: 50.0,
                   backgroundColor: Colors.white,
                   backgroundImage: AssetImage(Images.logo_image),
                 ),
                 TextWidget(text: "Safa Sialkot", size: 14.0)
               ],
             ),
           ),
            SizedBox(height: 30.0,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(text: "Name", size: 14.0,isBold: true,),
                  SizedBox(height: 10.0,),
                  Container(
                      height: 50.0,
                      child: CustomColorTextField(hintText: nameController.text = "Safa Sialkot", controller: nameController, errorMessage: "errorMessage")),

                  SizedBox(height: 20.0,),
                  TextWidget(text: "Department", size: 14.0,isBold: true,),
                  SizedBox(height: 10.0,),
                  Container(
                      height: 50.0,
                      child: CustomColorTextField(hintText: departController.text = "Admins Business Information", controller: departController, errorMessage: "errorMessage")),

                  SizedBox(height: 20.0,),
                  TextWidget(text: "Company", size: 14.0,isBold: true,),
                  SizedBox(height: 10.0,),
                  Container(
                      height: 50.0,
                      child: CustomColorTextField(hintText: companyController.text = "Aizaf Group LLC", controller: companyController, errorMessage: "errorMessage")),

                  SizedBox(height: 20.0,),
                  TextWidget(text: "Street Address", size: 14.0,isBold: true,),
                  SizedBox(height: 10.0,),
                  Container(
                      height: 50.0,
                      child: CustomColorTextField(hintText: addressController.text = "3926 CORAL RIDGE DR.", controller: addressController, errorMessage: "errorMessage")),

                  SizedBox(height: 20.0,),
                  TextWidget(text: "City", size: 14.0,isBold: true,),
                  SizedBox(height: 10.0,),
                  Container(
                      height: 50.0,
                      child: CustomColorTextField(hintText: cityController.text = "3926 CORAL RIDGE DR.", controller: cityController, errorMessage: "errorMessage")),

                  SizedBox(height: 20.0,),
                  TextWidget(text: "State", size: 14.0,isBold: true,),
                  SizedBox(height: 10.0,),
                  Container(
                      height: 50.0,
                      child: CustomColorTextField(hintText: cityController.text = "3926 CORAL RIDGE DR.", controller: cityController, errorMessage: "errorMessage")),

                  SizedBox(height: 20.0,),
                  TextWidget(text: "Zip Code", size: 14.0,isBold: true,),
                  SizedBox(height: 10.0,),
                  Container(
                      height: 50.0,
                      child: CustomColorTextField(hintText: cityController.text = "3926 CORAL RIDGE DR.", controller: cityController, errorMessage: "errorMessage")),
                  SizedBox(height: 30.0,),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
