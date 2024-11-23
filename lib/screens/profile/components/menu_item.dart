import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.title,
    required this.icon,
    this.press,
  });

  final String title;
  final String icon;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(10)),
      child: SizedBox(
        height: getProportionateScreenWidth(60),
        child: TextButton(
          onPressed: press,
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(15),
              ),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(15),
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded),
              // SvgPicture.asset('assets/svgs/arrow_forward.svg')
            ],
          ),
        ),
      ),
    );
  }
}
