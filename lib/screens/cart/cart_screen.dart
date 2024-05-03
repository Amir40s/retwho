import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/images.dart';
import 'package:retwho/routes/routes_name.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/custom_color_textfield.dart';
import 'package:retwho/widgets/text_widget.dart';
class CartScreen extends StatelessWidget {
   CartScreen({super.key});

  var controller =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back,size: 24,color: Colors.black,),
                    TextWidget(text: "Cart", size: 18.0,isBold: true,),
                    Icon(Icons.shopping_cart,size: 24,color: Colors.black,),

                  ],
                ),
              ),
              Container(
                width: Get.width,
                padding: EdgeInsets.all(5.0),
                color: Colors.grey.shade200,
                child: TextWidget(text: "3 items",size: 12.0,textAlignment: TextAlign.center,),
              ),
              SizedBox(height: 20.0,),
              ListView.separated(
                  itemBuilder: _itemsBuilder,
                  shrinkWrap: true,
                  separatorBuilder: (context,index){
                    return Divider(color: Colors.grey);
                  }, 
                  itemCount: 3),
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(text: "Subtotal", size: 14.0),
                        TextWidget(text: "\$100", size: 14.0,isBold: true,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(text: "Discount", size: 14.0),
                        TextWidget(text: "\$20", size: 14.0,isBold: true,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(text: "Total", size: 14.0),
                        TextWidget(text: "\$100", size: 14.0,isBold: true,),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.0,),
              Container(
                width: Get.width,
                color: Colors.grey.shade100,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: Get.width,
                        child: TextWidget(text: "Payment Method", size: 14.0)),
                    SizedBox(height: 10.0,),
                    Container(
                        height: 50,
                        child: CustomColorTextField(hintText: "Cash", controller: controller, errorMessage: "errorMessage",isFillTransparent: true,))
                  
                  ,SizedBox(height: 50.0,),
                    ButtonWidget(text: "Submit Order", onClicked: (){
                      Get.toNamed(RoutesName.cartDetailsScreen);
                    }, width: Get.width),
                    SizedBox(height: 10.0,),
                    ButtonWidget(text: "Continue Shopping", onClicked: (){}, width: Get.width, borderColor: appColor,textColor: appColor,)
                  
                  
                  
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget _itemsBuilder(BuildContext context,int index){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(Images.demo_product,width: 70,height: 70,),
          TextWidget(text: "Design Services", size: 12.0),
          TextWidget(text: "1", size: 12.0),
          TextWidget(text: "\$20.0", size: 12.0),
        ],
      ),
    );
  }
}
