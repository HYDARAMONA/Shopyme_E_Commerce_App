import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(20),
          horizontal: getProportionateScreenWidth(15),
        ),
        width: double.infinity,
        // height: 90,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text.rich(
          TextSpan(
            text: "A Summer Surprise\n",
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            children: [
              TextSpan(
                text: 'Cashback 20%',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
