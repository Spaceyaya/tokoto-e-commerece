import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/complete_profile/components/complete_profile_body.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({Key? key}) : super(key: key);
  static String routeName = '/complete_profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: const CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: CompleteProfileBody(),
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
