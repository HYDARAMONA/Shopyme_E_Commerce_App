import 'package:e_commerce/screens/cart/cart_screen.dart';
import 'package:e_commerce/screens/home/components/icon_button_with_countter.dart';
import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/screens/home/components/search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButtonWithCounter(
            icon: Icons.shopping_cart_outlined,
            number: 0,
            onPress: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          IconButtonWithCounter(
            icon: Icons.notifications_none,
            number: 3,
            onPress: () {
              // Navigator.pushNamed(context, ProfileScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
