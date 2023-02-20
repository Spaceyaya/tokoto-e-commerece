import 'package:flutter/material.dart';

import '../../../components/deafault_button.dart';
import '../../../consts.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNod, pin3FocusNod, pin4FocusNod;
  @override
  void initState() {
    super.initState();
    pin2FocusNod = FocusNode();
    pin3FocusNod = FocusNode();
    pin4FocusNod = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNod!.dispose();
    pin3FocusNod!.dispose();
    pin4FocusNod!.dispose();
    super.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin2FocusNod);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin2FocusNod,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin3FocusNod);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin3FocusNod,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin4FocusNod);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin4FocusNod,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  pin4FocusNod!.unfocus();
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.15,
        ),
        DefaultButton(text: 'Continue', press: () {}),
      ],
    ));
  }
}
