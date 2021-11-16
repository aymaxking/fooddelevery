import 'package:flutter/material.dart';
import 'package:fooddelevery/components/rounded_date_field.dart';
import 'package:fooddelevery/constants.dart';
import 'package:fooddelevery/screens/Signup/components/background.dart';
import 'package:fooddelevery/screens/details/components/app_bar.dart';
import 'package:fooddelevery/screens/details/components/body.dart';
import 'package:fooddelevery/screens/menu/components/body.dart';
import 'package:fooddelevery/screens/places/components/body.dart';
import 'package:fooddelevery/screens/submenu/components/body.dart';
import 'package:fooddelevery/screens/welcome/components/body.dart';

import 'components/rounded_button.dart';
import 'components/rounded_input_field.dart';
import 'components/rounded_input_phone_field.dart';
import 'components/text_field_container.dart';

enum Sex { homme, femme }

class TP4 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<TP4> {

  String _value ='Date de naissance';
  Future _selectDate() async {
    DateTime picked = await showDatePicker(context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1900),
        lastDate: new DateTime(2021)
    );
    if(picked != null) setState(() => _value = picked.toString());
  }

  Sex _character = Sex.homme;


  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SignUpBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Formulaire",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              RoundedInputField(
                hintText: "Nom",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Prenom",
                onChanged: (value) {},
              ),
              RoundedInputPhoneField(
                hintText: "Numero Telephone",
                onChanged: (value) {},
              ),
              RoundedDateField(
                hintText: _value,
                onChanged: (value) {},
              ),

              TextFieldContainer(
                child: new ElevatedButton(onPressed: _selectDate, child: new Text('Choisir')),
              ),

              RoundedButton(
                text: "Valider",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
