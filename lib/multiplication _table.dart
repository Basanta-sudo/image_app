import 'package:flutter/material.dart';

class MultiplicationTable extends StatefulWidget {
  const MultiplicationTable({super.key});

  @override
  State<MultiplicationTable> createState() => _MultiplicationTableState();
}

class _MultiplicationTableState extends State<MultiplicationTable> {
  TextEditingController textEditingController = TextEditingController();
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                label: Text("Number"),
                hintText: "Enter your number",
              ),
            ),
            InkWell(
              onTap: () {
                print(textEditingController.text);
                number = int.parse(textEditingController.text);
                for (int i = 1; i <= 10; i++) {
                  print('$number x $i = ${number * i}');
                }
              },
              child: Container(
                color: Colors.blue,
                height: 40,
                width: 110,
                margin: EdgeInsets.all(50),
                child: const Column(
                  children: [
                    Text(
                      "Submit Data",
                      style: TextStyle(color: Colors.white),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
