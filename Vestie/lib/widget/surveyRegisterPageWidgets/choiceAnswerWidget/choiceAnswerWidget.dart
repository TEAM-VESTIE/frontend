import 'package:flutter/material.dart';
import 'package:vestie/services/settingValues.dart';

//widgets
import 'choiceAnswerTextField.dart';
import 'addOptionBtn.dart';


class ChoiceAnswerWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => ChoiceAnswerWidgetState();
}

class ChoiceAnswerWidgetState extends State<ChoiceAnswerWidget> {
  List<Widget> optionList = [];
  bool isMultiChoice=false;

  void addOption(){
    setState(() {
      optionList.add(ChoiceAnswerTextField());
    });
  }

  void checkIsMultiChoice(value){
    setState(() {
        isMultiChoice = value ?? false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
        Row(
          children: [
              Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                  checkColor: Color(Primary),
                  activeColor: Color(0xFFF4F5FC),
                  side: BorderSide(color: Color(Primary)),
                  value: isMultiChoice,
                  onChanged: checkIsMultiChoice),
            Text("중복선택", style: TextStyle(color: Color(0xFF5C5C5C)),),
            SizedBox(height: 10,)
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: optionList,
        ),
          AddOptionBtn(onPressedFunc: addOption,)
        ]
      )
    );
  }
}


