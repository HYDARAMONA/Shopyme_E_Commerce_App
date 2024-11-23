import 'package:e_commerce/models/product.dart';
import 'package:uuid/uuid.dart';

class CartModel {
  CartModel({
    required this.product,
    required this.numOfItems,
  }) : id = Uuid().v4();

  final String id;

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
  CartModel(
    product: demoProducts[1],
    numOfItems: 3,
  ),
  CartModel(
    product: demoProducts[1],
    numOfItems: 3,
  ),
];
