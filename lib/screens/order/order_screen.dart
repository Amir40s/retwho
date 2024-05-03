import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retwho/routes/routes_name.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/search_icons_widget.dart';

import '../../../../constants.dart';
import '../../../../helper/action_container.dart';
import '../../../../images.dart';

class OrderScreen extends StatelessWidget {
   OrderScreen({super.key});

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
  Widget _itemBuilder(BuildContext context, int index){
    return Container(
      padding: EdgeInsets.only(top: 5.0,left: 10.0,right: 10.0,bottom: 10.0),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.menu,color: Colors.black,size: 20.0,)
            ],),
          CircleAvatar(
            backgroundColor: backgroundColor,
            radius: 35.0,
            child: Image.asset(Images.logo_image,fit: BoxFit.fill,),),
          Text("Quick Food Mart\nLLC",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12.0),),
          ButtonWidget(text: "View Profile", onClicked: (){
             Get.toNamed(RoutesName.orderViewListProducts);
            }, width: 100.0,height: 30.0,),
        ],),
    );
  }
}