import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCardElement extends StatelessWidget {
  const SocialCardElement({
    super.key,
    required this.svgPaths,
    required this.function,
  });

  final String svgPaths;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(40),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 233, 230, 230), shape: BoxShape.circle),
        alignment: Alignment.center,
        child: SvgPicture.asset(svgPaths),
      ),
    );
  }
}
