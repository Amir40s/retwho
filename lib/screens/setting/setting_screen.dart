import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/images.dart';
import 'package:retwho/routes/routes_name.dart';
import 'package:retwho/widgets/header.dart';

import '../../widgets/custom_container_box.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Header(text: "Setting", press: (){}),

          SizedBox(height: 20.0,),
          CustomContainerBox(press: (){
            Get.toNamed(RoutesName.profileScreen);
          },text: "View Profile",prefixIcon: MyIcons.ic_person,isPostFix: false,isPrefix: true),
          SizedBox(height: 10.0,),
          CustomContainerBox(press: (){},text: "Subscription",prefixIcon: MyIcons.ic_subscription,isPostFix: false,isPrefix: true),
          SizedBox(height: 10.0,),
          CustomContainerBox(press: (){},text: "Contact",prefixIcon: MyIcons.ic_contact,isPostFix: false,isPrefix: true),
          SizedBox(height: 10.0,),
          CustomContainerBox(press: (){},text: "Top News",prefixIcon: MyIcons.ic_news,isPostFix: false,isPrefix: true),
          SizedBox(height: 10.0,),
          CustomContainerBox(press: (){},text: "Logout",prefixIcon: MyIcons.ic_logout,isPostFix: false,isPrefix: true),
        ],
      ),
    );
  }
}
