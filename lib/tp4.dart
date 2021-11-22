// import 'package:flutter/material.dart';
// import 'package:fooddelevery/components/rounded_date_field.dart';
// import 'package:fooddelevery/constants.dart';
// import 'package:fooddelevery/screens/Signup/components/background.dart';
// import 'package:fooddelevery/screens/details/components/app_bar.dart';
// import 'package:fooddelevery/screens/details/components/body.dart';
// import 'package:fooddelevery/screens/menu/components/body.dart';
// import 'package:fooddelevery/screens/places/components/body.dart';
// import 'package:fooddelevery/screens/submenu/components/body.dart';
// import 'package:fooddelevery/screens/welcome/components/body.dart';
//
// import 'components/rounded_button.dart';
// import 'components/rounded_input_field.dart';
// import 'components/rounded_input_phone_field.dart';
// import 'components/text_field_container.dart';
//
// enum Sex { homme, femme }
//
// class TP4 extends StatefulWidget {
//   @override
//   _State createState() => new _State();
// }
//
// class _State extends State<TP4> {
//     String result = "";
//
//   void addnumber(String txt){
//     setState(() {
//         result = result + txt;
//     });
//   }
//     void addopeartion(String txt){
//       setState(() {
//         result = result+ " "+ txt;
//       });
//     }
//
//     void calcul(){
//       setState(() {
//         result = result.interpret();
//       });
//     }
//
//     Widget Button(String TxtBtn){
//       return RawMaterialButton(
//         child: Text(
//           TxtBtn,
//           style: TextStyle(fontWeight: FontWeight.normal,
//               fontSize: 18,
//           color: Colors.black),
//         ),
//           onPressed: (){
//         addnumber(TxtBtn);
//       });
//     }
//
//   Widget Button2(String TxtBtn){
//     return RawMaterialButton(
//         child: Text(
//           TxtBtn,
//           style: TextStyle(fontWeight: FontWeight.bold,
//           fontSize: 22,
//               color: Colors.red),
//         ),
//         onPressed: (){
//           if(TxtBtn!="C")
//           addopeartion(TxtBtn);
//           else if(TxtBtn!="=")
//             calcul();
//           else
//             setState(() {
//               result = "";
//             });
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body:
//       Row(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                  TextFieldContainer(
//                    child:
//                    TextField(
//                      obscureText: true,
//                      decoration: InputDecoration(
//                        border: OutlineInputBorder(),
//                        fillColor: Colors.green,
//                        labelText: result,
//                      ),                 ),
//                  )
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Button2('C'),
//                   Button2('()'),
//                   Button2('%'),
//                   Button2('/'),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Button('4'),
//                   Button('5'),
//                   Button('6'),
//                   Button2('*'),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Button('1'),
//                   Button('2'),
//                   Button('3'),
//                   Button2('-'),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Button('7'),
//                   Button('8'),
//                   Button('9'),
//                   Button2('+'),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Button('+/-'),
//                   Button('0'),
//                   Button('.'),
//                   Button2('='),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       )
//     );
//   }
//
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
