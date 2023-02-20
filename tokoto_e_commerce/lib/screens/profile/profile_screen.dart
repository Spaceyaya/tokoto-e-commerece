import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokoto_e_commerce/consts.dart';
import 'package:tokoto_e_commerce/enums.dart';
import 'package:tokoto_e_commerce/screens/home/home_screen.dart';
import 'package:tokoto_e_commerce/screens/profile/components/body.dart';

import '../../components/custom_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const ProfileScreenBody(),
      bottomNavigationBar: const CustomButtomNavigationBar(
        selectedMenu: MenuState.Profile,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Profile',
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: const Icon(Icons.arrow_back),
      centerTitle: true,
    );
  }
}

