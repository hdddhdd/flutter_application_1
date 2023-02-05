import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/heejung_home_page.dart';
import 'package:flutter_application_1/pages/my_home_page.dart';
import 'package:flutter_application_1/pages/button_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      //Scaffold활용해야 배경이 검정에서 바뀐다.
      //같은 파일 안에 있지 않은 위젯은 맨 위에서 import 해줘야 한다.
      home: ButtonPage(),
    );
  }
}
