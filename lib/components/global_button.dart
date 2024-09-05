import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class GlobalUseButton extends StatelessWidget {
  const GlobalUseButton({
    super.key,
    required this.text,
    required this.function,
  });

  final String text;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary),
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(fontSize: getProportionateScreenWidth(18)),
        ),
      ),
    );
  }
}
