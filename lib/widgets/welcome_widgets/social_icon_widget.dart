import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_in_sign_up_app_ui/contants/contants.dart';

class SocialIcons extends StatelessWidget {
  final String? icon;
  final Function()? onPress;

  const SocialIcons({
    Key? key,
    this.icon,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor), shape: BoxShape.circle),
        child: SvgPicture.asset(
          'assets/icons/$icon.svg',
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
