import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelevery/components/already_have_an_account_acheck.dart';
import 'package:fooddelevery/components/rounded_button.dart';
import 'package:fooddelevery/components/rounded_input_field.dart';
import 'package:fooddelevery/components/rounded_input_phone_field.dart';
import 'package:fooddelevery/components/rounded_password_field.dart';
import 'package:fooddelevery/firebase/otp.dart';
import 'package:fooddelevery/screens/Signup/signup_screen.dart';
import 'package:fooddelevery/screens/home/home-screen.dart';
import 'package:fooddelevery/screens/login/components/background.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return LoginBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            // RoundedInputField(
            //   hintText: "Your Email",
            //   onChanged: (value) {},
            // ),
            // RoundedPasswordField(
            //   onChanged: (value) {},
            // ),
            RoundedInputPhoneField(
              hintText: "Phone Number",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return OTPScreen(_controller.text);
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
