import 'package:e_commerce/screens/signIn/signin_screen.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routNamge: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
