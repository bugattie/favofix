import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF006756);
const kTextColor = Color(0xFF757575);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter valid email";
const String kPhoneNullError = "Please enter your phone number";
