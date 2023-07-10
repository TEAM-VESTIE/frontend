import 'package:flutter/material.dart';

//widgets
class AddSurveyQuestionBtn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF6875FF),
        borderRadius: BorderRadius.circular(7)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline,color: Colors.white,), color: Color(0xFF6875FF),),
          IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera_back,color: Colors.white,),color: Color(0xFF6875FF),),
          IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_outlined,color: Colors.white,),color: Color(0xFF6875FF),),
        ],
      ),
    );
  }
}
