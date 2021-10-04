import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_page.dart';
import 'package:untitled1/screens/secondScreen/searchPage.dart';

void main()=> runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: search(),
    );
  }
}

