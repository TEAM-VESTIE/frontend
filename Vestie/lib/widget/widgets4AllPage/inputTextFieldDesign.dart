import 'package:flutter/material.dart';

class InputTextWidget extends StatefulWidget {
  const InputTextWidget({super.key});

  @override
  State<StatefulWidget> createState() => InputTextWidgetState();
}

class InputTextWidgetState extends State<InputTextWidget>{
  String inputText="";


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text("뿅")
    );
  }


}




