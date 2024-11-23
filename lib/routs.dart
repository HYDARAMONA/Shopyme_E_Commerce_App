import 'package:e_commerce/screens/cart/cart_screen.dart';
import 'package:e_commerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce/screens/forgotPassword/forgot_pass_screen.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/screens/otp/otp_screen.dart';
import 'package:e_commerce/screens/productDetails/product_details_screen.dart';
import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:e_commerce/screens/signIn/signin_screen.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:e_commerce/screens/signUp/signup_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
