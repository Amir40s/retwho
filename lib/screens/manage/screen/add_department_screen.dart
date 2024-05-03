import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/custom_color_textfield.dart';
import 'package:retwho/widgets/custom_icon.dart';
import 'package:retwho/widgets/custom_searchbar.dart';
import 'package:retwho/widgets/header.dart';
import 'package:retwho/widgets/text_widget.dart';

import '../../../images.dart';
import '../../../widgets/search_icons_widget.dart';
class AddDepartmentScreen extends StatelessWidget {
   AddDepartmentScreen({super.key});

  var serachController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(text: "Add Department", press: (){}),

          SizedBox(height: 20.0,),
          SearchIconsWidget(controller: serachController,cartPress: (){},scanPress: (){},),
          SizedBox(height: 20.0,),
          TextWidget(text: "Department Information", size: 18.0,isBold: true,),
          Container(
            width: Get.width,
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: shadeGrey,
              borderRadius: BorderRadius.circular(10.0),
              // border:Border.all(color: borderColor,width: 1.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(text: "Department Categories", size: 14.0),
                SizedBox(height: 10.0,),
                CustomColorTextField(isFillTransparent: true,hintText: "Department Label", controller: serachController, errorMessage: "errorMessage"),


                SizedBox(height: 20.0,),
                TextWidget(text: "Status", size: 14.0),
                SizedBox(height: 10.0,),
                CustomColorTextField(isFillTransparent: true,hintText: "active", controller: serachController, errorMessage: "errorMessage")

                ,SizedBox(height: 40.0,),
                ButtonWidget(text: "Submit", onClicked: (){}, width: Get.width)



              ],
            ),
          )

        ],
      ),
    );
  }
}
