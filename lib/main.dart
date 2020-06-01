import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:puzzleapp/home_page.dart';

void main() {
  //hide status bar .
  SystemChrome.setEnabledSystemUIOverlays ([]);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //hide status bar .
    //SystemChrome.setEnabledSystemUIOverlays ([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}