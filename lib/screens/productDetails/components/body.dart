import 'package:e_commerce/components/global_button.dart';
import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/screens/productDetails/components/color_dots_list.dart';
import 'package:e_commerce/screens/productDetails/components/product_description.dart';
import 'package:e_commerce/screens/productDetails/components/product_preview.dart';
import 'package:e_commerce/screens/productDetails/components/top_rounded_container.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    required this.product,
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  press: () {},
                ),
                TopRoundedContainer(
                  color: const Color.fromARGB(255, 239, 239, 239),
                  child: Column(
                    children: [
                      ColorDotsList(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(50),
                            right: getProportionateScreenWidth(50),
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(47),
                          ),
                          child: GlobalUseButton(
                            text: 'Add to Chart',
                            function: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
