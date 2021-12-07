import 'package:favofix/config/utils.dart';
import 'package:flutter/material.dart';

import './widgets/body.dart';
import '../../config/size_config.dart' as size_config;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    Utils.setStatusBarColors(Colors.white, Brightness.dark);
  }

  @override
  Widget build(BuildContext context) {
    size_config.SizeConfig().init(context);

    return const Scaffold(body: Body());
  }
}
