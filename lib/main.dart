import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget myButton(String buttonLabel){

    return Expanded(
      child: OutlinedButton(
          onPressed: (){ },
          child: Text(
            buttonLabel,
            style: TextStyle(
              fontSize: 20,
            ),
            ),
      ),
            );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Column(
          children: [
            Row(
               children: [
              myButton("7"),
              myButton("8"),
              myButton("9"),
              myButton("/"),
               ],
            ),

            Row(
               children: [
              myButton("4"),
              myButton("5"),
              myButton("6"),
              myButton("X"),
               ],
            ),

            Row(
               children: [
              myButton("1"),
              myButton("2"),
              myButton("3"),
              myButton("-"),
               ],
            ),

            Row(
               children: [
              myButton("."),
              myButton("0"),
              myButton("00"),
              myButton("+"),
               ],
            ),

            Row(
               children: [
              myButton("CLEAR"),
              myButton("="),
               ],
            ),
          
          ],
        ),
      ),
    );
    
  }
}