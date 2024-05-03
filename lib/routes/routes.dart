import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retwho/routes/routes_name.dart';
import 'package:retwho/screens/cart/cart_details_screen.dart';
import 'package:retwho/screens/cart/cart_screen.dart';
import 'package:retwho/screens/login/login_screen.dart';
import 'package:retwho/screens/manage/screen/add_department_screen.dart';
import 'package:retwho/screens/manage/screen/add_product_screen.dart';
import 'package:retwho/screens/manage/screen/all_department_screen.dart';
import 'package:retwho/screens/manage/screen/all_product_screen.dart';
import 'package:retwho/screens/manage/screen/order_manage_screen.dart';
import 'package:retwho/screens/order/order_view_profile_screen.dart';
import 'package:retwho/screens/setting/screens/profile_screen.dart';
import 'package:retwho/screens/singup/singup_process_screen.dart';

import '../screens/home_screen/home_screen.dart';
import '../screens/order/order_list_grid_screen.dart';
import '../screens/order/order_screen.dart';
import '../screens/singup/signup_screen.dart';
import '../start/splash_screen.dart';


class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) =>  const SplashScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) =>  LoginScreen());
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (context) =>  SignUpScreen());
      case RoutesName.signUpProcess:
        return MaterialPageRoute(builder: (context) =>  SignUpProcessScreen());
      case RoutesName.dashboard:
        return MaterialPageRoute(builder: (context) =>  HomeScreen());
      case RoutesName.profileScreen:
        return MaterialPageRoute(builder: (context) =>  ProfileScreen());
      case RoutesName.addDepartment:
        return MaterialPageRoute(builder: (context) =>  AddDepartmentScreen());
      case RoutesName.allDepartment:
        return MaterialPageRoute(builder: (context) =>  AllDepartmentScreen());
      case RoutesName.addProducts:
        return MaterialPageRoute(builder: (context) =>  AddProductScreen());
      case RoutesName.allProducts:
        return MaterialPageRoute(builder: (context) =>  AllProductsScreen());
      case RoutesName.orderManage:
        return MaterialPageRoute(builder: (context) =>  OrderManageScreen());
      case RoutesName.orderScreen:
        return MaterialPageRoute(builder: (context) =>  OrderScreen());
      case RoutesName.orderViewListProducts:
        return MaterialPageRoute(builder: (context) =>  OrderViewListScreen());
      case RoutesName.orderListGridScreen:
        return MaterialPageRoute(builder: (context) =>  OrderListGridScreen());
      case RoutesName.cartScreen:
        return MaterialPageRoute(builder: (context) =>  CartScreen());
      case RoutesName.cartDetailsScreen:
        return MaterialPageRoute(builder: (context) =>  CartDetailsScreen());

      default :
        return  MaterialPageRoute(builder: (context) => const  SplashScreen());
    }
  }
}