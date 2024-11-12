import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    required this.icon,
    required this.press,
  });

  final String icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: press,
        child: Ink(
          padding: EdgeInsets.all(getProportionateScreenWidth(12)),
          width: getProportionateScreenWidth(40),
          height: getProportionateScreenWidth(40),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}


// SizedBox(
//       height: getProportionateScreenWidth(40),
//       width: getProportionateScreenWidth(40),
//       child: IconButton(
//         icon: Padding(
//           padding: EdgeInsets.only(
//               left: getProportionateScreenWidth(5)), //////fix here
//           child: Icon(
//             icon,
//           ),
//         ),
//         onPressed: press,
//         style: IconButton.styleFrom(
//           backgroundColor: Colors.white,
//         ),
//       ),
//     )