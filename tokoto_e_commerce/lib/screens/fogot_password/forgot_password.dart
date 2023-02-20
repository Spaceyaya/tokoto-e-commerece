import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/fogot_password/components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = '/forgot_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: ForGotPasswordBody(),
          )
        ],
      ),
    );
  }
}

AppBar appBar() {
  return AppBar(
    title: const Text(
      'Forgot Password',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),
    centerTitle: true,
  );
}
