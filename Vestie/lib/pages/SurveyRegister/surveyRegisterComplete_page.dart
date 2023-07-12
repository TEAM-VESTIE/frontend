import 'package:flutter/material.dart';
import 'package:vestie/services/settingValues.dart';
import '../../widget/widgets4AllPage/buttons/longRoundedButton.dart';


class SurveyRegisterCompletetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SurveyRegisterCompletetPageState();
}

class SurveyRegisterCompletetPageState extends State<SurveyRegisterCompletetPage> {





  @override
  Widget build(BuildContext context) {

    void move2FirstApp(){
      Navigator.pushNamedAndRemoveUntil(context, '/firstApp', (route) => false);
    }

    return Scaffold(
      backgroundColor:Color(0xFF6875FF) ,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox(height: 10,)),
              Image.asset(
                  'assets/images/logo_white.png',
              width: 70,),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Text("설문 등록이 완료되었습니다.",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              ),
              Expanded(child: SizedBox(height: 10,)),

              LongRoundedButton(btn_title: "링크 공유하기", onPressedFunc: (){}, text_color: Primary, bnt_color: TextBright),
              SizedBox(height: 10,),
              LongRoundedButton(btn_title: "메인 페이지로 이동", onPressedFunc: move2FirstApp, text_color: TextBright, bnt_color: Primary,),
              SizedBox(height: 20,),



            ],
          )
        )
    );
  }


}
