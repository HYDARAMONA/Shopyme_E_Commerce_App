import 'package:e_commerce/components/global_button.dart';
import 'package:e_commerce/components/global_form_error.dart';
import 'package:e_commerce/components/global_noaccount_text.dart';
import 'package:e_commerce/components/global_suffix_icon_config.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;

  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight! * 0.1),
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            FormErrors(errors: errors),
            SizedBox(height: SizeConfig.screenHeight! * 0.1),
            GlobalUseButton(
                text: 'Continue',
                function: () {
                  if (_formKey.currentState!.validate()) {
                    // do something when in action
                  }
                }),
            SizedBox(height: SizeConfig.screenHeight! * 0.1),
            DontHaveAccountText(function: () {}),
          ],
        ));
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
