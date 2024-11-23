import 'package:e_commerce/enums.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.currentScreenEnum,
  });

  final MenuEnums currentScreenEnum;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(15),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0, -15),
            blurRadius: 50,
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getProportionateScreenWidth(40),
          ),
          topRight: Radius.circular(
            getProportionateScreenWidth(40),
          ),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/svgs/store.svg',
                colorFilter: ColorFilter.mode(
                  currentScreenEnum == MenuEnums.home
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svgs/favorite.svg',
                colorFilter: ColorFilter.mode(
                  currentScreenEnum == MenuEnums.favorite
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svgs/message.svg',
                colorFilter: ColorFilter.mode(
                  currentScreenEnum == MenuEnums.message
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/svgs/profile.svg',
                colorFilter: ColorFilter.mode(
                  currentScreenEnum == MenuEnums.profile
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
