// ignore_for_file: prefer_const_constructors

import 'package:calculator_app/calculator_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        elevation: 1,
        title: Text("Calculator App",
        style: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          color: Colors.lightBlue,
          height: 15,
        ),
        ),
      ),
      body: CalculatorPage(),
    );
  }
}