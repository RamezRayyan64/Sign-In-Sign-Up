import 'package:flutter/material.dart';
import 'package:signin_signup/contants/contants.dart';

class AccountStatusWidget extends StatelessWidget {
  final String? firstText;
  final String? secondText;
  final String? pageId;

  const AccountStatusWidget(
      {Key? key, this.firstText, this.secondText, this.pageId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$firstText ',
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(pageId.toString());
          },
          child: Text('$secondText',
              style: const TextStyle(
                  color: kPrimaryColor, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
