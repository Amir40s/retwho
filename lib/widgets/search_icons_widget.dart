import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:retwho/widgets/header.dart';

import '../images.dart';
import 'custom_icon.dart';
import 'custom_searchbar.dart';
class SearchIconsWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback cartPress,scanPress;
 const  SearchIconsWidget({super.key, required this.controller, required this.cartPress, required this.scanPress});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 20.0,),
        Expanded(
            flex: 2,
            child: CustomSearchBar(controller: controller,)),
        Expanded(child:
        Row(
          children: [
            SizedBox(width: 5.0,),
            GestureDetector(
                onTap: cartPress,
                child: CustomIcon(icons: MyIcons.ic_cart,)),
            SizedBox(width: 5.0,),
            GestureDetector(
                onTap: scanPress,
                child: CustomIcon(icons: MyIcons.ic_scan,))
          ],
        )),
      ],
    );
  }
}
