import 'package:flutter/material.dart';

import './constant.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      centerTitle: true, iconTheme: IconThemeData(color: kTextColor));
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
