import 'package:flutter/material.dart';

import './screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Character App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.white,          
        ),
      ),
      routes: {
        '/': (BuildContext ctx) => MainScreen(),
      },
    );
  }
}
