import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/sign_in/components/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = '/Sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: const CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: SignInBody(),
            ),
          ],
        ));
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Sign In',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      centerTitle: true,
    );
  }
}
