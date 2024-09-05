import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({
    super.key,
    required this.function,
  });

  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account ?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
        TextButton(
            onPressed: function,
            child: Text(
              "Sign up",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                color: Theme.of(context).colorScheme.primary,
              ),
            ))
      ],
    );
  }
}
