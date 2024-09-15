import 'package:e_commerce/components/global_social_card.dart';
import 'package:e_commerce/screens/signUp/components/signup_form.dart';
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
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                Text(
                  'Register Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Complete your details or continue \nwith social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                SignupForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.07),
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
                const Text(
                  'By continuing you confirm that you agree \nwith our Terms and Conditions',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
