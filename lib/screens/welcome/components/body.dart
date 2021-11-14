
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelevery/components/search_box.dart';
import 'package:fooddelevery/screens/menu/components/list.dart';
import 'package:fooddelevery/screens/places/components/place_list.dart';

class WelcomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    User result = FirebaseAuth.instance.currentUser;

    return null;
  }
}
