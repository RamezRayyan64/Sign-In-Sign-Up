import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signin_signup/contants/contants.dart';
import 'package:signin_signup/screens/sign_up_screen.dart';
import 'package:signin_signup/widgets/welcome_widgets/account_status_widget.dart';
import 'package:signin_signup/widgets/welcome_widgets/rounded_button_widget.dart';
import 'package:signin_signup/widgets/welcome_widgets/rounded_textfield_widget.dart';
import 'package:signin_signup/widgets/welcome_widgets/svg_icons_widget.dart';
import 'package:signin_signup/widgets/welcome_widgets/top_text_widget.dart';

class LoginScreen extends StatefulWidget {
  static const id = '/login_screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isTextShow = false;
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
                const TopTextWidget(
                  text: 'LOGIN',
                ),
                SizedBox(height: size.height * 0.05),
                const SvgIconsWidget(
                  iconSource: 'login',
                ),
                RoundedTextField(
                  size: size,
                  hintText: 'Enter Email',
                  iconData: Icons.person,
                  onChange: (value) {},
                  marginTop: size.height * 0.05,
                ),
                RoundedTextField(
                  size: size,
                  hintText: 'Enter Password',
                  iconData: Icons.lock,
                  onChange: (value) {},
                  marginTop: size.height * 0.01,
                  suffixIconData: Icons.visibility,
                  isTextTypePassword: isTextShow,
                  suffixIconOnPress: () {
                    setState(() {
                      isTextShow = !isTextShow;
                    });
                  },
                ),
                RoundedButton(
                  size: size,
                  onPress: () {},
                  text: 'LOGIN',
                  textColor: Colors.white,
                  color: kPrimaryColor,
                  marginTop: size.height * 0.05,
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                const AccountStatusWidget(
                  firstText: 'Don\'t have an account ?',
                  secondText: 'Sign Up',
                  pageId: SignUpScreen.id,
                ),
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
  final Size size;

  const Background({Key? key, required this.size, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            width: size.width * 0.3,
            top: 0,
            left: 0,
            child: Image.asset('assets/images/main_top.png'),
          ),
          Positioned(
            width: size.width * 0.3,
            bottom: 0,
            right: 0,
            child: Image.asset('assets/images/login_bottom.png'),
          ),
          child
        ],
      ),
    );
  }
}
