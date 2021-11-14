import 'package:flutter/material.dart';
import 'package:fooddelevery/components/bottom_nav_bar.dart';
import 'package:fooddelevery/components/app_bar.dart';
import 'package:fooddelevery/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: HomeBody(),
    );
  }
}
