import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/components/footer.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/components/header.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/components/page_title_bar.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/screens/day_2_login_screen.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/widgets/rounded_input_fields.dart';
import 'package:flutter_30_days_ui_challenge/Day2_LoginScreen/widgets/rounded_password_field.dart';

import '../../Day2_LoginScreen/widgets/rounded_button.dart';

class Day3SignUpScreen extends StatelessWidget {
  const Day3SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  imgUrl: "assets/images/register.png",
                ),
                const PageTitleBar(title: 'Create New Account'),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 15.0),
                        iconButton(context),
                        const SizedBox(height: 20.0),
                        const Text(
                          "or use your email account",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'poppins_medium',
                            fontSize: 13.0,
                          ),
                        ),
                        Form(
                          child: Column(
                            children: [
                              const RoundedInputField(
                                hintText: "Email",
                                icon: Icons.email,
                              ),
                              const RoundedInputField(
                                hintText: "Name",
                                icon: Icons.person,
                              ),
                              const RoundedPasswordField(),
                              RoundedButton(text: 'REGISTER', press: () {}),
                              const SizedBox(height: 10.0),
                              Footer(
                                title: "Already have an account?",
                                navigatorText: "Login here",
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Day2LoginScreen(),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(height: 20.0),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
