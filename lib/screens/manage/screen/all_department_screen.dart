import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/images.dart';
import 'package:retwho/routes/routes_name.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/custom_searchbar.dart';
import 'package:retwho/widgets/header.dart';
import 'package:retwho/widgets/search_icons_widget.dart';
import 'package:retwho/widgets/text_widget.dart';
class AllDepartmentScreen extends StatelessWidget {
   AllDepartmentScreen({super.key});

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(text: "All Departments", press: (){}),
            SizedBox(height: 10.0,),
            SearchIconsWidget(controller: searchController, cartPress: (){}, scanPress: (){}),
            SizedBox(height: 20.0,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ButtonWidget(text: "Add Department", onClicked: (){
                    Get.toNamed(RoutesName.addDepartment);
                  }, width: Get.width),

                  SizedBox(height: 20.0,),
                  CustomSearchBar(controller: searchController),

                  SizedBox(height: 20.0,),
                  Container(
                    height: Get.width * 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white,width: 1.0),
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
                    child: ListView.separated(
                      itemCount: 10,
                        shrinkWrap: true,
                        itemBuilder: _itemsBuilder,
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(color: Colors.grey,);
                      },
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
  Widget _itemsBuilder(BuildContext context,int index){
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: Get.width/3,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(Images.logo_image),
            )
        ),
        Container(
          width: Get.width /1.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(text: "Department Categories", size: 14.0,color: Colors.grey,),
                TextWidget(text: "Hello", size: 14.0,color: Colors.grey,isBold: true,),

                SizedBox(height: 20.0,),
                TextWidget(text: "Department ID", size: 14.0,color: Colors.grey,),
                TextWidget(text: "38724638276", size: 14.0,color: Colors.grey,isBold: true,)
              ],
            )
        )
      ],
    ),
    );
  }
}
