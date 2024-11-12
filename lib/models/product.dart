//image//name//description//price//rating//is popular//is favorite//colors

import 'package:flutter/material.dart';

class ProductModel {
  ProductModel(
      {required this.images,
      required this.colors,
      required this.title,
      required this.description,
      required this.price,
      this.rating = 4.5,
      this.isFavorite = true,
      this.isPopular = true});

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
    images: [
      'assets/images/controller_1.png',
      'assets/images/controller_2.png',
      'assets/images/controller_3.png',
      'assets/images/controller_4.png',
    ],
    colors: [
      Colors.red,
      Colors.purple,
      Colors.lime,
      Colors.white,
    ],
    title: 'Wireless Controller for PS4™', // and PS5™
    description:
        'Wireless Controller for PS4™ and PS5™ gives you the best gaming experience from all aspects Wireless Controller for PS4™ and PS5™ gives you the best gaming experience from all aspects',
    price: 64.99,
  ),
  ProductModel(
    images: ['assets/images/popularProd_shorts.png'],
    colors: [
      Colors.red,
      Colors.purple,
      Colors.lime,
      Colors.white,
    ],
    title: 'Nike™ casual shorts - For Men',
    description: 'Nike™ casual shorts for everyday use - good fabric quality',
    price: 50.99,
    isFavorite: false,
  ),
  ProductModel(
    images: ['assets/images/popularProd_gloves.png'],
    colors: [
      Colors.red,
      Colors.purple,
      Colors.lime,
      Colors.white,
    ],
    title: 'Gloves XC Omega - black',
    description:
        'Wireless Controller for PS4™ and PS5™ gives you the best gaming experience from all aspects',
    price: 36.55,
  ),
  ProductModel(
    images: ['assets/images/popularProd_headset.png'],
    colors: [
      Colors.red,
      Colors.purple,
      Colors.lime,
      Colors.white,
    ],
    title: 'Logitech™ Headset',
    description:
        'Logitech™ Headset giving smooth gaming experience and high quality surround sound system',
    price: 20.20,
  ),
];
