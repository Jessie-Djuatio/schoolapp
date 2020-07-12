import 'package:flutter/material.dart';
import 'package:schoolapp/login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: LoginPage(),
       theme: ThemeData(
        primarySwatch: Colors.green,
      )
    );
  }
}


