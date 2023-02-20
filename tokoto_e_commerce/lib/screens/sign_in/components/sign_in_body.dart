import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/sign_in/components/signin_form.dart';
import 'package:tokoto_e_commerce/components/social_card.dart';
import 'package:tokoto_e_commerce/size_config.dart';

import '../../../components/no_account_text.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const Text(
                'Sign In With Your E-mail and Password \nOr Continue with Social Media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              const SignForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SocialCard(press: () {}, icon: 'assets/icons/google-icon.svg'),
                SocialCard(press: () {}, icon: 'assets/icons/facebook-2.svg'),
                SocialCard(press: () {}, icon: 'assets/icons/twitter.svg'),
              ]),
              SizedBox(height: getProportionateScreenHeight(20)),
              const NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}


