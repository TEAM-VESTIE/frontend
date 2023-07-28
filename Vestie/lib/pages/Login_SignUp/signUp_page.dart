import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vestie/services/settingValues.dart';
import 'package:http/http.dart' as http;


//widgets
import '../../widget/signUpPageWidgets/signUpTextField.dart';
import '../../widget/widgets4AllPage/buttons/longRoundedButton.dart';

//page
import '../Login_SignUp/login_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  String userId='';
  String pw ='';
  String username ='';

  void idInputChange(String v){
    setState(() {
      userId = v;
    });
  }

  void pwInputChange(String v){
    setState(() {
      pw = v;
    });
  }

  void usernameInputChange(String v){
    setState(() {
      username = v;
    });
  }

  void signUp(){
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => LoginPage()));
  }

  Future<void> signUpPost() async{
    var apiUrl = Uri.parse('https://example.com/api/members');

    Map<String, dynamic> requestData ={
      "username" : userId,
      "password" : pw,
      "name": username
    };
    try{
      var response = await http.post(
        apiUrl,
        headers:{
          'Content-Type': 'application/json', // JSON 형태로 데이터 전송시 지정
          // 'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
        },
        body:jsonEncode(requestData),
      );

      if(response.statusCode == 200){
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginPage()));
      }else{
        print("Post ER: ${response.statusCode}");
      }
    }catch(e){
      print('$e');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Column(
            children: [
              Column(// 상단 페이지 text
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("vestie",style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'logo',
                          color: Color(Primary)
                      ),),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(" 에 오신 것을",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),)

                    ],),
                  Text("환영합니다 :)",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Text("사용하실 아이디와 비밀번호를 입력해주세요",style:
                  TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                      color: Color(SignUpExplainText)
                  ),),
                  SizedBox(height: 35,)
                ],
              ),

              SignUpTextFiled(label_text: "아이디", obscureText_value: false, onChangeFunc: idInputChange),
              SizedBox(height: 20,),
              SignUpTextFiled(label_text: "비밀번호", obscureText_value: true, onChangeFunc: idInputChange),
              Container(
                margin: EdgeInsets.fromLTRB(13, 3, 13, 20),
                child: Text("비밀번호는 영어, 숫자, 특수문자를 포함하여 8~13자 이내로 설정해주세요",
                  style: TextStyle(fontSize: 10,color: Color(SignUpExplainText)),),),

              SignUpTextFiled(label_text: "비밀번호 확인", obscureText_value: true, onChangeFunc: idInputChange),
              SizedBox(height: 20,),

              SignUpTextFiled(label_text: "사용자 이름", obscureText_value: false, onChangeFunc: usernameInputChange),

              Expanded(child: SizedBox(height: 10,)),
              LongRoundedButton(btn_title: "다음으로", onPressedFunc: signUp, text_color: TextBright,bnt_color: Primary),

              SizedBox(height: 20,)
            ],
          ),
        )
    );
  }


}