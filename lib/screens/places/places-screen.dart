import 'package:flutter/material.dart';
import 'package:fooddelevery/constants.dart';
import 'package:fooddelevery/screens/details/components/app_bar.dart';
import 'package:fooddelevery/screens/details/components/body.dart';
import 'package:fooddelevery/screens/places/components/body.dart';

class PlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: detailsAppBar(),
      body: PlacesBody(),

    );
  }
}
