// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String buttontext;
  final buttontapped;
  final color;
  
  Buttons({required this.buttontext, this.buttontapped,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height:10,
      margin: const EdgeInsets.all(20.0),
      alignment: Alignment.center,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        
        color: color,
        shape: BoxShape.circle,
         boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 2.0), //(x,y)
                blurRadius: 2.0,
              ),
            ],
      ),
      child: TextButton(onPressed: buttontapped,
       child: Text(
        buttontext,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black),
          ),
          ),
    );
  }
}


