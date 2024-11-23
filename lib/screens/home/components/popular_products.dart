import 'package:e_commerce/components/global_product_card.dart';
import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/screens/home/components/section_title.dart';
import 'package:e_commerce/screens/productDetails/product_details_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Products',
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(
                      //Product card is a Global Component//
                      product: demoProducts[index],
                      press: () {
                        Navigator.pushNamed(
                            context, ProductDetailsScreen.routeName,
                            arguments: ProductDetailsArguments(
                                arguments: demoProducts[index]));
                      },
                    );
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
