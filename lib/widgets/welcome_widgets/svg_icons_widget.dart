import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconsWidget extends StatelessWidget {
  final String? iconSource;

  const SvgIconsWidget({Key? key, this.iconSource}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SvgPicture.asset(
      'assets/icons/$iconSource.svg',
      width: size.width * 0.8,
      height: size.height * 0.35,
    );
  }
}
