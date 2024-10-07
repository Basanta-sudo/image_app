import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  double first = 0;
  double second = 0;
  double third = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                  label: Text("First number"),
                  hintText: "Enter your first number"),
            ),
            TextFormField(
              controller: textEditingController1,
              decoration: InputDecoration(
                  label: Text("Second number"),
                  hintText: "Enter your second number"),
            ),
            TextFormField(
              controller: textEditingController2,
              decoration: InputDecoration(
                  label: Text("Third number"),
                  hintText: "Enter your third number"),
            ),
            Row(
              children: [
                InkWell(
              onTap: () {
                print(textEditingController.text);
                print(textEditingController1.text);
                print(textEditingController2.text);
                first = double.parse(textEditingController.text);
                second = double.parse(textEditingController1.text);
                third = double.parse(textEditingController2.text);
                setState(() {
                  result = first/second/third;
                });
              },
              child: Container(
                color: Colors.blue,
                height: 40,
                width: 110,
                margin: EdgeInsets.all(50),
                child: const Column(
                  children: [
                    Text(
                      "Division",
                      style: TextStyle(color: Colors.white),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
                InkWell(
              onTap: () {
                print(textEditingController.text);
                print(textEditingController1.text);
                print(textEditingController2.text);
                first = double.parse(textEditingController.text);
                second = double.parse(textEditingController1.text);
                third = double.parse(textEditingController2.text);
                setState(() {
                  result = first*second*third;
                });
              },
              child: Container(
                color: Colors.blue,
                height: 40,
                width: 110,
                margin: EdgeInsets.all(50),
                child: const Column(
                  children: [
                    Text(
                      "Multiplication",
                      style: TextStyle(color: Colors.white),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
                InkWell(
              onTap: () {
                print(textEditingController.text);
                print(textEditingController1.text);
                print(textEditingController2.text);
                first = double.parse(textEditingController.text);
                second = double.parse(textEditingController1.text);
                third = double.parse(textEditingController2.text);
                setState(() {
                  result = first +second +third;
                });
              },
              child: Container(
                color: Colors.blue,
                height: 40,
                width: 110,
                margin: EdgeInsets.all(50),
                child: const Column(
                  children: [
                    Text(
                      "Addition",
                      style: TextStyle(color: Colors.white),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
                InkWell(
                  onTap: () {
                    print(textEditingController.text);
                    print(textEditingController1.text);
                    print(textEditingController2.text);
                    first = double.parse(textEditingController.text);
                    second = double.parse(textEditingController1.text);
                    third = double.parse(textEditingController2.text);
                    setState(() {
                      result= first - second - third;
                    });
                  },
                  child: Container(
                    color: Colors.blue,
                    height: 40,
                    width: 110,
                    margin: EdgeInsets.all(50),
                    child: const Column(
                      children: [
                        Text(
                          "Substract",
                          style: TextStyle(color:Colors.white),
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
                color: Colors.blue,
                height: 40,
                width: 120,
                child: Column(
                  children: [
                    Text(
                      "Result :$result",
                      style: TextStyle(color: Colors.white),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
