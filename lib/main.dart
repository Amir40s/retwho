import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:retwho/constants.dart';
import 'package:retwho/provider/bottom_nav_provider.dart';
import 'package:retwho/provider/value_provider.dart';
import 'package:retwho/routes/routes.dart';
import 'package:retwho/routes/routes_name.dart';
import 'package:retwho/start/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ValueProvider()),
          ChangeNotifierProvider(create: (_) => BottomNavProvider()),
        ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RetWho',
        theme: ThemeData(
          primaryColor: appColor,
          useMaterial3: true,
          colorScheme: ColorScheme.light(primary: appColor)
        ),
        initialRoute: RoutesName.splashScreen,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}

