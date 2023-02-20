import 'package:flutter/material.dart';

import 'package:tokoto_e_commerce/consts.dart';
import 'package:tokoto_e_commerce/size_config.dart';

import 'otp_form.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(children: [
          SizedBox(height: SizeConfig.screenHeight * 0.05),
          Text(
            'OTP Verification',
            style: headLineStyle,
          ),
          const Text(
            'We sent your code to +1 898 860 ***',
            style: TextStyle(fontSize: 16),
          ),
          buildTimer(),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          const OtpForm(),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          GestureDetector(
            onTap: () {
              // Resend OTP code
            },
            child: const Text('Resend OTP code',
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 15)),
          ),
        ]),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will expired in'),
        TweenAnimationBuilder<double>(
            tween: Tween(begin: 30.0, end: 0),
            duration: const Duration(seconds: 30),
            builder: (context, dynamic value, child) => Text(
                ' 00:${value.toInt()}',
                style: const TextStyle(color: kPrimaryColor, fontSize: 16))),
      ],
    );
  }
}
