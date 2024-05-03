import 'package:flutter/material.dart';

import '../constants.dart';


class ActionContainer{
  Widget actionContainer({ final width,
    required double height,
    required double radius,
    var borderColor,
    final loadingMesasge,
    var icon}){
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: borderColor!=null ? Border.all(color: borderColor,width: 1.0) :  null,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: borderColor!=null ? 0 : 2,
              blurRadius: borderColor!=null ? 0 : 2,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              borderColor!=null ? Colors.white :  firstColorGradient.withOpacity(0.5),
              borderColor!=null ? Colors.white : firstColorGradient
            ],
          )),
      child: Center(child: Icon(icon,color: backgroundColor,)),
    );
  }
}