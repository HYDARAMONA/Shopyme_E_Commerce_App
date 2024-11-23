import 'package:e_commerce/models/cart_model.dart';
import 'package:e_commerce/screens/cart/components/cart_element_card.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<CartModel> cartItems = List.from(demoCart); //copy of the demo list

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final cartItem = cartItems[index]; // Extract item at this index
          return Padding(
            padding:
                EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
            child: Dismissible(
              key: ValueKey(cartItem.id),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset('assets/svgs/garbage.svg'),
                  ],
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  cartItems.remove(cartItem);
                });
              },
              child: CartElementCard(cart: cartItem),
            ),
          );
        },
      ),
    );
  }
}
