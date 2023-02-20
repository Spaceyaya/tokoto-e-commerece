import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/sign_in/sign_in_screen.dart';
import 'package:tokoto_e_commerce/screens/splash/components/splash_content.dart';
import 'package:tokoto_e_commerce/consts.dart';
import 'package:tokoto_e_commerce/size_config.dart';

import '../../../components/deafault_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, dynamic>> splashData = [
    {
      'img': 'assets/images/splash_1.png',
      'text': 'Welcome To Tokoto , Let\'s Shop!'
    },
    {
      'img': 'assets/images/splash_2.png',
      'text':
          'We Help Pepole Connect With Store \naround United States Of America'
    },
    {
      'img': 'assets/images/splash_3.png',
      'text': 'We Show The Easy Way To Shop \n Just Stay At Home With Us'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  img: splashData[index]['img'],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : const Color(0xffd8d8d8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
