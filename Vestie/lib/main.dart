import 'package:flutter/material.dart';

// import 'pages/surveyList_page.dart';
import 'pages/Login_SignUp/login_page.dart';
import 'pages/Login_SignUp/signUp_page.dart';
import 'pages/appFirstPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'text',

      ),
        initialRoute: '/',
        routes: {
          '/login': (context) => LoginPage(),
          '/signUp': (context) => SignUpPage(),
          '/firstApp': (context) => AppfirstPages(),
        }// 특정 페이지인 FirstAppScreen 등록

    );
  }
}



