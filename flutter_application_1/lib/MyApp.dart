import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Controller.dart';
import 'Home_Page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(
        child: HomePage(),
      ),
    );
  }
}
