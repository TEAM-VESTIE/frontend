import 'package:flutter/material.dart';


class UserInfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => UserInfoPageState();
}

class UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          child: Text("사용자정보 페이지 입니다."),
        )
    );
  }


}
