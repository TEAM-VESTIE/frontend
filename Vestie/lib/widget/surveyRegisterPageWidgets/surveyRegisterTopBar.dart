import 'package:flutter/material.dart';

//widgets

//pages
import '../../pages/SurveyParticipate/surveyList_page.dart';
import '../../pages/appFirstPage.dart';
import '../../pages/SurveyRegister/surveyRegisterComplete_page.dart';

class SurveyRegisterTopBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    void move2SurveyList(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => AppfirstPages()));
    }

    void move2CompleteRegister(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => SurveyRegisterCompletetPage()));
    }

    ButtonStyle txtBtnStyle = ButtonStyle(
      overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Color(0xFFF4F5FC); // hover 상태일 때의 색상
                }
                return Colors.white; // hover 상태가 아닐 때의 색상 (기본 값)
            },
      ),
    );


    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFF3F3F3),
            width: 2.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            style:txtBtnStyle,
            onPressed: move2SurveyList,
            child: Text('취소',style: TextStyle(
              color: Color(0xFF8E8E8E),
              fontSize: 11
            ),),
          ),Text("설문 작성",style: TextStyle(
              color: Color(0xFF454545),
              fontSize: 12,
            fontWeight: FontWeight.bold
          ),),
          TextButton(
            style:txtBtnStyle,
            onPressed: move2CompleteRegister,
            child: Text('설문 등록',style: TextStyle(
                color: Color(0xFF6875FF),
                fontSize: 11
            ),),
          )
        ],
      ),
    );
      
  }
}
