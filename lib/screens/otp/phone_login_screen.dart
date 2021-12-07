import 'package:favofix/config/utils.dart';
import 'package:flutter/material.dart';

import './widgets/body.dart';

class PhoneLoginScreen extends StatefulWidget {
  const PhoneLoginScreen({Key? key}) : super(key: key);
  static const routeName = '/phone-login';

  @override
  State<PhoneLoginScreen> createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends State<PhoneLoginScreen> {
  @override
  void initState() {
    super.initState();
    Utils.setStatusBarColors(Colors.white, Brightness.dark);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
