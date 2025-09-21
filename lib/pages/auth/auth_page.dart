import 'package:cardinal_quotes/components/auth_button.dart';
import 'package:cardinal_quotes/components/custom_text_field.dart';
import 'package:cardinal_quotes/components/next_button.dart';
import 'package:cardinal_quotes/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  AuthPage({super.key});
  bool isSignUp = true;
  bool isLogin = false;
  bool canSave = false;
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController usernameTE = TextEditingController();
  TextEditingController createPasswordTE = TextEditingController();
  TextEditingController passwordTE = TextEditingController();
  TextEditingController confirmPasswordTE = TextEditingController();
  TextEditingController emailTE = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (usernameTE.text.isNotEmpty &&
        createPasswordTE.text.isNotEmpty &&
        confirmPasswordTE.text.isNotEmpty &&
        emailTE.text.isNotEmpty &&
        createPasswordTE.text == confirmPasswordTE.text) {
      setState(() {
        widget.canSave = true;
      });
    } else {
      widget.canSave = false;
    }

    if (emailTE.text.isNotEmpty && passwordTE.text.isNotEmpty) {
      widget.canSave = true;
    } else {
      widget.canSave = false;
    }
    return Scaffold(
      backgroundColor: CustomColors.cardWhiteColor,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/signup_top.png',
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/sign_up_bot.png',
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 140,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.isSignUp = true;
                                widget.isLogin = false;
                              });
                            },
                            child: AuthButton(
                              buttonText: "Sign Up",
                              isSignUp: widget.isSignUp,
                            ),
                          ),
                          SizedBox(
                            width: 86,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.isSignUp = false;
                                widget.isLogin = true;
                              });
                            },
                            child: AuthButton(
                              buttonText: "Log In",
                              isSignUp: widget.isLogin,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      widget.isSignUp
                          ? _signUpForm(usernameTE, createPasswordTE,
                              confirmPasswordTE, emailTE)
                          : _logInForm(emailTE, passwordTE),
                      NextButton(canSave: widget.canSave)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _signUpForm(TextEditingController userTE, TextEditingController passTE,
      TextEditingController confirmTE, TextEditingController emailTE) {
    return Column(
      children: [
        CustomTextField(hintText: "Enter your username", tecontroller: userTE),
        SizedBox(
          height: 22,
        ),
        CustomTextField(
          hintText: "Create A Password",
          tecontroller: passTE,
        ),
        SizedBox(
          height: 22,
        ),
        CustomTextField(
          hintText: "Confirm Password",
          tecontroller: confirmTE,
        ),
        SizedBox(
          height: 22,
        ),
        CustomTextField(
          hintText: "Enter your email address",
          tecontroller: emailTE,
        ),
        SizedBox(
          height: 22,
        ),
      ],
    );
  }

  Widget _logInForm(TextEditingController email, pass) {
    return Column(
      children: [
        CustomTextField(
          hintText: "Enter your email address",
          tecontroller: email,
        ),
        SizedBox(
          height: 22,
        ),
        CustomTextField(
          hintText: "Enter Password",
          tecontroller: pass,
        ),
        SizedBox(
          height: 22,
        ),
      ],
    );
  }
}
