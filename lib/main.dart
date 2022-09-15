import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signin_signup/contants/contants.dart';
import 'package:signin_signup/screens/login_screen.dart';
import 'package:signin_signup/screens/sign_up_screen.dart';
import 'package:signin_signup/screens/splash_screen.dart';
import 'package:signin_signup/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
