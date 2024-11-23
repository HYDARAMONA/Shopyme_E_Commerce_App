import 'package:e_commerce/screens/profile/components/menu_item.dart';
import 'package:e_commerce/screens/profile/components/profile_image.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileImage(),
        SizedBox(height: getProportionateScreenHeight(20)),
        ProfileMenuItem(
          title: 'My Account',
          icon: 'assets/svgs/profile.svg',
          press: () {},
        ),
        ProfileMenuItem(
          title: 'Notifications',
          icon: 'assets/svgs/bell.svg',
          press: () {},
        ),
        ProfileMenuItem(
          title: 'Settings',
          icon: 'assets/svgs/settings.svg',
          press: () {},
        ),
        ProfileMenuItem(
          title: 'Help Center',
          icon: 'assets/svgs/support.svg',
          press: () {},
        ),
        ProfileMenuItem(
          title: 'Log Out',
          icon: 'assets/svgs/log-out.svg',
          press: () {},
        ),
      ],
    );
  }
}
