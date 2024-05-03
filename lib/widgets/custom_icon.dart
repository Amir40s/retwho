import 'package:flutter/material.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/images.dart';
class CustomIcon extends StatelessWidget {
  final String icons;
  const CustomIcon({super.key, required this.icons});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color:appColor,
      ),
      child: Image.asset(icons,width: 20.0,height: 20.0,color: Colors.white,),
    );
  }
}
