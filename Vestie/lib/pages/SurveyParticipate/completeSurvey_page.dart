import 'package:flutter/material.dart';

//widgets
import '../../widget/pageTitleWidgets/pageTitleWidget.dart';
import '../../widget/widgets4AllPage/buttons/longRoundedButton.dart';

//pages
import 'surveyList_page.dart';


class CompleteSurveyParticipatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void move2SurveyListPage(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => SurveyListPage()));
    }

    return Scaffold(
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/surveyCompleteImg.png'),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            color: Color.fromRGBO(112, 112, 112, 0.75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            InkWell(
                              onHover: (value) => {
                              },
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) => SurveyListPage()));
                              },
                              child:Icon(Icons.close, color: Colors.white,),
                          ),
                          GestureDetector(
                            child: Icon(Icons.file_upload_outlined, color: Colors.white),
                          )
                        ],
                      ),)
                    ],
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsets.fromLTRB(15, 45, 0, 10),
                  child: Column(
                    children: [
                      Text("설문조사가 완료되어따.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ),
                SizedBox(height: 350,),
                LongRoundedButton(btn_title: "홈 화면으로 돌아가기", onPressedFunc: move2SurveyListPage, text_color: 0xFF6875FF,),
                SizedBox(height: 10,),

              ],
            ),
          )
        )
    );
  }

}


