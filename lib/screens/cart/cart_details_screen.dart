import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/images.dart';
import 'package:retwho/widgets/button_widget.dart';
import 'package:retwho/widgets/custom_color_textfield.dart';
import 'package:retwho/widgets/search_icons_widget.dart';
import 'package:retwho/widgets/text_widget.dart';
class CartDetailsScreen extends StatelessWidget {
  CartDetailsScreen({super.key});

  var controller =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             SearchIconsWidget(controller: controller, cartPress: (){}, scanPress: (){}),
              SizedBox(height: 20.0,),

              Container(
                padding: EdgeInsets.all(20.0),
                child: Table(
                  children: [
                  TableRow(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(text: "Sold by", size: 14.0),
                          SizedBox(height: 5.0,),
                          TextWidget(text: "Company Name", size: 11.0),
                          TextWidget(text: "Address", size: 11.0),
                          TextWidget(text: "PH", size: 11.0),
                          TextWidget(text: "REP", size: 11.0),
                        ],
                      ),
                      SizedBox(width: 5.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(text: "Sold To", size: 14.0),
                          SizedBox(height: 5.0,),
                          TextWidget(text: "Company Name", size: 11.0),
                          TextWidget(text: "Address", size: 11.0),
                          TextWidget(text: "PH", size: 11.0),
                          TextWidget(text: "REP", size: 11.0),
                        ],
                      ),
                      SizedBox(width: 5.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(text: "Order #", size: 14.0),
                          SizedBox(height: 5.0,),
                          TextWidget(text: "Company Name", size: 11.0),
                          TextWidget(text: "Address", size: 11.0),
                          TextWidget(text: "PH", size: 11.0),
                          TextWidget(text: "REP", size: 11.0),
                        ],
                      ),
                      SizedBox(width: 5.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(text: "Sold by", size: 14.0),
                          SizedBox(height: 5.0,),
                          TextWidget(text: "Company Name", size: 11.0),
                          TextWidget(text: "Address", size: 11.0),
                          TextWidget(text: "PH", size: 11.0),
                          TextWidget(text: "REP", size: 11.0),
                        ],
                      )
                    ]
                  )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),


             Padding(padding: EdgeInsets.all(20.0),

             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Column(
                   children: [
                     TextWidget(text: "Issue Date", size: 14.0, isBold: true,),
                     SizedBox(height: 5.0,),
                     TextWidget(text: "01 jan 2024", size: 12.0),

                     SizedBox(height: 20.0,),
                     TextWidget(text: "Due Date", size: 14.0, isBold: true,),
                     SizedBox(height: 5.0,),
                     TextWidget(text: "01 jan 2024", size: 12.0),
                   ],
                 ),
                 TextWidget(text: "Invoice# 3424232", size: 16.0),
                 Image.asset(Images.logo_image,width: 100.0,height: 100.0,)
               ],
             ),
             ),

              
              SizedBox(height: 20.0,),
              Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                Container(
                padding: EdgeInsets.all(10.0),
                child: Table(
                  columnWidths: {
                    0 : FlexColumnWidth(3),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(1),
                    3: FlexColumnWidth(1),
                  },
                  children: [
                   TableRow(
                     children: [
                       TextWidget(text: "Items", size: 12.0),
                       TextWidget(text: "Cost", size: 12.0),
                       TextWidget(text: "Qty", size: 12.0),
                       TextWidget(text: "Total", size: 12.0),
                     ]
                   )
                  ],
                ),
              ),
                    Divider(),
                    ListView.builder(
                        itemBuilder: _itemsBuilder,
                        shrinkWrap: true,
                        itemCount: 10),
                  ],
                ),
              ),
              
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
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(text: "Discount", size: 14.0),
                        TextWidget(text: "\$20", size: 14.0,isBold: true,),
                      ],
                    ),
                    Divider(),
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
            ],
          ),
        ),
      ),
    );
  }
  Widget _itemsBuilder(BuildContext context,int index){
    return Container(
      padding: EdgeInsets.all(10.0),
      child:
      Table(
        columnWidths: {
          0 : FlexColumnWidth(3),
          1: FlexColumnWidth(2),
          2: FlexColumnWidth(1),
          3: FlexColumnWidth(1),
        },
        children: [
          TableRow(
              children: [
                TextWidget(text: "Design Services", size: 12.0),
                TextWidget(text: "Design Services", size: 12.0),
                TextWidget(text: "1", size: 12.0),
                TextWidget(text: "\$20.0", size: 12.0),
              ]
          )
        ],
      ),

    );
  }
}
