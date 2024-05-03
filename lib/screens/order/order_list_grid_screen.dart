import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:retwho/images.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/search_icons_widget.dart';

import '../../constants.dart';
import '../../helper/action_container.dart';


class OrderListGridScreen extends StatelessWidget {
  OrderListGridScreen({super.key});

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            SearchIconsWidget(controller: searchController, cartPress: (){}, scanPress: (){}),
            SizedBox(height: 20.0,),
            Expanded(
                child: GridView.builder(
                  itemCount: 30,
                  itemBuilder: _itemBuilder, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),)),
          ],


        ),
      ),

    );
  }
}

Widget _itemBuilder(BuildContext context, int index){
  return Container(
    padding: EdgeInsets.only(top: 5.0,left: 10.0,right: 10.0,bottom: 5.0),
    margin: EdgeInsets.all(3.0),
    width: Get.width,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 5.0,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 45.0,
          child: Image.asset(Images.logo_image,),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Preview Screen",style: TextStyle(color: appColor,fontSize: 14.0),),
                SizedBox(height: 5.0,),
                Text("Quantity:2",style: TextStyle(color: Colors.black,fontSize: 14.0),),
                SizedBox(height: 5.0,),
                RichText(text: TextSpan(children: [
                  TextSpan(text: "Price: ",style: TextStyle(color: Colors.black,fontSize: 14.0),),
                  TextSpan(text: "Rs. 343.0",style: TextStyle(color: appColor,fontSize: 14.0),),
                ])),
              ],),
            Column(
              children: [
                ActionButton(),
              ],
            )
          ],),
      ],),
  );
}
Widget ActionButton(){
  return Container(
    height: 25.0,
    width: 25.0,
    decoration: BoxDecoration(
      color: appColor,
      shape: BoxShape.circle,
    ),
    child: Center(child: Icon(Icons.add,color: backgroundColor,size: 25.0,)),
  );
}
