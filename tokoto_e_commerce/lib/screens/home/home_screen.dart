import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/components/custom_navigation_bar.dart';
import 'package:tokoto_e_commerce/enums.dart';
import 'package:tokoto_e_commerce/screens/home/components/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home_screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  HomeScreenBody(),
      bottomNavigationBar: CustomButtomNavigationBar(selectedMenu: MenuState.Home),
    );
  }
}
