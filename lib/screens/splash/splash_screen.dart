import 'package:e_commerce/screens/splash/components/body.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = '/Splash';

  @override
  Widget build(BuildContext context) {
    // the under line must be called to initialize the values in the SizeConfig file
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Body(),
    );
  }
}
