import 'package:e_commerce/components/global_rounded_icon_btn.dart';
import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class ColorDotsList extends StatefulWidget {
  const ColorDotsList({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  State<ColorDotsList> createState() => _ColorDotsListState();
}

class _ColorDotsListState extends State<ColorDotsList> {
  var selectedDotIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedDotIndex = index;
                });
              },
              child: coloredDotContainer(
                context,
                color: widget.product.colors[index],
                isSelected: selectedDotIndex == index,
              ),
            ),
          ),
          Spacer(),
          RoundedIconButton(
              icon: 'assets/svgs/minus-svgrepo-com.svg', press: () {}),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedIconButton(
              icon: 'assets/svgs/plus-svgrepo-com.svg', press: () {}),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
        ],
      ),
    );
  }

  Container coloredDotContainer(BuildContext context,
      {required Color color, required bool isSelected}) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
