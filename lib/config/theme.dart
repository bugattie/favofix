import 'package:flutter/material.dart';

import './constant.dart';

ThemeData theme() {
  return ThemeData(appBarTheme: appBarTheme());
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      centerTitle: true, iconTheme: IconThemeData(color: kTextColor));
}
