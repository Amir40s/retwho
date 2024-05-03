import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../provider/value_provider.dart';


class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  var backgroundColor;
  final width;
  double height;
  double radius;
  var textColor;
   var borderColor;
   final loadingMesasge;
   ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
    this.backgroundColor,
     this.textColor = Colors.white,
     this.borderColor,
    required this.width,
  this.height = 55.0,
     this.radius = 20.0, this.loadingMesasge = "loading"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>

      Consumer<ValueProvider>(
        builder: (context,provider,child){
          return
            provider.isLoading == false ?
            InkWell(
            onTap: onClicked,
            child: Container(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style:  TextStyle(fontSize: 14, color: textColor,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )  :   Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              border: borderColor!=null ? Border.all(color: Colors.white,width: 1.0) :  Border.all(color: appColor),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                appColor,
                lightGrey,
              ],
            )
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator.adaptive(),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '$loadingMesasge, please wait',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      );
}