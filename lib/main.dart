import 'package:flutter/material.dart';
import 'package:stock_take/screens/navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff0015cf),
        accentColor: Color(0xff00cf29),
      ),
      home: NavigationPage(),
    );
  }
}
