import 'package:e_commerce/components/global_button.dart';
import 'package:e_commerce/models/cart_model.dart';
import 'package:e_commerce/screens/cart/components/body.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static String routNamge = '/Cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(20)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(getProportionateScreenWidth(25)),
            topLeft: Radius.circular(getProportionateScreenWidth(25)),
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                // blurStyle: BlurStyle.outer,
                blurRadius: 20,
                color: Colors.grey.withOpacity(0.3)),
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/svgs/receipt.svg',
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('Add Voucher Code'),
                        SizedBox(width: getProportionateScreenWidth(5)),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: getProportionateScreenWidth(15),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Total:\n',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(15),
                      ),
                      children: [
                        TextSpan(
                          text: '\$337.15',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: getProportionateScreenWidth(190),
                    child: GlobalUseButton(
                      text: 'Check Out',
                      function: () {},
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '${demoCart.length} items',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
            ),
          )
        ],
      ),
    );
  }
}
