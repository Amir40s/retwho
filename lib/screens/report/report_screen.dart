import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/custom_richtext.dart';
import 'package:retwho/widgets/custom_searchbar.dart';
import 'package:retwho/widgets/header.dart';
import 'package:retwho/widgets/text_widget.dart';

import '../../images.dart';
class ReportScreen extends StatelessWidget {
   ReportScreen({super.key});

  var controller  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(text: "Reports",press: (){},),
            SizedBox(height: 10.0,),

            Padding(padding: EdgeInsets.all(20.0),
            child: Column(
               children: [
                 CustomSearchBar(controller: controller),
                 SizedBox(height: 10.0,),
                 Container(
                   height: Get.height/1.5,
                   child: ListView.builder(
                     itemCount: 5,
                       shrinkWrap: true,
                       itemBuilder: _itemsBuilder
                   ),
                 ),
                 SizedBox(height: 40.0,),
               ],
            ),)
        
        
          ],
        ),
      ),
    );
  }
  Widget _itemsBuilder(BuildContext context, int index){
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius:  2,
            blurRadius:  2,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(Images.demo_product,width: 100,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(text: "AXE body spray", size: 14.0),
              TextWidget(text: "Quantity: 2", size: 12.0),
              TextWidget(text: "Stock: 5000", size: 14.0),
              CustomRichText(press: (){}, firstText: "Price", secondText: "\$250.2",highlightTextColor: appColor,)
            ],
          ),
          ButtonWidget(text: "Buy", onClicked: (){}, width: 120.0,height: 40.0,)
        ],
      ),
    );
  }
}
