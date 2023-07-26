import 'package:flutter/material.dart';

//widget
import '../../widget/surveyRegisterPageWidgets/surveyRegisterTopBar.dart';
import '../../widget/surveyRegisterPageWidgets/surveyQuestionWidget.dart';
import '../../widget/surveyRegisterPageWidgets/addSurveyQuestionBtnWidget.dart';

//page

class SurveyRegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SurveyRegisterPageState();
}

class SurveyRegisterPageState extends State<SurveyRegisterPage> {

  String surveyTitle='';
  String surveyText='';
  List<Widget> questionList=[SurveyQuestionWidget()];

  void addQuestion(){
    setState(() {
      questionList.add(
        SurveyQuestionWidget(),
      );
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            actions: [],
          title:SurveyRegisterTopBar()
        ),
        body: SingleChildScrollView(child:
        Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,// 전체 column
                  children: [ // 제목입력 + 설문지 세부 내용 입력
                    Container( // 제목을 입력해주세요. : TextField
                      height: 35,
                      // width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "제목을 입력해주세요",
                            hintStyle: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF393939))),
                        onChanged: (v){setState(() {surveyTitle=v;});},
                      ),
                    ),
                    Container(
                      // width: 170,
                      child: TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.multiline,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "설문지 설명을 입력 해주세요",
                            hintStyle: TextStyle(fontSize: 12,
                                color: Color(0xFF5C5C5C))),
                        onChanged: (v){setState(() {surveyText=v;});},
                      ),
                    )
                  ],),),
              Container(

                child: Column(
                  children: questionList,
                ),
              ),
              Container(
                width: 360,
                child: AddSurveyQuestionBtn(onPressedFunc: addQuestion),)

            ],
          ),

        )
        )

    );
  }


}
