// import 'dart:ffi';

import 'package:flutter/material.dart';

//widgets
class LoginTextFiled extends StatefulWidget {
  final String label_text;
  final Icon prefix_icon;
  final bool obscureText_value;
  final ValueChanged<String> onChangeFunc;

  const LoginTextFiled({
    required this.label_text,
    required this.prefix_icon,
    required this.obscureText_value,
    required this.onChangeFunc

  });

  @override
  State<StatefulWidget> createState() => LoginTextFiledState();
}

class LoginTextFiledState extends State<LoginTextFiled> {


  late String label_text;
  late Icon prefix_icon;
  late bool obscureText_value;
  String _textFieldValue = '';

  @override
  void initState(){
    super.initState();
    label_text = widget.label_text;
    prefix_icon = widget.prefix_icon;
    obscureText_value = widget.obscureText_value;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child:TextField(
        onChanged: (value){
          setState(() {
            _textFieldValue = value;
          });
          widget.onChangeFunc(_textFieldValue);
        },
        obscureText: obscureText_value,
        decoration: InputDecoration(
          prefixIcon: prefix_icon,
          labelText: label_text,
          labelStyle: TextStyle(
            color: Color(0XFF6E78FF),
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(0.4),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder:
          OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }


}
