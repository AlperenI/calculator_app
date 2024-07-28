// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:calculator_app/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorPage extends StatefulWidget {
 
  
  const CalculatorPage({ super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}
class _CalculatorPageState extends State<CalculatorPage> {
  
  var userQuestion="";
  var answer="";
  var buttonValue="";

  void equalPresses(){
    String finalQuestion=userQuestion;
    Parser p=Parser();
    Expression exp=p.parse(finalQuestion);
    ContextModel cm=ContextModel();
    double eval=exp.evaluate(EvaluationType.REAL,cm);
    answer=eval.toString();
    
    }
  
  void calculate(){
    
      setState(() {
        if (buttonValue=="1"||buttonValue=="2"||buttonValue=="3"||buttonValue=="4"||buttonValue=="5"||buttonValue=="6"||buttonValue=="7"||buttonValue=="8"||buttonValue=="9"||buttonValue=="0") {
          answer+=buttonValue;
          userQuestion=answer;

        }else if(buttonValue=="/"|| buttonValue=="*"||buttonValue=="-"||buttonValue=="+"){
          answer+=buttonValue;

        }else if(buttonValue=="C"){
          answer="";
        }else if(buttonValue=="="){
          equalPresses();
        }
      });
    }
  
  @override
  Widget build(BuildContext context) {
    
     
    return SafeArea(
      child: Column(
        children: [
          Container(constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width,minHeight: 200 ),
            alignment:Alignment.bottomRight,
          
          child: 
          Text("$answer",maxLines: 5,
          textAlign: TextAlign.right,
          style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: 30),
            ),
            ),
            Divider(color: Colors.black,),
          Expanded(flex: 1,
            child: GridView.count(crossAxisCount: 4,
            primary: true,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            padding: EdgeInsets.all(30),
            children: [
              //butonns will here
              Buttons(color: Colors.white,buttontext: "7",buttontapped: (){
                
                  buttonValue="7";
                  
                  calculate();
                  
                  
                
              }),
              Buttons(color: Colors.white,buttontext: "8",buttontapped: (){
                
                  buttonValue="8";
                  calculate();
                
              }),
              Buttons(color: Colors.white,buttontext: "9",buttontapped: (){
                
                  buttonValue="9";
                  calculate();
                
              }),
              Buttons(color: Colors.white,buttontext: "+",buttontapped: (){
                
                  buttonValue="+";
                  calculate();
                  
                
              }),
              Buttons(color: Colors.white,buttontext: "4",buttontapped: (){
                
                  buttonValue="4"; 
                  calculate();
                
              }),
              Buttons(color: Colors.white,buttontext: "5",buttontapped: (){
                
                  buttonValue="5";
                  calculate();
                
              }),
              Buttons(color: Colors.white,buttontext: "6",buttontapped: (){
                
                  buttonValue="6";
                  calculate();
                
              }),
              Buttons(color: Colors.white,buttontext: "-",buttontapped: (){
                
                  buttonValue="-";
                  calculate();
                
              }),
              Buttons(color: Colors.white,buttontext: "1",buttontapped: (){
                
                  buttonValue="1";
                  calculate();
                  
              }),
              Buttons(color: Colors.white,buttontext: "2",buttontapped: (){
                
                  buttonValue="2";
                  calculate();
                
              }),
              Buttons(color: Colors.white,buttontext: "3",buttontapped: (){
                
                  buttonValue="3";
                  
                  calculate();
                
              }),
              Buttons(color: Colors.white,buttontext: "X",buttontapped: (){
                
                  buttonValue="*";
                  calculate();
                
              }),
              Buttons(color: Colors.redAccent,buttontext: "C",buttontapped: (){
                
                  buttonValue="C";
                  calculate();
              }),
              Buttons(color: Colors.white,buttontext: "0",buttontapped: (){
                
                  buttonValue="0";
                  
                  calculate();
                
              }),
              Buttons(color:Colors.greenAccent,buttontext: "=",buttontapped: (){
                
                  buttonValue="=";
                  calculate();
                  
                
              }),
              Buttons(color: Colors.white,buttontext: "/",buttontapped: (){
                
                  buttonValue="/";
                  calculate();
                
              }),
            ],
            ),
          ),
        ],
      ),
    );
  }
}






