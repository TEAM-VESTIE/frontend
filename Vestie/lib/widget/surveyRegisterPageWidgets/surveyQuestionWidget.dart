import 'dart:ffi';

import 'package:flutter/material.dart';

//widgets
import 'shortAnswerWidget.dart';
import 'choiceAnswerWidget/choiceAnswerWidget.dart';

class SurveyQuestionWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => SurveyQuestionWidgetState();
}

class SurveyQuestionWidgetState extends State<SurveyQuestionWidget> {

  final _questionModes =['객관식','주관식'];

  String _questionTitle='';
  String _selectedMode='';
  
  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedMode = _questionModes[0];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(//전체 container
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xFFF4F5FC),
      ),
      margin: EdgeInsets.fromLTRB(15,7,15,7),
      padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 5),
      child: Column(
        children: [
          Container( // 헤더 버튼
            alignment: Alignment.topCenter,
            height: 10,
            child: IconButton(
              icon: Icon(Icons.menu, color: Color(0xFFCDCDCD), size: 20,),
              onPressed: (){

              },
            ),

          ),
          Container( // 질문 textField + 드롭박스
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(// 질문 textfield
                  height: 50,
                  width: 200,
                  child: TextField(
                    maxLines: 2,
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "질문",
                        hintStyle: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF393939))),
                    onChanged: (v){setState(() {_questionTitle=v;});},
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),// question Mode 버튼
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF6875FF),
                      width: 1,
                    ),borderRadius: BorderRadius.circular(5)
                  ),
                  child: DropdownButton(
                    // menuMaxHeight: 0,
                    // itemHeight: 40,
                    isDense: true,
                    focusColor: Color(0xFFF4F5FC),
                    style: TextStyle(
                      color: Color(0xFF6875FF),
                      fontSize: 11,
                    ),
                    icon: Icon(Icons.arrow_drop_down_sharp,color: Color(0xFF6875FF),),
                    value: _selectedMode,
                    items: _questionModes
                        .map((e) => DropdownMenuItem(
                        value: e,

                        child: Text(e)
                    ))
                        .toList(),
                    onChanged: (v){
                      setState(() {
                        _selectedMode=v!;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(// 질문 mode 별 widget
            // height: ,
            child: _selectedMode=='객관식'?ChoiceAnswerWidget():ShortAnswerWidget(),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: 330,
            height: 1,
            color: Color(0xFFB9B9B9),
          ),
          Container( // 하단 추가 버튼
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.delete,color: Color(0xFF6875FF),size: 16),
              ],
            ),
          ),
        ],
      ),

    );
  }


}
