import 'package:favofix/config/constant.dart';
import 'package:favofix/widgets/custom_suffix_icon.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:favofix/widgets/default_button.dart';

import '../../../config/size_config.dart' as size_config;

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode phoneFocusNode;
  final _formKey = GlobalKey<FormState>();
  String phone = '';

  @override
  void initState() {
    super.initState();
    phoneFocusNode = FocusNode();
    phoneFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    phoneFocusNode.dispose();
  }

  _showConfirmAlertBox(String phoneNumber) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actionsPadding: EdgeInsets.zero,
        buttonPadding: EdgeInsets.zero,
        contentPadding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 20,
            cornerSmoothing: 0.8,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                children: [
                  const TextSpan(
                    text: "We will be verifying the phone number:\n\n",
                  ),
                  TextSpan(
                      text: phoneNumber + '\n\n',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                        fontSize: 16,
                      )),
                  const TextSpan(
                    text: "Is this OK, or would you like to edit the number?",
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text(
                    "Edit",
                    style: TextStyle(color: kTextColor),
                  ),
                  onPressed: () => {
                    Navigator.of(context).pop(),
                    phoneFocusNode.requestFocus()
                  },
                ),
                ElevatedButton(
                  child: const Text(
                    "OK",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(primary: kPrimaryColor),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    // Navigator.pushReplacementNamed(context, OTPScreen.routeName,
                    //     arguments: OTPScreenArgument(phoneNumber));
                  },
                )
              ],
            ),
            onPressed: () => null,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: size_config.SizeConfig.screenHeight * 0.05),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                _showConfirmAlertBox(phone);
              }
            },
          ),
          SizedBox(height: size_config.SizeConfig.screenHeight * 0.05),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      focusNode: phoneFocusNode,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      onSaved: (newValue) => phone = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kPhoneNullError;
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }
}
