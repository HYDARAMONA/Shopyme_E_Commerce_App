import 'package:e_commerce/screens/forgotPassword/forgot_pass_screen.dart';
import 'package:e_commerce/screens/signIn/signin_screen.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:e_commerce/screens/signUp/signup_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routNamge: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routNamge: (context) => ForgotPasswordScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
};
