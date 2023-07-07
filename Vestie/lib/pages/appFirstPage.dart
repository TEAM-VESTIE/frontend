import 'package:flutter/material.dart';

//widgets
import '../widget/widgets4AllPage/underbar/bottomBarWidget.dart';

//pages
import '../pages/login_page.dart';
import '../pages/surveyList_page.dart'; //index2
import '../pages/surveyEnroll_page.dart';//index3 작성 페이지
import '../pages/surveyResult_page.dart';
import '../pages/userInfo_page.dart';


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
            SurveyEnrollPage(),
            SurveyResultPage(),
            UserInfoPage()

          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }


}
