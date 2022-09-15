import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signin_signup/contants/contants.dart';
import 'package:signin_signup/screens/login_screen.dart';
import 'package:signin_signup/widgets/welcome_widgets/account_status_widget.dart';
import 'package:signin_signup/widgets/welcome_widgets/rounded_button_widget.dart';
import 'package:signin_signup/widgets/welcome_widgets/rounded_textfield_widget.dart';
import 'package:signin_signup/widgets/welcome_widgets/social_icon_widget.dart';
import 'package:signin_signup/widgets/welcome_widgets/svg_icons_widget.dart';
import 'package:signin_signup/widgets/welcome_widgets/top_text_widget.dart';

class SignUpScreen extends StatefulWidget {
  static const id = '/sign_up_screen';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                    text: 'SIGN UP',
                  ),
                  SizedBox(height: size.height * 0.05),
                  const SvgIconsWidget(
                    iconSource: 'signup',
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
                    text: 'SIGN UP',
                    textColor: Colors.white,
                    color: kPrimaryColor,
                    marginTop: size.height * 0.05,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  const AccountStatusWidget(
                      firstText: 'Already have an account ?',
                      secondText: 'Login',
                      pageId: LoginScreen.id),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: size.width * 0.8,
                    child: Row(
                      children: const [
                        Expanded(
                            child: Divider(
                          height: 1.5,
                          color: Color(0xFFD9D9D9),
                        )),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'OR',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          height: 1.5,
                          color: Color(0xFFD9D9D9),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialIcons(
                          icon: 'facebook',
                          onPress: () {},
                        ),
                        SocialIcons(
                          icon: 'twitter',
                          onPress: () {},
                        ),
                        SocialIcons(
                          icon: 'google',
                          onPress: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
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
            child: Image.asset('assets/images/signup_top.png'),
          ),
          Positioned(
            width: size.width * 0.2,
            bottom: 0,
            left: 0,
            child: Image.asset('assets/images/main_bottom.png'),
          ),
          child
        ],
      ),
    );
  }
}
