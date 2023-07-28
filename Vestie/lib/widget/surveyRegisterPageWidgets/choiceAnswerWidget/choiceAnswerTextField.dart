import 'package:flutter/material.dart';

import '../../../services/settingValues.dart';

class ChoiceAnswerTextField extends StatefulWidget{
  final String choice_text='';

  @override
  State<StatefulWidget> createState() => ChoiceAnswerTextFieldState();
}

class ChoiceAnswerTextFieldState extends State<ChoiceAnswerTextField>{
  String choiceFieldValue = '';
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 0, 7),
      height: 30,
      width: 250,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(Primary),
          width: 1.5
        ),
        borderRadius: BorderRadius.circular(22.0),
      ),
      child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 200,
                margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
                child: TextField(
                  controller: _textEditingController,
                  style: TextStyle(color: Color(TextDark),
                      fontSize: 12),
                  onChanged: (value){
                    setState(() {
                      choiceFieldValue = value;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(SignUpTextField),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                  width: 40,
                  height: 30,
                  child: IconButton(
                      onPressed: (){
                        setState(() {
                          _textEditingController.clear();
                        });
                      },
                      icon: Icon(Icons.close_rounded),iconSize: 15, color: Color(Primary))
              ),
            ],),
    );


  }

}