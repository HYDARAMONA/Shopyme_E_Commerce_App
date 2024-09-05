import 'package:e_commerce/screens/forgotPassword/components/forgot_pass_form.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Please enter your email and we will send \nyou a link to return your account',
              textAlign: TextAlign.center,
            ),
            ForgotPasswordForm(),
          ],
        )),
      ),
    );
  }
}
