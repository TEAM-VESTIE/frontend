import 'package:flutter/material.dart';

//widgets
import 'surveyListItemTitle_widget.dart';

//pages
import '../../pages/SurveyParticipate/surveyParticipate_page.dart';

class SurveyListItem extends StatelessWidget {
  final String title;
  final String d_day;


  const SurveyListItem({
    required this.title,
    required this.d_day
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SurveyParticipatePage()),
        );
      },

      child: Container(
        width: 350,
        // height: 145,
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),

        child:
        Column(
          children: [
            ListTile(
              title: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  ListItemTitle(d_day: d_day, title: title),
                  SizedBox(width: 55,),
                  Center(
                    child:Icon(Icons.arrow_forward_ios_rounded,
                      color: Color(0xFF6875FF),
                      size: 18,),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 1, // 선의 높이 설정
              width: 340, // 선의 너비 설정
              color: Color(0xFFEEEEEE), // 선의 색상 설정
            )
          ],
        )
      ),
    );
  }
}
