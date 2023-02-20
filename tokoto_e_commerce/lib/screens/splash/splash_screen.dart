import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/splash/components/body.dart';
import 'package:tokoto_e_commerce/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
