import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class GlobalSuffixIconConfig extends StatelessWidget {
  const GlobalSuffixIconConfig({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: Icon(icon, size: getProportionateScreenWidth(25)),
    );
  }
}
