import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/components/deafault_button.dart';
import 'package:tokoto_e_commerce/components/form_error.dart';
import 'package:tokoto_e_commerce/components/no_account_text.dart';
import 'package:tokoto_e_commerce/size_config.dart';

import '../../../consts.dart';
import '../../../components/custom_suffix_icon.dart';

class ForGotPasswordBody extends StatelessWidget {
  const ForGotPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          Text(
            'Forgot Password',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(28),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Please enter you email and we will send \n you a link to return to your account',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          const ForgotFormPass(),
        ],
      ),
    );
  }
}

class ForgotFormPass extends StatefulWidget {
  const ForgotFormPass({Key? key}) : super(key: key);

  @override
  State<ForgotFormPass> createState() => _ForgotFormPassState();
}

class _ForgotFormPassState extends State<ForgotFormPass> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Enter your email',
              labelText: 'Email',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: 'assets/icons/Mail.svg',
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormErrors(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState!.validate()) {
                  // do what you want to do
                }
              }),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          const NoAccountText(),
        ],
      ),
    );
  }
}
