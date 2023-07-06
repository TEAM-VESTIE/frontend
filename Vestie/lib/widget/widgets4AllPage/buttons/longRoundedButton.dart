import 'package:flutter/material.dart';

//widgets
class LongRoundedButton extends StatelessWidget {
  final String btn_title;
  final VoidCallback onPressedFunc;
  final int text_color;

  const LongRoundedButton({
    required this.btn_title,
    required this.onPressedFunc,
    required this.text_color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton (
      onPressed: onPressedFunc,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          Size(327.0, 50.0),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
            Color(text_color)
        ),
      ),
      child: Text(btn_title,style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      ),
    );
  }
}
