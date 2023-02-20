import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/otp/otp_screen.dart';

import '../../../components/deafault_button.dart';
import '../../../consts.dart';
import '../../../size_config.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/form_error.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  String? firstName;
  String? lastName;
  String? mobileNumber;
  String? adress;
  final List<String> errors = [];
  final _formKey = GlobalKey<FormState>();

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameForm(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildLastNameForm(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneNumberForm(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildAdressForm(),
          FormErrors(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
              text: 'Confirm',
              press: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildAdressForm() {
    return TextFormField(
      onSaved: (newValue) => adress = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            removeError(error: kAddressNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            addError(error: kAddressNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: ' Enter your adress',
        labelText: 'Adress',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Location point.svg',
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberForm() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => mobileNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            removeError(error: kPhoneNumberNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            addError(error: kPhoneNumberNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: ' Enter your phone number',
        labelText: 'Phone Nmber',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Phone.svg',
        ),
      ),
    );
  }

  TextFormField buildLastNameForm() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            removeError(error: kNamelNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            addError(error: kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: ' Enter your last name',
        labelText: 'Last Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }

  TextFormField buildFirstNameForm() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            removeError(error: kNamelNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            addError(error: kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: ' Enter your first name',
        labelText: 'First Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }
}
