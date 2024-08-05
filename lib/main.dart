import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import './pages/home_page.dart';

void main() {
  runApp(const App());
  debugPrintEndFrameBanner = false;
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Moon',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 1.0),
      ),
      home: HomePage(),
    );
  }
}
