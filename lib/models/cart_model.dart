import 'package:e_commerce/models/product.dart';

class CartModel {
  CartModel({
    required this.product,
    required this.numOfItems,
  });

  final ProductModel product;
  final int numOfItems;
}

final List<CartModel> demoCart = [
  CartModel(
    product: demoProducts[0],
    numOfItems: 2,
  ),
  CartModel(
    product: demoProducts[3],
    numOfItems: 3,
  ),
  CartModel(
    product: demoProducts[2],
    numOfItems: 3,
  ),
  CartModel(
    product: demoProducts[1],
    numOfItems: 3,
  ),
];
