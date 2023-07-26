import 'package:flutter/material.dart';
import 'package:vestie/services/settingValues.dart';
import 'package:vestie/widget/widgets4AllPage/buttons/longRoundedButton.dart';

//widgets
import 'choiceAnswerTextField.dart';
import 'addOptionBtn.dart';


class ChoiceAnswerWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => ChoiceAnswerWidgetState();
}

class ChoiceAnswerWidgetState extends State<ChoiceAnswerWidget> {
  List<Widget> optionList = [];

  void addOption(){
    setState(() {
      optionList.add(Column(children: [
        ChoiceAnswerTextField(),SizedBox(height: 7,)],));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
        Column(
          children: optionList,
        ),
          AddOptionBtn(onPressedFunc: addOption,)
        ]
      )
    );
  }
}


