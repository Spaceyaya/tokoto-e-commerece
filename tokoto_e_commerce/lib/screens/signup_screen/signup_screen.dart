import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/signup_screen/components/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = '/signup_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: const CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: SignUpBody(),
            )
          ],
        ));
  }
}

AppBar appBar() {
  return AppBar(
    title: const Text(
      'Sign Up',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
    centerTitle: true,
  );
}
