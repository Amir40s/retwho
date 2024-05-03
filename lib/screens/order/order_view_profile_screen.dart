import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:retwho/images.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/search_icons_widget.dart';

import '../../constants.dart';
import '../../helper/action_container.dart';
import 'order_list_grid_screen.dart';


class OrderViewListScreen extends StatelessWidget {
   OrderViewListScreen({super.key});

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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: _itemBuilder,),
                )),
          ],
        ),
      ),

    );
  }
}

Widget _itemBuilder(BuildContext context, int index) {
  return Container(padding: EdgeInsets.only(top: 5.0,left: 10.0,right: 10.0,bottom: 10.0),
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
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Images.logo_image,height: 60.0,)
          ],),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Preview Screen",style: TextStyle(color: appColor,fontSize: 12.0),),
            const Text("Quantity:2",style: TextStyle(color: Colors.black,fontSize: 12.0),),
            const Text("Stock:500",style: TextStyle(color: Colors.black,fontSize: 12.0),),
            RichText(text: TextSpan(children: [
              TextSpan(text: "Price: ",style: TextStyle(color: Colors.black,fontSize: 12.0),),
              TextSpan(text: "Rs.307.0",style: TextStyle(color: appColor,fontSize: 12.0),),
            ]          ),
            ),
          ],),
        SizedBox(width: 20.0,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(text: TextSpan(children: [
                  TextSpan(text: "-",style: TextStyle(color: Colors.black,fontSize: 25.0),),
                ]),),
                SizedBox(width: 20.0,),
                RichText(text: TextSpan(children: [
                  TextSpan(text: "5",style: TextStyle(color: Colors.black,fontSize: 25.0),),
                ]),),
                SizedBox(width: 20.0,),
                RichText(text: TextSpan(children: [
                  TextSpan(text: "+",style: TextStyle(color: Colors.black,fontSize: 25.0),),
                ]),),
              ],),
            SizedBox(height: 20.0,),
            ButtonWidget(text: "Buy Now", onClicked: (){
               Get.to(OrderListGridScreen());
              }, width: 100.0,height: 30.0,)
          ],
        ),
      ],
    ),
  );
}