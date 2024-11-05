//image//name//description//price//rating//is popular//is favorite//colors

import 'package:flutter/material.dart';

class ProductModel {
  ProductModel(
      {required this.images,
      required this.colors,
      required this.title,
      required this.description,
      required this.price,
      this.rating = 0.0,
      this.isFavorite = true,
      this.isPopular = false});

  final List<String> images;
  final List<Color> colors;
  final String title;
  final String description;
  final double price;
  final double rating;
  bool isFavorite;
  bool isPopular;
}

final List<ProductModel> demoProducts = [
  ProductModel(
    images: ['assets/images/popularProd_controller.png'],
    colors: [],
    title: 'Wireless Controller for PS4™ and PS5™',
    description:
        'Wireless Controller for PS4™ and PS5™ gives you the best gaming experience from all aspects',
    price: 64.99,
  ),
  ProductModel(
    images: ['assets/images/popularProd_shorts.png'],
    colors: [],
    title: 'Nike™ casual shorts - For Men',
    description: 'Nike™ casual shorts for everyday use - good fabric quality',
    price: 50.99,
    isFavorite: false,
  ),
  ProductModel(
    images: ['assets/images/popularProd_gloves.png'],
    colors: [],
    title: 'Gloves XC Omega - black',
    description:
        'Wireless Controller for PS4™ and PS5™ gives you the best gaming experience from all aspects',
    price: 36.55,
  ),
  ProductModel(
    images: ['assets/images/popularProd_headset.png'],
    colors: [],
    title: 'Logitech™ Headset',
    description:
        'Logitech™ Headset giving smooth gaming experience and high quality surround sound system',
    price: 20.20,
  ),
];
