import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/images.dart';
import 'package:retwho/routes/routes_name.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/custom_icon.dart';
import 'package:retwho/widgets/custom_searchbar.dart';
import 'package:retwho/widgets/text_widget.dart';

import 'components/dashboard_header.dart';
class DashboardScreen extends StatelessWidget {
   DashboardScreen({super.key});

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                DashboardHeader(),
                SizedBox(height: 20.0,),
                
                Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: CustomSearchBar(controller: searchController)),
                    SizedBox(width: 5.0,),
                    Expanded(
                        flex: 1,
                        child: GestureDetector(
                            onTap: (){
                              Get.dialog(Container(
                                width: Get.width,
                                height: 300.0,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20.0),
                                 color: Colors.white,
                               ),
                                margin: EdgeInsets.only(left: 40.0,right: 40.0,top: Get.width * .1,bottom: Get.width*1.29),
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       TextWidget(text: "", size: 12.0),
                                       Icon(Icons.close,color: appColor,)
                                     ],
                                   ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                       Container(
                                           padding: EdgeInsets.all(5.0),
                                           child: Image.asset(MyIcons.ic_scan,width: 30,height: 30,color: appColor,)),
                                        SizedBox(width: 10.0,),
                                        TextWidget(text: "SCAN", size: 12.0,color: appColor,),
                                      ],
                                    ),
                                    Divider(color: appColor,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                            padding: EdgeInsets.all(5.0),
                                            child: Image.asset(MyIcons.ic_cart,width: 30,height: 30,color: appColor,)),
                                        SizedBox(width: 10.0,),
                                        GestureDetector(
                                            onTap: (){
                                            Get.toNamed(RoutesName.cartScreen);
                                            },
                                            child: TextWidget(text: "Cart", size: 12.0,color: appColor,)),
                                      ],
                                    ),
                                    Divider(color: appColor,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.all(5.0),
                                            child: Image.asset(MyIcons.ic_box,width: 30,height: 30,color: appColor,)),
                                        SizedBox(width: 10.0,),
                                        TextWidget(text: "Filter By Day", size: 12.0,color: appColor,),
                                      ],
                                    ),
                                  ],
                                ),
                              ));
                            },
                            child: CustomIcon(icons: MyIcons.ic_pins)))
                  ],
                ),
                SizedBox(height: 20.0,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ButtonWidget(text: "Total Order", onClicked: (){}, width: 100.0),
                        SizedBox(width: 10.0,),
                        ButtonWidget(text: "WholeSale", onClicked: (){}, width: 100.0,borderColor: backgroundColor,textColor: shadeBlack,),
                        SizedBox(width: 10.0,),
                        ButtonWidget(text: "Gross Income", onClicked: (){}, width: 120.0,borderColor: backgroundColor,textColor: shadeBlack,),                        SizedBox(width: 5.0,),
                        SizedBox(width: 10.0,),
                        ButtonWidget(text: "Gross Income", onClicked: (){}, width: 120.0,borderColor: backgroundColor,textColor: shadeBlack,radius: 20.0,),                      ],
                    ),
                  ),
                ),
                
                SizedBox(height: 20.0,),
                Image.asset(Images.graph_image,width: Get.width,height: 250.0,fit: BoxFit.fill,),
                SizedBox(height: 10.0,),
                Image.asset(Images.graph_image,width: Get.width,height: 250.0,fit: BoxFit.fill,),
                SizedBox(height: 10.0,),
                Container(
                  width: Get.width,
                    color: Colors.white,
                    child: Image.asset(Images.pie_image,width: Get.width,height: 450.0,fit: BoxFit.fill,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
