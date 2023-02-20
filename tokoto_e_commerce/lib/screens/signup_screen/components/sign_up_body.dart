import 'package:flutter/material.dart';

import 'package:tokoto_e_commerce/consts.dart';
import 'package:tokoto_e_commerce/components/social_card.dart';

import 'package:tokoto_e_commerce/screens/signup_screen/components/signup_form.dart';
import 'package:tokoto_e_commerce/size_config.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Text(
              'Register Account',
              style: headLineStyle,
            ),
            const Text(
              'Complete your details or continue \nwith social media',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.07,
            ),
            const SignUpForm(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(press: () {}, icon: 'assets/icons/google-icon.svg'),
                SocialCard(press: () {}, icon: 'assets/icons/facebook-2.svg'),
                SocialCard(press: () {}, icon: 'assets/icons/twitter.svg'),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const Text(
              'By continue your confirmatio that you agree \nyour terms and conditions',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
