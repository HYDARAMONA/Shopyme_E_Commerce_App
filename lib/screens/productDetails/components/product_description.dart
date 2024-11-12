import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.product,
    required this.press,
  });

  final ProductModel product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(20)),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(5)),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: product.isFavorite
                  ? Colors.red.shade100
                  : Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(getProportionateScreenWidth(20)),
                bottomLeft: Radius.circular(getProportionateScreenWidth(20)),
              ),
            ),
            child: Icon(
              Icons.favorite,
              color: product.isFavorite
                  ? Colors.red.shade600
                  : Colors.grey.shade400,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              right: getProportionateScreenWidth(224.4),
              left: getProportionateScreenWidth(10)),
          child: TextButton(
            onPressed: press,
            child: Row(
              children: [
                Text(
                  'See More Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(5)),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).colorScheme.primary,
                  size: getProportionateScreenWidth(13),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
