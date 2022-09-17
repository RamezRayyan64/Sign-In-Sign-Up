import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sign_in_sign_up_app_ui/contants/contants.dart';
import 'package:sign_in_sign_up_app_ui/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  static const id = '/splash_screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(WelcomeScreen.id, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'EDU',
        style: TextStyle(
            fontSize: 50, fontWeight: FontWeight.bold, color: kPrimaryColor),
      )),
    );
  }
}
