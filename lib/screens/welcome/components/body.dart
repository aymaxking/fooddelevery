
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/components/rounded_button.dart';
import 'package:fooddelevery/components/search_box.dart';
import 'package:fooddelevery/constants.dart';
import 'package:fooddelevery/screens/Login/login_screen.dart';
import 'package:fooddelevery/screens/Signup/signup_screen.dart';
import 'package:fooddelevery/screens/menu/components/list.dart';
import 'package:fooddelevery/screens/places/components/place_list.dart';

import 'background.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       "Eat",
            //       style: TextStyle(color: ksecondaryColor,
            //       fontSize: 50),
            //     ),
            //     Text(
            //       "In",
            //       style: TextStyle(color: kPrimaryColor,fontSize: 50
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
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
            RoundedButton(
              text: "SIGN UP",
              color: kButtonColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}