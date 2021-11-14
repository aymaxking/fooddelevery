
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fooddelevery/firebase/auth.dart';
import 'package:fooddelevery/screens/details/components/app_bar.dart';
import 'package:fooddelevery/screens/home/home-screen.dart';

import '../../constants.dart';
import 'components/body.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body:LoginBody(),
    );
  }
}
