import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/components/already_have_an_account_acheck.dart';
import 'package:fooddelevery/components/rounded_button.dart';
import 'package:fooddelevery/components/rounded_input_field.dart';
import 'package:fooddelevery/components/rounded_input_phone_field.dart';
import 'package:fooddelevery/components/rounded_password_field.dart';
import 'package:fooddelevery/screens/Login/login_screen.dart';
import 'package:fooddelevery/screens/Signup/components/social_icon.dart';

import 'background.dart';
import 'or_divider.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignUpBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),

            RoundedInputPhoneField(
              hintText: "Phone Number",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
