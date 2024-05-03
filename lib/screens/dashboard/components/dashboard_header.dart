import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/images.dart';
import 'package:retwho/routes/routes_name.dart';
import 'package:retwho/widgets/text_widget.dart';
class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image.asset(MyIcons.ic_invoice,width: 25,height: 25,),
            SizedBox(height: 5.0,),
            GestureDetector(
                onTap: (){
                  Get.toNamed(RoutesName.orderScreen);
                },
                child: TextWidget(text: 'Order Now', size: 14.0,isBold: true,))
          ],
        ),

        Icon((Icons.notifications),color: appColor,)
      ],
    );
  }
}
