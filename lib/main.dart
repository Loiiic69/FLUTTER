import 'package:flutter/material.dart';
import 'package:namer_app/pages/OnBoardingScreen/OnBoardingScreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        title: "",
        debugShowCheckedModeBanner: false,
        home: OnBoardingScreen(),
      );
    }
}