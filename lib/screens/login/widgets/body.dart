import 'package:favofix/screens/otp/phone_login_screen.dart';
import 'package:favofix/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../config/size_config.dart' as size_config;
import './login_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size_config.getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: size_config.SizeConfig.screenHeight * 0.1),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: size_config.SizeConfig.screenHeight * 0.1),
            const LoginForm(),
            SizedBox(height: size_config.SizeConfig.screenHeight * 0.05),
            Text(
              'OR',
              style: TextStyle(color: Colors.black.withOpacity(.5)),
            ),
            SizedBox(height: size_config.SizeConfig.screenHeight * 0.05),
            DefaultButton(
              text: "Login via OTP",
              press: () {
                Navigator.of(context)
                    .pushReplacementNamed(PhoneLoginScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SizeConfig {}
