import 'package:e_commerce/models/cart_model.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class CartElementCard extends StatelessWidget {
  CartElementCard({
    super.key,
    required this.cart,
  });

  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(15)),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Text.rich(
              TextSpan(
                text: '\$${cart.product.price}',
                style: TextStyle(
                  color: Colors.orange.shade700,
                ),
                children: [
                  TextSpan(
                    text: ' X${cart.numOfItems}',
                    style: TextStyle(color: Colors.grey.shade700),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
