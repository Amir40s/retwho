import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retwho/screens/dashboard/dashboard_screen.dart';
import 'package:retwho/screens/login/login_screen.dart';
import 'package:retwho/screens/manage/manage_screen.dart';
import 'package:retwho/screens/promotion/promotion_screen.dart';
import 'package:retwho/screens/report/report_screen.dart';
import 'package:retwho/screens/setting/setting_screen.dart';

import '../../constants.dart';
import '../../images.dart';
import '../../provider/bottom_nav_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavProvider>(context);

    final List<Widget> screens = [
      DashboardScreen(),
      ReportScreen(),
      PromotionScreen(),
      ManageScreen(),
      SettingScreen(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: appColor,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.updateIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(MyIcons.ic_home,width: 24.0,height: 24.0,color: Colors.grey,),
            activeIcon: Image.asset(MyIcons.ic_home,width: 24.0,height: 24.0,color: appColor,),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(MyIcons.ic_report,width: 24.0,height: 24.0,color: Colors.grey),
            activeIcon: Image.asset(MyIcons.ic_report,width: 24.0,height: 24.0,color: appColor,),
            label: "Report",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(MyIcons.ic_promotion,width: 24.0,height: 24.0,color: Colors.grey),
            activeIcon: Image.asset(MyIcons.ic_promotion,width: 24.0,height: 24.0,color: appColor,),
            label: "Promotion",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(MyIcons.ic_manage,width: 24.0,height: 24.0,color: Colors.grey),
            activeIcon: Image.asset(MyIcons.ic_manage,width: 24.0,height: 24.0,color: appColor,),
            label: "Manage",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(MyIcons.ic_setting,width: 24.0,height: 24.0,color: Colors.grey),
            activeIcon: Image.asset(MyIcons.ic_setting,width: 24.0,height: 24.0,color: appColor,),
            label: "Setting",
          ),
        ],
      ),
      body: screens[provider.currentIndex],
    );
  }
}
