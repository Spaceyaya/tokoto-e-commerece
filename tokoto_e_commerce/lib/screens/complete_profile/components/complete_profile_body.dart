import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/size_config.dart';
import '../../../consts.dart';
import 'complete_profile_form.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          Text(
            'Complete Profile',
            style: headLineStyle,
          ),
          const Text(
            'Complete your details or continue \nwith social media',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.05,
          ),
          const CompleteProfileForm(),
          SizedBox(height: getProportionateScreenHeight(30)),
          const Text(
            'Complete your details or continue \nwith social media',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
