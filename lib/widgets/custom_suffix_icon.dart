import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/size_config.dart' as size_config;

class CustomSuffixIcon extends StatelessWidget {
  final String svgIcon;
  const CustomSuffixIcon({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        size_config.getProportionateScreenWidth(20),
        size_config.getProportionateScreenWidth(20),
        size_config.getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: size_config.getProportionateScreenHeight(18),
      ),
    );
  }
}
