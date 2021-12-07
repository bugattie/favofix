import 'package:flutter/material.dart';

import '../../../widgets/default_button.dart';
import '../../../config/constant.dart';
import '../../../screens/home/home_screen.dart';
import '../../../widgets/custom_suffix_icon.dart';
import '../../../config/size_config.dart' as size_config;

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: size_config.SizeConfig.screenHeight * 0.05),
          DefaultButton(
            text: "Login",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      onSaved: (newValue) => email = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
