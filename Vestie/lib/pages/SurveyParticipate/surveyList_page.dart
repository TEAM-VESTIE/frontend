import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Login_SignUp/login_page.dart';

//widgets
import '../../widget/surveyListWidgets/surveyListItem_widget.dart';
import '../../widget/pageTitleWidgets/pageTitleWidget.dart';
import '../../widget/surveyListWidgets/surveyList_widget.dart';
import '../../widget/widgets4AllPage/buttons/midRoundedButton.dart';
import '../../widget/widgets4AllPage/underbar/bottomBarWidget.dart';

import '../Login_SignUp/login_page.dart';

class SurveyListPage extends StatefulWidget {
  const SurveyListPage({super.key});
  @override
  State<StatefulWidget> createState() => SurveyListPageState();
 }


 class SurveyListPageState extends State<SurveyListPage>{

   void move2Login(){
     Navigator.pushReplacement(context,
         MaterialPageRoute(builder: (context) => LoginPage()));
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.white,
        child:
        Column(children: [
          pageTitleWidget(title: "설문조사 참여"),
          SizedBox(height: 20,),
          SurveyList(),
          SizedBox(height: 100,),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 20),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 100,),
              MidRoundedButton(btn_title: "완료", onPressedFunc: move2Login)
            ],

          ),
          ),
        ]
        )
      ),
    );
  }

 }
