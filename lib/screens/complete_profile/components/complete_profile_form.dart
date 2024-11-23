import 'package:e_commerce/components/global_button.dart';
import 'package:e_commerce/components/global_form_error.dart';
import 'package:e_commerce/components/global_suffix_icon_config.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/otp/otp_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();

  final List<String> errors = [];

  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

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
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildLastNameFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildPhoneNumberFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildAddressFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            FormErrors(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            GlobalUseButton(
              text: 'Continue',
              function: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              },
            ),
          ],
        ));
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if ((value.isNotEmpty)) {
          removeErr(error: kNullNameError);
        }

        return;
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) {
        if (value == null || value.isEmpty) {
          addErr(error: kNullNameError);

          return '';
        }

        return null;
      },
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          labelText: 'First Name',
          hintText: 'Enter your first name',
          suffixIcon: GlobalSuffixIconConfig(icon: Icons.person_outline)),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if ((value.isNotEmpty)) {
          removeErr(error: kNullNameError);
        }

        return;
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) {
        if (value == null || value.isEmpty) {
          addErr(error: kNullNameError);

          return '';
        }

        return null;
      },
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          labelText: 'Last Name',
          hintText: 'Enter your last name',
          suffixIcon: GlobalSuffixIconConfig(icon: Icons.person_outline)),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if ((value.isNotEmpty)) {
          removeErr(error: kNullPhoneNumberError);
        }

        return;
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) {
        if (value == null || value.isEmpty) {
          addErr(error: kNullPhoneNumberError);

          return '';
        }

        return null;
      },
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          labelText: 'Phone Number',
          hintText: 'Enter your phone number',
          suffixIcon: GlobalSuffixIconConfig(icon: Icons.dialpad)),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if ((value.isNotEmpty)) {
          removeErr(error: kNullAddressError);
        }

        return;
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) {
        if (value == null || value.isEmpty) {
          addErr(error: kNullAddressError);

          return '';
        }

        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Address',
          hintText: 'Enter your address',
          suffixIcon: GlobalSuffixIconConfig(icon: Icons.location_on_outlined)),
    );
  }
}
