import 'package:flutter/material.dart';

//widgets
import "../widget/pageTitleWidgets/pageTitleWidget.dart";
import "../widget/surveyParticipationWidgets/shortFormSurvey.dart";
import "../widget/widgets4AllPage/buttons/midRoundedButton.dart";

//pages
import "../pages/completeSurvey_page.dart";
import "../pages/surveyList_page.dart";

class SurveyParticipatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void move2SurveyCompletePage(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => CompleteSurveyParticipatePage()));
    }

    void move2SurveyListPage(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => SurveyListPage()));
    }

    return Scaffold(
      body:Column(
            children: [
              pageTitleWidget(title: "설문을 시작합니다."),
              SizedBox(height: 30,),
              ShortFormSurvey("surveyUrl"),
              SizedBox(height: 250,),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 220,),
                    MidRoundedButton(btn_title: "이전", onPressedFunc: move2SurveyListPage),
                    MidRoundedButton(btn_title: "완료", onPressedFunc: move2SurveyCompletePage)
                  ],

                ),)

            ],
          )
    );
  }
}
