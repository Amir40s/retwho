import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/custom_color_textfield.dart';
import 'package:retwho/widgets/header.dart';
import 'package:retwho/widgets/search_icons_widget.dart';
import 'package:retwho/widgets/text_widget.dart';
class AddProductScreen extends StatelessWidget {
   AddProductScreen({super.key});

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
        Header(text: "Add Product", press: (){}),
  
            SizedBox(height: 20.0,),
            SearchIconsWidget(controller: searchController, cartPress: (){}, scanPress: (){}),
            SizedBox(height: 20.0,),
            TextWidget(text: "Product Information", size: 18.0,isBold: true,),

            SizedBox(height: 20.0,),
            Container(
              width: Get.width,
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.white,width: 1.0),
                color: shadeGrey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius:  2,
                    blurRadius:  2,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(text: "Product Name", size: 14.0),
                  SizedBox(height: 10.0,),
                  CustomColorTextField(hintText: "Product Name", controller: searchController, errorMessage: "errorMessage",isFillTransparent: true,),

                  SizedBox(height: 10.0,),
                  TextWidget(text: "Department", size: 14.0),
                  SizedBox(height: 10.0,),
                  CustomColorTextField(hintText: "Choose Department", controller: searchController, errorMessage: "errorMessage",isFillTransparent: true,),

                  SizedBox(height: 10.0,),
                  TextWidget(text: "Product Quantity", size: 14.0),
                  SizedBox(height: 10.0,),
                  CustomColorTextField(hintText: "Product Quantity", controller: searchController, errorMessage: "errorMessage",isFillTransparent: true,),

                  SizedBox(height: 10.0,),
                  TextWidget(text: "Status", size: 14.0),
                  SizedBox(height: 10.0,),
                  CustomColorTextField(hintText: "Status", controller: searchController, errorMessage: "errorMessage",isFillTransparent: true,),

                  SizedBox(height: 10.0,),
                  TextWidget(text: "UPC", size: 14.0),
                  SizedBox(height: 10.0,),
                  CustomColorTextField(hintText: "UPC", controller: searchController, errorMessage: "errorMessage",isFillTransparent: true,),

                  SizedBox(height: 10.0,),
                  TextWidget(text: "SKU", size: 14.0),
                  SizedBox(height: 10.0,),
                  CustomColorTextField(hintText: "SKU", controller: searchController, errorMessage: "errorMessage",isFillTransparent: true,),

                  SizedBox(height: 10.0,),
                  TextWidget(text: "Other Option", size: 14.0),
                  SizedBox(height: 10.0,),
                  CustomColorTextField(hintText: "Other Option", controller: searchController, errorMessage: "errorMessage",isFillTransparent: true,),

                  SizedBox(height: 10.0,),
                  TextWidget(text: "Other Option", size: 14.0),
                  SizedBox(height: 10.0,),
                  CustomColorTextField(hintText: "Other Option", controller: searchController, errorMessage: "errorMessage",isFillTransparent: true,),

                  SizedBox(height: 10.0,),
                  TextWidget(text: "Other Option", size: 14.0),
                  SizedBox(height: 10.0,),
                  CustomColorTextField(hintText: "Other Option", controller: searchController, errorMessage: "errorMessage",isFillTransparent: true,),

                  SizedBox(height: 10.0,),
                  TextWidget(text: "Other Option", size: 14.0),
                  SizedBox(height: 10.0,),
                  CustomColorTextField(hintText: "Other Option", controller: searchController, errorMessage: "errorMessage",isFillTransparent: true,),
                  
                  SizedBox(height: 30.0,),
                  ButtonWidget(text: "Submit", onClicked: (){}, width: Get.width)
               
               
               
               
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
