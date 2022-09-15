import 'package:flutter/material.dart';

class TopTextWidget extends StatelessWidget {
  final String? text;

  const TopTextWidget({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
