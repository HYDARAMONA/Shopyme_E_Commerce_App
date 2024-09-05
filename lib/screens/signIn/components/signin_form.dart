import 'package:e_commerce/components/global_button.dart';
import 'package:e_commerce/components/global_form_error.dart';
import 'package:e_commerce/components/global_suffix_icon_config.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/forgotPassword/forgot_pass_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String? email;
  String? password;
  bool? checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: checkBoxValue,
                onChanged: (value) {
                  setState(() {
                    checkBoxValue = value;
                  });
                },
              ),
              Text('Remember Me'),
              Spacer(),
              TextButton(
                  onPressed: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routNamge),
                  child: const Text('Forgot Password',
                      style: TextStyle(decoration: TextDecoration.underline))),
            ],
          ),
          FormErrors(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          GlobalUseButton(
              text: 'Continue',
              function: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password == newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNullPassError)) {
          setState(() {
            errors.remove(kNullPassError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return;
      },
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !errors.contains(kNullPassError)) {
          setState(() {
            errors.add(kNullPassError);
          });
        } else if (value!.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return;
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your passsword',
        suffixIcon: GlobalSuffixIconConfig(icon: Icons.lock_outline),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if ((value.isNotEmpty) && errors.contains(kEmialNullError)) {
          setState(() {
            errors.remove(kEmialNullError);
          });
        } else if (kEmailVlidatorRegEx.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kEmialNullError);
          });
        }
        return;
      },
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !errors.contains(kEmialNullError)) {
          setState(() {
            errors.add(kEmialNullError);
          });
        } else if (!kEmailVlidatorRegEx.hasMatch(value!) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          suffixIcon: GlobalSuffixIconConfig(icon: Icons.mail_outline)),
    );
  }
}
