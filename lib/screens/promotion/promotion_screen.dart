import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/widgets/header.dart';
import 'package:retwho/widgets/text_widget.dart';
class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(text: "Promotion", press: (){}),

            Container(
              height: Get.height/1.3,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 8.0, // spacing between rows
                  crossAxisSpacing: 8.0, // spacing between columns
                ),
                padding: EdgeInsets.all(8.0), // padding around the grid
                itemCount: 10, // total number of items
                shrinkWrap: true,
                itemBuilder: _itemsBuilder
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _itemsBuilder(BuildContext context,int index){
    return Container(
      width: 100.0,
      height: 100.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: shadeBlack,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.home,color: Colors.deepOrange,),
          SizedBox(height: 10.0,),
          TextWidget(text: "Search Engine Optimization", size: 16.0,color: Colors.white,textAlignment: TextAlign.center,),
          SizedBox(height: 10.0,),
          TextWidget(text: "learn more", size: 12.0,color: Colors.red,)
        ],
      ),

    );
  }
}
