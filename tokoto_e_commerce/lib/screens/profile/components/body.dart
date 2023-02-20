import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/profile/components/profile_menu.dart';
import 'package:tokoto_e_commerce/screens/profile/components/profile_pic.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePic(),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(
          press: () {},
          icon: 'assets/icons/User Icon.svg',
          text: 'My Account',
        ),
        ProfileMenu(
          press: () {},
          icon: 'assets/icons/Bell.svg',
          text: 'Notificcation',
        ),
        ProfileMenu(
          press: () {},
          icon: 'assets/icons/Settings.svg',
          text: 'Settings',
        ),
        ProfileMenu(
          press: () {},
          icon: 'assets/icons/Question mark.svg',
          text: 'Help Center',
        ),
        ProfileMenu(
          press: () {},
          icon: 'assets/icons/Log out.svg',
          text: 'Log Out',
        ),
      ],
    );
  }
}
