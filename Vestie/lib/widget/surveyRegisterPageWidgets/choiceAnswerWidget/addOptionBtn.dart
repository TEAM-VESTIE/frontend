import 'package:flutter/material.dart';
import 'package:vestie/services/settingValues.dart';


class AddOptionBtn extends StatelessWidget {
  final VoidCallback onPressedFunc;

  const AddOptionBtn({
    required this.onPressedFunc,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton (
      onPressed: onPressedFunc,
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(
            Size(327.0,35.0),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
              Color(0xFFF4F5FC)
          ),
          side: MaterialStateProperty.all(
            BorderSide(width: 0.7, color: Color(Primary)), // 원하는 border 두께와 색상
          ),
          elevation: MaterialStateProperty.all(0)
      ),
      child: Text("+ 보기 추가",style: TextStyle(
          color: Color(0xFF8B8B8B),
          fontSize: 14,
          fontWeight: FontWeight.w300
      ),
      ),
    );
  }


}