import 'package:e_commerce/screens/splash/components/body.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routNamge = '/Splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(
        context); // this must be called to initialize the values in the SizeConfig file
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Body(),
    );
  }
}
