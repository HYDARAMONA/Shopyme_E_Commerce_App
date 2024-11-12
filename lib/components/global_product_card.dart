import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/size_config.dart';

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.aspectRatio = 1.02,
    this.width = 140,
    required this.product,
    required this.press,
  });
//images list//aspect ratio//product title//product price

  final double aspectRatio;
  final double width;
  final ProductModel product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              Text(
                product.title,
                maxLines: 2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // fontSize: getProportionateScreenWidth(12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.orange.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // demoProducts[0].isFavorite == false
                      //     ? demoProducts[0].isFavorite == true
                      //     : demoProducts[0].isFavorite == false;
                    },
                    icon: Icon(
                      Icons.favorite,
                      size: 15,
                    ),
                    constraints: BoxConstraints(
                      maxWidth: 30,
                      maxHeight: 30,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: product.isFavorite
                          ? Colors.red.shade100
                          : Colors.grey.shade200,
                      foregroundColor: product.isFavorite
                          ? Colors.red.shade600
                          : Colors.grey.shade400,
                    ),
                    tooltip: 'Favorite',
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
