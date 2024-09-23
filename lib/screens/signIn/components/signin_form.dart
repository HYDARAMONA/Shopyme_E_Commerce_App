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

  void addErr({required String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeErr({required String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error!);
      });
    }
  }

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
        if (value.isNotEmpty) {
          removeErr(error: kNullPassError);
        }
        if (value.length >= 8) {
          removeErr(error: kShortPassError);
        }
        return;
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) {
        if ((value == null || value.isEmpty)) {
          addErr(error: kNullPassError);

          return '';
        } else if (value.length < 8) {
          addErr(error: kShortPassError);

          return '';
        }
        return null;
      },
      obscureText: true,
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
        if ((value.isNotEmpty)) {
          removeErr(error: kEmialNullError);
        }

        if (kEmailVlidatorRegEx.hasMatch(value)) {
          removeErr(error: kInvalidEmailError);
        }

        return;
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) {
        if (value == null || value.isEmpty) {
          addErr(error: kEmialNullError);

          return '';
        } else if (!kEmailVlidatorRegEx.hasMatch(value)) {
          addErr(error: kInvalidEmailError);

          return '';
        }

        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          suffixIcon: GlobalSuffixIconConfig(icon: Icons.mail_outline)),
    );
  }
}
