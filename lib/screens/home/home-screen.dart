import 'package:flutter/material.dart';
import 'package:fooddelevery/components/bottom_nav_bar.dart';
import 'package:fooddelevery/components/app_bar.dart';
import 'package:fooddelevery/screens/home/components/body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget  {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: HomeBody(),
    );
  }

}
