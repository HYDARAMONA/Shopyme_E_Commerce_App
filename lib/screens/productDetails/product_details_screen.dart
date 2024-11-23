import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/screens/productDetails/components/body.dart';
import 'package:e_commerce/screens/productDetails/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key});

  static String routeName = '/ProductDetails';

  @override
  Widget build(BuildContext context) {
    // Extract the argument from the ModalRoute
    final ProductDetailsArguments product =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      appBar: CustomAppBar(rating: product.arguments.rating),
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      body: Body(
        product: product
            .arguments, // Passing the whole product after extracting the arguments
      ),
    );
  }
}

class ProductDetailsArguments {
  ProductDetailsArguments({required this.arguments});
  final ProductModel arguments;
}
