import 'package:e_commerce/components/global_custom_nav_bar.dart';
import 'package:e_commerce/enums.dart';
import 'package:e_commerce/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Body(),
      // persistentFooterButtons: [],
      bottomNavigationBar: CustomNavBar(
        currentScreenEnum: MenuEnums.profile,
      ),
    );
  }
}
