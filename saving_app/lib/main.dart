import 'package:flutter/material.dart';
import 'package:saving_app/main_page.dart';
import 'package:saving_app/on_boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saving app',
      routes: {
        OnBoardingPage.nameRoute:(context) => OnBoardingPage(),
        MainPage.nameRoute:(context) => MainPage(),
      },
    );
  }
}