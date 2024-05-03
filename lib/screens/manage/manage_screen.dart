import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/provider/value_provider.dart';
import 'package:retwho/routes/routes_name.dart';
import 'package:retwho/widgets/custom_container_box.dart';
import 'package:retwho/widgets/header.dart';
class ManageScreen extends StatelessWidget {
  const ManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
    body: SingleChildScrollView(
      child: Column(
        children: [
          Header(text: "Manage", press: (){}),

          SizedBox(height: 20.0,),
          Consumer<ValueProvider>(
           builder: (context,provider, child){
             return Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                 children: [
                   CustomContainerBox(press: (){
                     if(provider.isDepartment){
                       provider.setDepartment(false);
                     }else{
                       provider.setDepartment(true);
                     }
                   },text: "Departments",isPrefix: true,
                     postFixIcon: provider.isDepartment ?
                     Icons.keyboard_arrow_up_rounded :
                     Icons.keyboard_arrow_down_rounded,),
                   SizedBox(height: 10.0),
                   if(provider.isDepartment)
                   CustomContainerBox(press: (){
                     Get.toNamed(RoutesName.addDepartment);
                   },text: "ADD DEPARTMENTS",isPostFix: false,bottomLeft: 0.0,bottomRight: 0.0),
                   if(provider.isDepartment)
                   CustomContainerBox(press: (){
                     Get.toNamed(RoutesName.allDepartment);
                   },text: "ALL DEPARTMENTS",isPostFix: false,topLeft: 0.0,topRight: 0.0),

                   SizedBox(height: 10.0),
                   CustomContainerBox(press: (){
                     if(provider.isProduct){
                       provider.setProduct(false);
                     }else{
                       provider.setProduct(true);
                     }
                   },text: "Products",isPrefix: true,
                       postFixIcon: provider.isProduct ?
                       Icons.keyboard_arrow_up_rounded :
                       Icons.keyboard_arrow_down_rounded),
                   SizedBox(height: 10.0),
                   if(provider.isProduct)
                   CustomContainerBox(press: (){
                     Get.toNamed(RoutesName.addProducts);
                   },text: "ADD PRODUCTS",isPostFix: false,bottomLeft: 0.0,bottomRight: 0.0),
                   if(provider.isProduct)
                   CustomContainerBox(press: (){
                     Get.toNamed(RoutesName.allProducts);
                   },text: "MANAGE PRODUCTS",isPostFix: false,topLeft: 0.0,topRight: 0.0),

                   SizedBox(height: 10.0),
                   CustomContainerBox(press: (){
                     Get.toNamed(RoutesName.orderManage);
                   },text: "Manage Orders",isPostFix: false,isPrefix: true,topLeft: 0.0,topRight: 0.0),
                 ],
               ),
             );
           },
          )
        ],
      ),
    ),
    );
  }
}
