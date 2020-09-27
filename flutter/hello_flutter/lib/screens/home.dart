import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrange,
      child: Center(
        child: Text(
          sayHello(),
          // "Hello Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 36.0),
        ),
      ),
    );
  }

  String sayHello() {
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;

    if (hour < 12) {
      hello = "Good Morning";
    } else if (hour < 18) {
      hello = "Good Afternoon";
    } else {
      hello = "Good Evening";
    }

    String minutes =
        (minute < 10) ? "0" + minute.toString() : minute.toString();

    return "It's now " + hour.toString() + ":" + minutes + ". \n" + hello;
  }
}

class HelloText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HelloTextState();
}

class HelloTextState extends State<HelloText> {
  String helloText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (text) => sayHelloTxt(text),
          controller: myController,
        ),
        Text(helloText),
      ],
    );
  }

  void sayHelloTxt(String text) {
    setState(() {
      helloText = 'Hello ' + text.toUpperCase() + '!';
    });
  }

  final myController = TextEditingController();
}
