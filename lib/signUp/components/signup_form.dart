import 'package:e_commerce/components/global_button.dart';
import 'package:e_commerce/components/global_form_error.dart';
import 'package:e_commerce/components/global_suffix_icon_config.dart';
import 'package:e_commerce/constants.dart';
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
        if (password == confirmedPassword && errors.contains(kMatchPassError)) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
        return;
      },
      validator: (value) {
        if ((value == null || value.isEmpty || password != confirmedPassword) &&
            !errors.contains(kMatchPassError)) {
          setState(() {
            errors.add(kMatchPassError);
          });
          return '';
        }
        // else if (password != confirmedPassword &&
        //     !errors.contains(kMatchPassError)) {
        //   setState(() {
        //     errors.add(kMatchPassError);
        //   });
        //   return '';
        // }
        return '';
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
          return '';
        } else if (value!.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return '';
        }
        return '';
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
        if ((value.isNotEmpty) && errors.contains(kEmialNullError)) {
          setState(() {
            errors.remove(kEmialNullError);
          });
        } else if (kEmailVlidatorRegEx.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
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
          return '';
        } else if (!kEmailVlidatorRegEx.hasMatch(value!) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return '';
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          suffixIcon: GlobalSuffixIconConfig(icon: Icons.mail_outline)),
    );
  }
}
