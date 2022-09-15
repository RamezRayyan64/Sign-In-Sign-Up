import 'package:flutter/material.dart';
import 'package:signin_signup/contants/contants.dart';

class RoundedTextField extends StatefulWidget {
  final String? hintText;
  final IconData? iconData;
  final IconData? suffixIconData;
  final Function()? suffixIconOnPress;
  final Function(String value)? onChange;
  final double? marginTop;
  final Size size;
  final bool? isTextTypePassword;

  const RoundedTextField({
    Key? key,
    required this.size,
    this.hintText,
    this.iconData,
    this.onChange,
    this.marginTop,
    this.suffixIconData,
    this.isTextTypePassword,
    this.suffixIconOnPress,
  }) : super(key: key);

  @override
  State<RoundedTextField> createState() => _RoundedTextFieldState();
}

class _RoundedTextFieldState extends State<RoundedTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      margin: EdgeInsets.only(top: widget.marginTop!.toDouble(), bottom: 10),
      width: widget.size.width * 0.8,
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29)),
      child: TextField(
        obscureText: widget.isTextTypePassword == false ? true : false,
        textAlignVertical: TextAlignVertical.center,
        onChanged: widget.onChange,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            icon: Icon(
              widget.iconData,
              color: kPrimaryColor,
            ),
            suffixIcon: GestureDetector(
              onTap: widget.suffixIconOnPress,
              child: Icon(
                widget.suffixIconData,
                color: kPrimaryColor,
              ),
            )),
        style: const TextStyle(
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
