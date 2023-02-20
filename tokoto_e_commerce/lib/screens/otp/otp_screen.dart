import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/otp/components/otp_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static String routeName = '/otp_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: OtpBody(),
          )
        ],
      ),
    );
  }
}

AppBar appBar() {
  return AppBar(
    title: const Text(
      'OTP Verification',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
    ),
    centerTitle: true,
  );
}
