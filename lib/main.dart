// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'multiplication _table.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: MultiplicationTable());
  }
}
class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   color: Colors.red,
        //   height: 60,
        //   width: 200,
        //   child: const Column(
        //     children: [
        //       Text(
        //         "Basanta  is don!!!!!!!!!!!",
        //         textDirection: TextDirection.ltr,
        //         textAlign: TextAlign.center,
        //       ),
        //       Text(
        //         "who is  don ?",
        //         textDirection: TextDirection.rtl,
        //         textAlign: TextAlign.center,
        //       ),
        //     ],
        //   ),
        // ),
        // Container(
        //   height: 30,
        //   width: 30,
        //   color: Colors.blue,
        //   child: const Column(
        //     children: [
        //       Text(
        //         "Ashley! Look at me bandhoba tobha",
        //         textDirection: TextDirection.ltr,
        //         textAlign: TextAlign.start,
        //       ),
        //       Text(
        //         "Basanta",
        //         textDirection: TextDirection.ltr,
        //         textAlign: TextAlign.end,
        //         style: TextStyle(
        //           fontSize: 25,
        //           fontWeight: FontWeight.bold,
        //           color: Color.fromARGB(255, 76, 158, 175),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        Container(
          height: 400,
          width: 400,
          color: Color.fromARGB(255, 237, 242, 243),
          child: Column(
            children: [
              // SizedBox(
              //   height: 100,
              //   width: 400,
              // ),
              Image.network(
                "https://api.trishaheed.edu.np/storage/students/B26Imna4RMuIT70aAbZD8CHZ5A4j8mMaetvN5DA9.jpg",
                height: 100,
                width:400,
              ),
              Text(
                "Basanta Chapagain",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 76, 91, 175),
                ),
              ),
              Text(
                "student,class 10",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.orange,
                ),
              ),
              Text(
                """What makes this school special is the sense of community. The teachers are genuinely invested in our success, and the environment is supportive, both academically and emotionally I feel prepared for the future because of the values and skills I’ve learned here.""",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}
