import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/widgets/text_widget.dart';
class Header extends StatelessWidget {
  final String text;
  final VoidCallback press;
  var isCart;
   Header({super.key, required this.text, required this.press,this.isCart = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.width * .3,

      decoration: BoxDecoration(
          color: appColor,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              firstColorGradient.withOpacity(0.5),
             firstColorGradient
            ],
          )),
      padding: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: isCart ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(""),
          Container(
              margin: EdgeInsets.only(left: 10.0),
              child: TextWidget(text: text, size: 20.0,isBold: true,color: Colors.white,)),
          if(isCart)
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
                onTap: press,
                child: Icon(Icons.shopping_cart_outlined,size: 25.0,color: Colors.white,)),
          )
        ],
      ),
    );
  }
}
