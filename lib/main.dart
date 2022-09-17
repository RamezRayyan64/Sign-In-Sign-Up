import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sign_in_sign_up_app_ui/contants/contants.dart';
import 'package:sign_in_sign_up_app_ui/screens/login_screen.dart';
import 'package:sign_in_sign_up_app_ui/screens/sign_up_screen.dart';
import 'package:sign_in_sign_up_app_ui/screens/splash_screen.dart';
import 'package:sign_in_sign_up_app_ui/screens/welcome_screen.dart';

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
