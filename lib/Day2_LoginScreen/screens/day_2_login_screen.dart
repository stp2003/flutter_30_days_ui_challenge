import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/components/footer.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/components/header.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/components/page_title_bar.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/utils/constants.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/widgets/rounded_button.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/widgets/rounded_icon.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/widgets/rounded_input_fields.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/widgets/rounded_password_field.dart';

class Day2LoginScreen extends StatefulWidget {
  const Day2LoginScreen({super.key});

  @override
  State<Day2LoginScreen> createState() => _Day2LoginScreenState();
}

class _Day2LoginScreenState extends State<Day2LoginScreen> {
  //** for switch list tile ->
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    //**
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Header(
                  imgUrl: "assets/images/login.png",
                ),
                const PageTitleBar(title: 'Login to your account'),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 15),
                        iconButton(context),
                        const SizedBox(height: 20),
                        const Text(
                          "or use your email account",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontFamily: 'poppins_medium',
                          ),
                        ),
                        Form(
                          child: Column(
                            children: [
                              const RoundedInputField(
                                hintText: "Email",
                                icon: Icons.email,
                              ),
                              const RoundedPasswordField(),
                              switchListTile(),
                              RoundedButton(
                                text: 'LOGIN',
                                press: () {},
                              ),
                              const SizedBox(height: 10.0),
                              Footer(
                                title: "Don't have an account?",
                                navigatorText: "Register here",
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         const SignUpScreen(),
                                  //   ),
                                  // );
                                },
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Forgot password?',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 14.0,
                                  fontFamily: 'poppins_bold',
                                  letterSpacing: 0.8,
                                ),
                              ),
                              const SizedBox(height: 20.0),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //??
  switchListTile() {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 40),
      child: SwitchListTile(
        dense: true,
        title: const Text(
          'Remember Me',
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'poppins_medium',
            letterSpacing: 0.7,
          ),
        ),
        value: _lights,
        activeColor: kPrimaryColor,
        onChanged: (bool value) {
          setState(() {
            _lights = value;
          });
        },
      ),
    );
  }
}

//??
iconButton(BuildContext context) {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RoundedIcon(imageUrl: "assets/images/facebook.png"),
      SizedBox(width: 20.0),
      RoundedIcon(imageUrl: "assets/images/twitter.png"),
      SizedBox(width: 20.0),
      RoundedIcon(imageUrl: "assets/images/google.jpg"),
    ],
  );
}
