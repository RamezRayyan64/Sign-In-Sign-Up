import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final Function()? onPress;
  final Color? textColor;
  final Color? color;
  final double? marginTop;

  const RoundedButton({
    Key? key,
    required this.size,
    this.text,
    this.onPress,
    this.textColor,
    this.color,
    this.marginTop,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop!.toDouble(), bottom: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          onPressed: onPress,
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              text.toString(),
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
