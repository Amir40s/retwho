import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/provider/value_provider.dart';
import 'package:retwho/widgets/text_widget.dart';

class BottomSheetWidget extends StatelessWidget {
   BottomSheetWidget({super.key});

  List accountType = [consumer,wholesale,retail];


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ValueProvider>(context,listen: false);
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
              width: Get.width,
              child: TextWidget(text: "Choose Your Account Type", size: 16.0,textAlignment: TextAlign.center,isBold: true,)),

          const SizedBox(height: 20.0,),
          ListView.separated(
              itemCount: accountType.length,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    provider.setAccountType(accountType[index]);
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextWidget(text: accountType[index], size: 14.0,isBold: true,),
                  ),
                );
              },
              separatorBuilder:  (context,index){
                return const Divider(thickness: 1.0,);
              })

        ],
      ),
    );
  }
}
