import 'package:flutter/material.dart';
import 'package:travel/Description/deccriptionmain_page.dart';
import 'package:travel/Description/icon_page.dart';
import 'package:travel/home/appsicon_page.dart';
import 'package:travel/home/home_page.dart';
import 'package:travel/moment/ravel_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}