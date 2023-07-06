import 'package:flutter/material.dart';

//widget
import '../widgets4AllPage/inputTextFieldDesign.dart';

class ShortFormSurvey extends StatelessWidget {
  String surveyUrl="";

  ShortFormSurvey(String this.surveyUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container( // 설문 질문 container
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: Text(surveyUrl,
                style: TextStyle(
                  fontSize: 15, // 텍스트 크기
                  fontWeight: FontWeight.bold, // 텍스트 굵기
                ),),
            ),
            Container(// 설문 응답 내용 Textfield
              width: 340,
                alignment: Alignment.centerLeft,
                child: TextField(
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                      fontSize: 12
                  ),
                decoration: InputDecoration(
                  labelText: '답변을 입력해주세요',
                  labelStyle: TextStyle(
                    color: Color(0XFFC0C0C0),
                    fontSize: 12
                  ),

                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFC2C2C2)),
                  ),
                ),
              )
            )
          ],
        )
    );
  }
}




