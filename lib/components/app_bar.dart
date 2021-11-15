import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddelevery/constants.dart';
import 'package:fooddelevery/firebase/auth.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    // leading: CircleAvatar(
    //   radius: 50.0,
    //   backgroundColor: Colors.transparent,
    //   //display the user profile image
    //   // backgroundImage: NetworkImage(FirebaseAuth.instance.currentUser.photoURL),
    // ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline4
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Eat",
            style: TextStyle(color: ksecondaryColor,fontSize: 50),
          ),
          TextSpan(
            text: "In",
            style: TextStyle(color: kButtonColor,fontSize: 50),
          ),
          TextSpan(
            // text: FirebaseAuth.instance.currentUser.displayName,
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/logout.svg"),
        onPressed: () {
        },
      ),
    ],
  );
}
