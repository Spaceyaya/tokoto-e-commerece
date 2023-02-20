import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/route.dart';
import 'package:tokoto_e_commerce/screens/splash/splash_screen.dart';
import 'package:tokoto_e_commerce/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
