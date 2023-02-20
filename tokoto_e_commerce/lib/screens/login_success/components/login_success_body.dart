import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/components/deafault_button.dart';
import 'package:tokoto_e_commerce/screens/home/home_screen.dart';
import 'package:tokoto_e_commerce/size_config.dart';

class LoginSuccessBody extends StatelessWidget {
  const LoginSuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset('assets/images/success.png',
            height: SizeConfig.screenHeight * 0.4),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          'Login Success',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(30), color: Colors.black),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
              text: 'Back to home',
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              }),
        ),
        const Spacer(),
      ],
    );
  }
}
