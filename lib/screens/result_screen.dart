import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  static String id = "resultScreen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("BMI Calculator"),),
        body: Center(
          child:Text("Hello"),),
      ),
    );
  }
}
