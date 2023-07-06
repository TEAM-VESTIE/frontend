
import 'package:flutter/material.dart';
import 'surveyList_page.dart';

//widgets
import '../widget/widgets4AllPage/buttons/longRoundedButton.dart';
import "../widget/loginPageWidgets/loginTextField.dart";

class LoginPage extends StatefulWidget{
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  String userId ='';
  String pw ='';

  Icon idIcon = Icon(Icons.person_outlined,color: Color(0xFF6A76FF));
  Icon pwIcon = Icon(Icons.lock_outline_rounded,color: Color(0xFF6A76FF));

  void idInputChange(String value){
    setState(() {
      userId = value;
    });
  }
  void pwInputChange(String value){
    setState(() {
      pw = value;
    });
  }
  void login(){
    print('Id: $userId');
    print('Password: $pw');
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SurveyListPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        padding: EdgeInsets.fromLTRB(31, 140, 31,16),

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // Colors.black,
              Color(0xFF6575FF),
              Color(0xFF897FFF),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(
              'vestie',
              style: TextStyle(
                fontFamily: 'logo',
                color: Colors.white,
                fontSize: 45,
              ),
            ),
            SizedBox(height: 25.0),
            LoginTextFiled(label_text:"id",prefix_icon:idIcon,obscureText_value:false,onChangeFunc: idInputChange,),
            SizedBox(height: 8.0),
            LoginTextFiled(label_text:"password",prefix_icon:pwIcon,obscureText_value:true,onChangeFunc:pwInputChange,),
            SizedBox(height: 16.0),
            LongRoundedButton(btn_title: "Login", onPressedFunc: login,text_color: 0xFF4E44EC,),
            SizedBox(height: 14.0),
            Text(
              '회원가입',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}