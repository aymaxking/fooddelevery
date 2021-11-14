import 'package:flutter/cupertino.dart';
import 'package:fooddelevery/firebase/auth.dart';

class LoginBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gesture detector for facebook Login

              // Gesture detector for the Google icon
              GestureDetector(
                  onTap: () {
                    // Call the a method to sign in with Google
                    AuthService().signInWithGoogle();
                  },
                  child: Image(width: 55, image: AssetImage('assets/icons/google_logo.png'))
              ),
            ],
          ),
        ],
      ),
    );
  }
}