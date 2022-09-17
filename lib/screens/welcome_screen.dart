import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sign_in_sign_up_app_ui/contants/contants.dart';
import 'package:sign_in_sign_up_app_ui/screens/login_screen.dart';
import 'package:sign_in_sign_up_app_ui/screens/sign_up_screen.dart';
import 'package:sign_in_sign_up_app_ui/widgets/welcome_widgets/rounded_button_widget.dart';
import 'package:sign_in_sign_up_app_ui/widgets/welcome_widgets/svg_icons_widget.dart';
import 'package:sign_in_sign_up_app_ui/widgets/welcome_widgets/top_text_widget.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = '/welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Background(
            size: size,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TopTextWidget(text: 'WELCOME TO EDU'),
                SizedBox(height: size.height * 0.05),
                const SvgIconsWidget(
                  iconSource: 'chat',
                ),
                RoundedButton(
                  size: size,
                  onPress: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  text: 'LOGIN',
                  textColor: Colors.white,
                  color: kPrimaryColor,
                  marginTop: size.height * 0.05,
                ),
                RoundedButton(
                  size: size,
                  onPress: () {
                    Navigator.pushNamed(context, SignUpScreen.id);
                  },
                  text: 'SIGN UP',
                  textColor: Colors.black,
                  color: kPrimaryLightColor,
                  marginTop: size.height * 0.01,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  final Size? size;

  const Background({
    Key? key,
    this.size,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size!.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: size!.width * 0.3,
            child: Image.asset('assets/images/main_top.png'),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: size!.width * 0.2,
            child: Image.asset('assets/images/main_bottom.png'),
          ),
          child,
        ],
      ),
    );
  }
}
