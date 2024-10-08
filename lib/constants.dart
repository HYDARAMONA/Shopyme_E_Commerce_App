// Form Erros

import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

final RegExp kEmailVlidatorRegEx =
    RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$');
const String kEmialNullError = 'Pleas Enter Your Email';
const String kInvalidEmailError = 'Please Enter Valid Email';
const String kNullPassError = 'Please Enter Your Password';
const String kShortPassError = 'Password is too Short';
const String kMatchPassError = "Passwords don't Match";
const String kNullNameError = 'Please Enter Your Name';
const String kNullPhoneNumberError = 'Please Enter Your Phone Number';
const String kNullAddressError = 'Please Enter Your Address';

final InputDecoration otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(),
  );
}
