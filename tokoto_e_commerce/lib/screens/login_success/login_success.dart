import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/login_success/components/login_success_body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = '/login_success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const LoginSuccessBody(),
    );
  }
}

AppBar appBar() {
  return AppBar(
    leading: const SizedBox(),
    title: const Text(
      'Login Success',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),
    centerTitle: true,
  );
}
