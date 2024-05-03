import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retwho/images.dart';
import 'package:retwho/widgets/text_widget.dart';
class CustomContainerBox extends StatelessWidget {
  final String text;
   bool isPrefix,isPostFix;
   var topLeft,topRight,bottomLeft,bottomRight;
   var postFixIcon,prefixIcon;
   final VoidCallback press;
   CustomContainerBox({super.key, required this.text,this.isPrefix = false,this.isPostFix = true,
     this.topLeft = 10.0,this.topRight = 10.0,
     this.bottomLeft = 10.0,this.bottomRight = 10.0,
     this.postFixIcon = Icons.keyboard_arrow_down_rounded,
     this.prefixIcon = MyIcons.ic_box, required this.press
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: Get.width,
        margin: EdgeInsets.only(left: 10.0,right: 10.0),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: isPrefix ? BorderRadius.circular(10.0) :  BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            topRight: Radius.circular(topRight),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),

          ),
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
        child: Row(
          mainAxisAlignment: isPrefix ?  MainAxisAlignment.spaceBetween :  MainAxisAlignment.center,
          children: [
           Row(
             children: [
               if(isPrefix)
               Image.asset(prefixIcon,width: 20,height: 20,color: Colors.black,),
               SizedBox(width: 10.0,),
               TextWidget(text: text, size: 14.0,color: Colors.black,isBold: true,),
             ],
           ),
            if(isPostFix)
           Container(
               margin: EdgeInsets.only(right: 10.0),
               child: Icon(postFixIcon,size: 24.0,))

          ],
        ),
      ),
    );
  }
}
