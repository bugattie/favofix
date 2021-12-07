import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Utils {
  Utils._();

  static void setStatusBarColors(Color background, Brightness foreground) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: background,
        statusBarBrightness: foreground,
        statusBarIconBrightness: foreground,
      ),
    );
  }
}
