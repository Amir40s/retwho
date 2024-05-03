import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:retwho/widgets/text_widget.dart';

class CustomTextImage extends StatelessWidget {
  final String value,text;
  final VoidCallback press;
  var icons;
   CustomTextImage({super.key, required this.value, required this.text, required this.press, this.icons});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: text, size: 14.0,color: Colors.black,isBold: true,),
             icons !=null ? Icon(icons) : Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.cloud_upload),
                    SizedBox(width: 5.0,),
                    TextWidget(text: "Upload Image", size: 14.0,color: Colors.black,isBold: true,),
                  ],
                ),
              )
            ],
          ),
          TextWidget(text: value, size: 14.0,color: Colors.black,isBold: true,),

          Container(
            width: Get.width,
            height: 1,
            margin: EdgeInsets.only(top: 5.0),
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
