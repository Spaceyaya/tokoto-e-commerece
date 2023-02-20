import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/screens/complete_profile/complete_profile.dart';
import 'package:tokoto_e_commerce/screens/details_screen.dart/details_screen.dart';
import 'package:tokoto_e_commerce/screens/fogot_password/forgot_password.dart';
import 'package:tokoto_e_commerce/screens/home/home_screen.dart';
import 'package:tokoto_e_commerce/screens/login_success/login_success.dart';
import 'package:tokoto_e_commerce/screens/otp/otp_screen.dart';
import 'package:tokoto_e_commerce/screens/profile/profile_screen.dart';
import 'package:tokoto_e_commerce/screens/sign_in/sign_in_screen.dart';
import 'package:tokoto_e_commerce/screens/signup_screen/signup_screen.dart';
import 'package:tokoto_e_commerce/screens/splash/splash_screen.dart';

import 'screens/cart/cart_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfile.routeName: (context) => const CompleteProfile(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
