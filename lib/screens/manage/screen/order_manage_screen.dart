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
class OrderManageScreen extends StatelessWidget {
  OrderManageScreen({super.key});

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(text: "Order Manage", press: (){}),
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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextWidget(text: "IN_NO", size: 14.0,color: Colors.blue,),
                          TextWidget(text: "RETAILER", size: 14.0,color: Colors.black,),
                          TextWidget(text: "WHOLESALER", size: 14.0,color: Colors.black,)
                        ],
                      ),
                                        ),
                          SizedBox(height: 10.0,),
                          Divider(color: Colors.grey,),
                          Container(
                            height: Get.height/2,
                            child: ListView.separated(
                              itemCount: 10,
                                shrinkWrap: true,
                                itemBuilder: _itemsBuilder,
                              separatorBuilder: (BuildContext context, int index) {
                                return Divider(color: Colors.grey,);
                              },
                            ),
                          ),
                        ],
                      ),
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextWidget(text: "R-3545", size: 14.0,color: Colors.blue,),
        TextWidget(text: "Xpress Food LLX", size: 14.0,color: Colors.black,),
        TextWidget(text: "ZOYA WHOLESALE", size: 14.0,color: Colors.black,)
      ],
    ),
    );
  }
}
