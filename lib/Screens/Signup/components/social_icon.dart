import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocalIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(300),
        onTap: press,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: kPrimaryLightColor,
            ),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            iconSrc,
            height: 20,
            width: 20,
          ),
        ),
      ),
    );
  }
}
