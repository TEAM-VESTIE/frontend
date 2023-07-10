import 'package:flutter/material.dart';

//widgets
import '../widget/widgets4AllPage/underbar/bottomBarWidget.dart';

//pages
import 'Login_SignUp/login_page.dart';
import 'SurveyParticipate/surveyList_page.dart'; //index2
import 'SurveyRegister/surveyRegister_page.dart';//index3 작성 페이지
import 'SurveyDataset/surveyResult_page.dart';
import 'UserInfo/userInfo_page.dart';


class AppfirstPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppfirstPagesState();
}

class AppfirstPagesState extends State<AppfirstPages> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            LoginPage(),
            SurveyListPage(),
            SurveyRegisterPage(),
            SurveyResultPage(),
            UserInfoPage()

          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }


}
