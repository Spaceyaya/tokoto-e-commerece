import 'package:flutter/material.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.img,
    required this.text,
  }) : super(key: key);
  final String img, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        Text(text),
        const Spacer(flex: 2),
        Image.asset(
          img,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
