import 'package:e_commerce/components/global_button.dart';
import 'package:e_commerce/components/global_form_error.dart';
import 'package:e_commerce/components/global_suffix_icon_config.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String? email;
  String? password;
  String? confirmedPassword;

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
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              buildEmailFormField(),
              SizedBox(height: getProportionateScreenHeight(20)),
              buildPasswordFormField(),
              SizedBox(height: getProportionateScreenHeight(20)),
              buildConfirmPassFormField(),
              SizedBox(height: getProportionateScreenHeight(20)),
              FormErrors(errors: errors),
              SizedBox(height: getProportionateScreenHeight(20)),
              GlobalUseButton(
                  text: 'Continue',
                  function: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print('vaaaaliiiiidaaaaateeeeeeddddddd');
                      Navigator.pushNamed(
                          context, CompleteProfileScreen.routNamge);
                    }
                  })
            ],
          ),
        )
      ],
    );
  }

  TextFormField buildConfirmPassFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmedPassword == newValue,
      onChanged: (value) {
        if (password == value) {
          removeErr(error: kMatchPassError);
        }
        return;
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) {
        if (value == null || value.isEmpty || value != password) {
          addErr(error: kMatchPassError);

          return '';
        }
        return null;
      },
      obscureText: true,
      decoration: const InputDecoration(
          labelText: 'Confirm Password',
          hintText: 'Re-enter your password',
          suffixIcon: GlobalSuffixIconConfig(icon: Icons.lock_outline)),
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

        password = value;

        return;
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) {
        if (value == null || value.isEmpty) {
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
        hintText: 'Enter your password',
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
