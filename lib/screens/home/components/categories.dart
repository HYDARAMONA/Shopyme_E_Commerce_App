import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.flash_on_outlined, 'text': 'Flash Deal'},
    {'icon': Icons.receipt, 'text': 'Bill'},
    {'icon': Icons.games_outlined, 'text': 'Game'},
    {'icon': Icons.card_giftcard_outlined, 'text': 'Daiy Gift'},
    {'icon': Icons.compass_calibration_outlined, 'text': 'More'},
  ];

  //flash deal, bill, game, daily gift, more

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) {
              return CategoryCard(
                text: categories[index]['text'],
                icon: categories[index]['icon'],
                press: () {},
              );
            },
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  final IconData? icon;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: Colors.orange.shade700,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
