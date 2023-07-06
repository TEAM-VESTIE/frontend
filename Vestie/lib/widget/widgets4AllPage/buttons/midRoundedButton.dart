import 'package:flutter/material.dart';

//widgets
class MidRoundedButton extends StatelessWidget {
  final String btn_title;
  final VoidCallback onPressedFunc;

  const MidRoundedButton({
    required this.btn_title,
    required this.onPressedFunc,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton (
      onPressed: onPressedFunc,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          Size(80.0, 50.0),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
            Color(0xFF6875FF)
        ),
      ),
      child: Text(btn_title,style: TextStyle(
        color: Colors.white,
        fontSize: 12,
      ),
      ),
    );
  }
}
