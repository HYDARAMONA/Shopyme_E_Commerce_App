import 'package:e_commerce/components/global_button.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();

    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight! * 0.2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus:
                      true, //to direct user kyboard focus to the first field
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration:
                      otpInputDecoration, // from the constants dart file
                  onChanged: (value) {
                    // TODO store the input to compare it with the sent otp
                    nextField(value: value, focusNode: pin2FocusNode!);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode:
                      pin2FocusNode, //to control when the text field becomes active (gains focus) and when it loses focus
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration:
                      otpInputDecoration, // from the constants dart file
                  onChanged: (value) {
                    // TODO store the input to compare it with the sent otp
                    nextField(value: value, focusNode: pin3FocusNode!);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode:
                      pin3FocusNode, //to control when the text field becomes active (gains focus) and when it loses focus
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration:
                      otpInputDecoration, // from the constants dart file
                  onChanged: (value) {
                    // TODO store the input to compare it with the sent otp
                    nextField(value: value, focusNode: pin4FocusNode!);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode:
                      pin4FocusNode, //to control when the text field becomes active (gains focus) and when it loses focus
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration:
                      otpInputDecoration, // from the constants dart file
                  onChanged: (value) {
                    // TODO store the input to compare it with the sent otp
                    pin4FocusNode!.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.2),
          GlobalUseButton(
            text: 'Continue',
            function: () {},
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          TextButton(
            onPressed: () {},
            child: Text(
              'Resend OTP Code',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}
