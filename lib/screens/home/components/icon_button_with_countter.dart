import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class IconButtonWithCounter extends StatelessWidget {
  const IconButtonWithCounter(
      {super.key,
      required this.icon,
      required this.number,
      required this.onPress});

  final IconData icon;
  final int number;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onPress,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Ink(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(45),
            width: getProportionateScreenWidth(45),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 244, 239, 239),
            ),
            child: Icon(icon),
          ),
          if (number != 0)
            Positioned(
              right: 0,
              top: -5,
              child: Container(
                height: getProportionateScreenWidth(20),
                width: getProportionateScreenWidth(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.redAccent,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    '$number',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1,
                      fontSize: getProportionateScreenWidth(10),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
