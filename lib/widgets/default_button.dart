import 'package:flutter/material.dart';

import '../config/constant.dart';
import '../config/size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        onPressed: () {
          press();
        },
        style: ElevatedButton.styleFrom(
          primary: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: getProportionateScreenWidth(18)),
        ),
      ),
    );
  }
}
