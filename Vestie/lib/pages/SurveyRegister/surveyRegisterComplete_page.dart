import 'package:flutter/material.dart';
import '../../widget/widgets4AllPage/buttons/longRoundedButton.dart';


class SurveyRegisterCompletetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SurveyRegisterCompletetPageState();
}

class SurveyRegisterCompletetPageState extends State<SurveyRegisterCompletetPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Color(0xFF6875FF) ,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/logo_white.png',
              width: 70,),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Text("설문 등록이 완료되었습니다.",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              ),
              SizedBox(height: 10,),
              LongRoundedButton(btn_title: "링크 공유하기", onPressedFunc: (){}, text_color: 0xFF6875FF),
              SizedBox(height: 10,),
              LongRoundedButton(btn_title: "메인 페이지로 이동", onPressedFunc: (){}, text_color: 0xFF6875FF)



            ],
          )
        )
    );
  }


}
