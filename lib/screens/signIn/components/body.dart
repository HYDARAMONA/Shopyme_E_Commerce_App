import 'package:e_commerce/components/global_noaccount_text.dart';
import 'package:e_commerce/components/global_social_card.dart';
import 'package:e_commerce/screens/signIn/components/signin_form.dart';
import 'package:e_commerce/screens/signUp/signup_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'SignIn with your email or password \nor continue with your social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                SignInForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCardElement(
                        svgPaths: 'assets/svgs/google.svg', function: () {}),
                    SocialCardElement(
                        svgPaths: 'assets/svgs/facebook.svg', function: () {}),
                    SocialCardElement(
                        svgPaths: 'assets/svgs/twitter.svg', function: () {}),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(18)),
                DontHaveAccountText(function: () {
                  Navigator.pushNamed(context, SignupScreen.routeName);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
