import 'package:e_commerce/screens/otp/components/otp_form.dart';
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
                  'OTP Verification',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                const Text('We sent you code to +963 936******'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('This code will be expired in '),
                    buildTimer(),
                  ],
                ),
                OtpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TweenAnimationBuilder<double> buildTimer() {
    return TweenAnimationBuilder(
      tween: Tween(begin: 30.0, end: 0.0),
      duration: Duration(seconds: 30),
      builder: (context, value, child) {
        return Text(
          '${value.toInt()}',
          style: TextStyle(color: Colors.red),
        );
      },
      onEnd: () {},
    );
  }
}
