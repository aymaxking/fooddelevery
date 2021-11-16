import 'package:flutter/material.dart';
import 'package:fooddelevery/components/text_field_container.dart';

import '../constants.dart';


class RoundedDateField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final Color color, textColor;
  const RoundedDateField({
    Key key,
    this.hintText,
    this.icon = Icons.date_range,
    this.onChanged,
    this.color = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        enabled: false,
        onChanged: onChanged,
        onTap: (){},
        cursorColor: Colors.white,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.black,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
