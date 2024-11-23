import 'package:e_commerce/components/global_custom_nav_bar.dart';
import 'package:e_commerce/enums.dart';
import 'package:e_commerce/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = '/Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Body(),
      bottomNavigationBar: CustomNavBar(currentScreenEnum: MenuEnums.home),
    );
  }
}
