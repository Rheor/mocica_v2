import 'package:flutter/material.dart';
import './mocicaAppBody.dart';
import './mocicaAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MOCICA V2',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: MocicaAppBar(),
          body: MocicaAppBody(),
        ));
  }
}
